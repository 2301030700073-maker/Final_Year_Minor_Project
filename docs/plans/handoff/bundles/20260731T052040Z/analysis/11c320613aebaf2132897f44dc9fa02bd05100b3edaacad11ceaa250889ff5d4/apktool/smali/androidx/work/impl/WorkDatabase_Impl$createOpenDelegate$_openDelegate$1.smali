.class public final Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;
.super Landroidx/room/RoomOpenDelegate;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/room/RoomDatabase;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    const-string p1, "08b926448d86528e697981ddd30459f7"

    .line 7
    .line 8
    const-string v0, "149fd8ad55885d3fe3549a37a0163243"

    .line 9
    .line 10
    const/16 v1, 0x18

    .line 11
    .line 12
    invoke-direct {p0, p1, v1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/AppDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    .line 16
    const-string p1, "7591e8039faa74d8c0517dc867af9d3e"

    const-string v0, "d3fe862898d1b6d0c97c76386b82dd78"

    const/16 v1, 0x9

    invoke-direct {p0, p1, v1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private final onValidateSchema$androidx$work$impl$WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(Landroidx/sqlite/SQLiteConnection;)Lkotlinx/serialization/json/internal/Composer;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v3, 0x1

    .line 16
    const-string/jumbo v4, "work_spec_id"

    .line 17
    .line 18
    .line 19
    const-string v5, "TEXT"

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v3, "work_spec_id"

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v10, 0x1

    .line 35
    const/4 v5, 0x2

    .line 36
    const-string v6, "prerequisite_id"

    .line 37
    .line 38
    const-string v7, "TEXT"

    .line 39
    .line 40
    const/4 v9, 0x1

    .line 41
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 42
    .line 43
    .line 44
    const-string v2, "prerequisite_id"

    .line 45
    .line 46
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v5, Landroidx/room/util/TableInfo$ForeignKey;

    .line 55
    .line 56
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const-string v11, "id"

    .line 61
    .line 62
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const-string v6, "WorkSpec"

    .line 67
    .line 68
    const-string v7, "CASCADE"

    .line 69
    .line 70
    const-string v8, "CASCADE"

    .line 71
    .line 72
    invoke-direct/range {v5 .. v10}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance v12, Landroidx/room/util/TableInfo$ForeignKey;

    .line 79
    .line 80
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v16

    .line 84
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v17

    .line 88
    const-string v13, "WorkSpec"

    .line 89
    .line 90
    const-string v14, "CASCADE"

    .line 91
    .line 92
    const-string v15, "CASCADE"

    .line 93
    .line 94
    invoke-direct/range {v12 .. v17}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 101
    .line 102
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 106
    .line 107
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    const-string v8, "ASC"

    .line 112
    .line 113
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    const-string v10, "index_Dependency_work_spec_id"

    .line 118
    .line 119
    const/4 v12, 0x0

    .line 120
    invoke-direct {v6, v10, v12, v7, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 127
    .line 128
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string v9, "index_Dependency_prerequisite_id"

    .line 137
    .line 138
    invoke-direct {v6, v9, v12, v2, v7}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v2, Landroidx/room/util/TableInfo;

    .line 145
    .line 146
    const-string v6, "Dependency"

    .line 147
    .line 148
    invoke-direct {v2, v6, v1, v4, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v6}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v2, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const-string v5, "\n Found:\n"

    .line 160
    .line 161
    if-nez v4, :cond_0

    .line 162
    .line 163
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 164
    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    .line 168
    .line 169
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {v0, v12, v1}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-object v0

    .line 189
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .line 193
    .line 194
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 195
    .line 196
    const/16 v17, 0x0

    .line 197
    .line 198
    const/16 v19, 0x1

    .line 199
    .line 200
    const/16 v18, 0x1

    .line 201
    .line 202
    const/4 v14, 0x1

    .line 203
    const-string v15, "id"

    .line 204
    .line 205
    const-string v16, "TEXT"

    .line 206
    .line 207
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 214
    .line 215
    const/16 v18, 0x0

    .line 216
    .line 217
    const/16 v20, 0x1

    .line 218
    .line 219
    const/4 v15, 0x0

    .line 220
    const-string/jumbo v16, "state"

    .line 221
    .line 222
    .line 223
    const-string v17, "INTEGER"

    .line 224
    .line 225
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 226
    .line 227
    .line 228
    const-string/jumbo v2, "state"

    .line 229
    .line 230
    .line 231
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 235
    .line 236
    const/16 v19, 0x0

    .line 237
    .line 238
    const/16 v21, 0x1

    .line 239
    .line 240
    const/16 v16, 0x0

    .line 241
    .line 242
    const-string/jumbo v17, "worker_class_name"

    .line 243
    .line 244
    .line 245
    const-string v18, "TEXT"

    .line 246
    .line 247
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 248
    .line 249
    .line 250
    const-string/jumbo v2, "worker_class_name"

    .line 251
    .line 252
    .line 253
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 257
    .line 258
    const/16 v20, 0x0

    .line 259
    .line 260
    const/16 v22, 0x1

    .line 261
    .line 262
    const/16 v17, 0x0

    .line 263
    .line 264
    const-string v18, "input_merger_class_name"

    .line 265
    .line 266
    const-string v19, "TEXT"

    .line 267
    .line 268
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v2, v16

    .line 272
    .line 273
    const-string v4, "input_merger_class_name"

    .line 274
    .line 275
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 279
    .line 280
    const/16 v17, 0x0

    .line 281
    .line 282
    const/16 v19, 0x1

    .line 283
    .line 284
    const/16 v18, 0x1

    .line 285
    .line 286
    const/4 v14, 0x0

    .line 287
    const-string v15, "input"

    .line 288
    .line 289
    const-string v16, "BLOB"

    .line 290
    .line 291
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 292
    .line 293
    .line 294
    const-string v2, "input"

    .line 295
    .line 296
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 300
    .line 301
    const/16 v18, 0x0

    .line 302
    .line 303
    const/16 v20, 0x1

    .line 304
    .line 305
    const/4 v15, 0x0

    .line 306
    const-string v16, "output"

    .line 307
    .line 308
    const-string v17, "BLOB"

    .line 309
    .line 310
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 311
    .line 312
    .line 313
    const-string v2, "output"

    .line 314
    .line 315
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 319
    .line 320
    const/16 v19, 0x0

    .line 321
    .line 322
    const/16 v16, 0x0

    .line 323
    .line 324
    const-string v17, "initial_delay"

    .line 325
    .line 326
    const-string v18, "INTEGER"

    .line 327
    .line 328
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 329
    .line 330
    .line 331
    const-string v2, "initial_delay"

    .line 332
    .line 333
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 337
    .line 338
    const/16 v20, 0x0

    .line 339
    .line 340
    const/16 v17, 0x0

    .line 341
    .line 342
    const-string v18, "interval_duration"

    .line 343
    .line 344
    const-string v19, "INTEGER"

    .line 345
    .line 346
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 347
    .line 348
    .line 349
    move-object/from16 v2, v16

    .line 350
    .line 351
    const-string v4, "interval_duration"

    .line 352
    .line 353
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 357
    .line 358
    const/16 v17, 0x0

    .line 359
    .line 360
    const/16 v19, 0x1

    .line 361
    .line 362
    const/16 v18, 0x1

    .line 363
    .line 364
    const/4 v14, 0x0

    .line 365
    const-string v15, "flex_duration"

    .line 366
    .line 367
    const-string v16, "INTEGER"

    .line 368
    .line 369
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 370
    .line 371
    .line 372
    const-string v2, "flex_duration"

    .line 373
    .line 374
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 378
    .line 379
    const/16 v18, 0x0

    .line 380
    .line 381
    const/16 v20, 0x1

    .line 382
    .line 383
    const/4 v15, 0x0

    .line 384
    const-string v16, "run_attempt_count"

    .line 385
    .line 386
    const-string v17, "INTEGER"

    .line 387
    .line 388
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 389
    .line 390
    .line 391
    const-string v2, "run_attempt_count"

    .line 392
    .line 393
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 397
    .line 398
    const/16 v19, 0x0

    .line 399
    .line 400
    const/16 v16, 0x0

    .line 401
    .line 402
    const-string v17, "backoff_policy"

    .line 403
    .line 404
    const-string v18, "INTEGER"

    .line 405
    .line 406
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 407
    .line 408
    .line 409
    const-string v2, "backoff_policy"

    .line 410
    .line 411
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 415
    .line 416
    const/16 v20, 0x0

    .line 417
    .line 418
    const/16 v17, 0x0

    .line 419
    .line 420
    const-string v18, "backoff_delay_duration"

    .line 421
    .line 422
    const-string v19, "INTEGER"

    .line 423
    .line 424
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 425
    .line 426
    .line 427
    move-object/from16 v2, v16

    .line 428
    .line 429
    const-string v4, "backoff_delay_duration"

    .line 430
    .line 431
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 435
    .line 436
    const-string v17, "-1"

    .line 437
    .line 438
    const/16 v19, 0x1

    .line 439
    .line 440
    const/16 v18, 0x1

    .line 441
    .line 442
    const/4 v14, 0x0

    .line 443
    const-string v15, "last_enqueue_time"

    .line 444
    .line 445
    const-string v16, "INTEGER"

    .line 446
    .line 447
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 448
    .line 449
    .line 450
    const-string v2, "last_enqueue_time"

    .line 451
    .line 452
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 456
    .line 457
    const/16 v18, 0x0

    .line 458
    .line 459
    const/16 v20, 0x1

    .line 460
    .line 461
    const/4 v15, 0x0

    .line 462
    const-string v16, "minimum_retention_duration"

    .line 463
    .line 464
    const-string v17, "INTEGER"

    .line 465
    .line 466
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 467
    .line 468
    .line 469
    const-string v4, "minimum_retention_duration"

    .line 470
    .line 471
    invoke-interface {v1, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 475
    .line 476
    const/16 v19, 0x0

    .line 477
    .line 478
    const/16 v16, 0x0

    .line 479
    .line 480
    const-string v17, "schedule_requested_at"

    .line 481
    .line 482
    const-string v18, "INTEGER"

    .line 483
    .line 484
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 485
    .line 486
    .line 487
    const-string v4, "schedule_requested_at"

    .line 488
    .line 489
    invoke-interface {v1, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 493
    .line 494
    const/16 v20, 0x0

    .line 495
    .line 496
    const/16 v17, 0x0

    .line 497
    .line 498
    const-string v18, "run_in_foreground"

    .line 499
    .line 500
    const-string v19, "INTEGER"

    .line 501
    .line 502
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v6, v16

    .line 506
    .line 507
    const-string v7, "run_in_foreground"

    .line 508
    .line 509
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 513
    .line 514
    const/16 v17, 0x0

    .line 515
    .line 516
    const/16 v19, 0x1

    .line 517
    .line 518
    const/16 v18, 0x1

    .line 519
    .line 520
    const/4 v14, 0x0

    .line 521
    const-string v15, "out_of_quota_policy"

    .line 522
    .line 523
    const-string v16, "INTEGER"

    .line 524
    .line 525
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 526
    .line 527
    .line 528
    const-string v6, "out_of_quota_policy"

    .line 529
    .line 530
    invoke-interface {v1, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 534
    .line 535
    const-string v18, "0"

    .line 536
    .line 537
    const/16 v20, 0x1

    .line 538
    .line 539
    const/4 v15, 0x0

    .line 540
    const-string v16, "period_count"

    .line 541
    .line 542
    const-string v17, "INTEGER"

    .line 543
    .line 544
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 545
    .line 546
    .line 547
    const-string v6, "period_count"

    .line 548
    .line 549
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 553
    .line 554
    const-string v19, "0"

    .line 555
    .line 556
    const/16 v16, 0x0

    .line 557
    .line 558
    const-string v17, "generation"

    .line 559
    .line 560
    const-string v18, "INTEGER"

    .line 561
    .line 562
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 563
    .line 564
    .line 565
    const-string v6, "generation"

    .line 566
    .line 567
    invoke-interface {v1, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 571
    .line 572
    const-string v20, "9223372036854775807"

    .line 573
    .line 574
    const/16 v17, 0x0

    .line 575
    .line 576
    const-string v18, "next_schedule_time_override"

    .line 577
    .line 578
    const-string v19, "INTEGER"

    .line 579
    .line 580
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 581
    .line 582
    .line 583
    move-object/from16 v7, v16

    .line 584
    .line 585
    const-string v9, "next_schedule_time_override"

    .line 586
    .line 587
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 591
    .line 592
    const-string v17, "0"

    .line 593
    .line 594
    const/16 v19, 0x1

    .line 595
    .line 596
    const/16 v18, 0x1

    .line 597
    .line 598
    const/4 v14, 0x0

    .line 599
    const-string v15, "next_schedule_time_override_generation"

    .line 600
    .line 601
    const-string v16, "INTEGER"

    .line 602
    .line 603
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 604
    .line 605
    .line 606
    const-string v7, "next_schedule_time_override_generation"

    .line 607
    .line 608
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 612
    .line 613
    const-string v18, "-256"

    .line 614
    .line 615
    const/16 v20, 0x1

    .line 616
    .line 617
    const/4 v15, 0x0

    .line 618
    const-string/jumbo v16, "stop_reason"

    .line 619
    .line 620
    .line 621
    const-string v17, "INTEGER"

    .line 622
    .line 623
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 624
    .line 625
    .line 626
    const-string/jumbo v7, "stop_reason"

    .line 627
    .line 628
    .line 629
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 633
    .line 634
    const/16 v19, 0x0

    .line 635
    .line 636
    const/16 v20, 0x0

    .line 637
    .line 638
    const/16 v16, 0x0

    .line 639
    .line 640
    const-string/jumbo v17, "trace_tag"

    .line 641
    .line 642
    .line 643
    const-string v18, "TEXT"

    .line 644
    .line 645
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 646
    .line 647
    .line 648
    const-string/jumbo v7, "trace_tag"

    .line 649
    .line 650
    .line 651
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 655
    .line 656
    const/16 v20, 0x0

    .line 657
    .line 658
    const/16 v21, 0x0

    .line 659
    .line 660
    const/16 v17, 0x0

    .line 661
    .line 662
    const-string v18, "backoff_on_system_interruptions"

    .line 663
    .line 664
    const-string v19, "INTEGER"

    .line 665
    .line 666
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 667
    .line 668
    .line 669
    move-object/from16 v7, v16

    .line 670
    .line 671
    const-string v9, "backoff_on_system_interruptions"

    .line 672
    .line 673
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 677
    .line 678
    const/16 v17, 0x0

    .line 679
    .line 680
    const/16 v19, 0x1

    .line 681
    .line 682
    const/16 v18, 0x1

    .line 683
    .line 684
    const/4 v14, 0x0

    .line 685
    const-string v15, "required_network_type"

    .line 686
    .line 687
    const-string v16, "INTEGER"

    .line 688
    .line 689
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 690
    .line 691
    .line 692
    const-string v7, "required_network_type"

    .line 693
    .line 694
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 698
    .line 699
    const-string/jumbo v18, "x\'\'"

    .line 700
    .line 701
    .line 702
    const/16 v20, 0x1

    .line 703
    .line 704
    const/4 v15, 0x0

    .line 705
    const-string v16, "required_network_request"

    .line 706
    .line 707
    const-string v17, "BLOB"

    .line 708
    .line 709
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 710
    .line 711
    .line 712
    const-string v7, "required_network_request"

    .line 713
    .line 714
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 718
    .line 719
    const/16 v19, 0x0

    .line 720
    .line 721
    const/16 v21, 0x1

    .line 722
    .line 723
    const/16 v16, 0x0

    .line 724
    .line 725
    const-string v17, "requires_charging"

    .line 726
    .line 727
    const-string v18, "INTEGER"

    .line 728
    .line 729
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 730
    .line 731
    .line 732
    const-string v7, "requires_charging"

    .line 733
    .line 734
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 738
    .line 739
    const/16 v20, 0x0

    .line 740
    .line 741
    const/16 v17, 0x0

    .line 742
    .line 743
    const-string v18, "requires_device_idle"

    .line 744
    .line 745
    const-string v19, "INTEGER"

    .line 746
    .line 747
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 748
    .line 749
    .line 750
    move-object/from16 v7, v16

    .line 751
    .line 752
    const-string v9, "requires_device_idle"

    .line 753
    .line 754
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 758
    .line 759
    const/16 v17, 0x0

    .line 760
    .line 761
    const/16 v19, 0x1

    .line 762
    .line 763
    const/16 v18, 0x1

    .line 764
    .line 765
    const/4 v14, 0x0

    .line 766
    const-string v15, "requires_battery_not_low"

    .line 767
    .line 768
    const-string v16, "INTEGER"

    .line 769
    .line 770
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 771
    .line 772
    .line 773
    const-string v7, "requires_battery_not_low"

    .line 774
    .line 775
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 779
    .line 780
    const/16 v18, 0x0

    .line 781
    .line 782
    const/16 v20, 0x1

    .line 783
    .line 784
    const/4 v15, 0x0

    .line 785
    const-string v16, "requires_storage_not_low"

    .line 786
    .line 787
    const-string v17, "INTEGER"

    .line 788
    .line 789
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 790
    .line 791
    .line 792
    const-string v7, "requires_storage_not_low"

    .line 793
    .line 794
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 798
    .line 799
    const/16 v19, 0x0

    .line 800
    .line 801
    const/16 v16, 0x0

    .line 802
    .line 803
    const-string/jumbo v17, "trigger_content_update_delay"

    .line 804
    .line 805
    .line 806
    const-string v18, "INTEGER"

    .line 807
    .line 808
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 809
    .line 810
    .line 811
    const-string/jumbo v7, "trigger_content_update_delay"

    .line 812
    .line 813
    .line 814
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 818
    .line 819
    const/16 v20, 0x0

    .line 820
    .line 821
    const/16 v17, 0x0

    .line 822
    .line 823
    const-string/jumbo v18, "trigger_max_content_delay"

    .line 824
    .line 825
    .line 826
    const-string v19, "INTEGER"

    .line 827
    .line 828
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 829
    .line 830
    .line 831
    move-object/from16 v7, v16

    .line 832
    .line 833
    const-string/jumbo v9, "trigger_max_content_delay"

    .line 834
    .line 835
    .line 836
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 840
    .line 841
    const/16 v17, 0x0

    .line 842
    .line 843
    const/16 v19, 0x1

    .line 844
    .line 845
    const/16 v18, 0x1

    .line 846
    .line 847
    const/4 v14, 0x0

    .line 848
    const-string v15, "content_uri_triggers"

    .line 849
    .line 850
    const-string v16, "BLOB"

    .line 851
    .line 852
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 853
    .line 854
    .line 855
    const-string v7, "content_uri_triggers"

    .line 856
    .line 857
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 861
    .line 862
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 863
    .line 864
    .line 865
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 866
    .line 867
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 868
    .line 869
    .line 870
    new-instance v10, Landroidx/room/util/TableInfo$Index;

    .line 871
    .line 872
    invoke-static {v4}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 873
    .line 874
    .line 875
    move-result-object v4

    .line 876
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 877
    .line 878
    .line 879
    move-result-object v13

    .line 880
    const-string v14, "index_WorkSpec_schedule_requested_at"

    .line 881
    .line 882
    invoke-direct {v10, v14, v12, v4, v13}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 883
    .line 884
    .line 885
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    new-instance v4, Landroidx/room/util/TableInfo$Index;

    .line 889
    .line 890
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 895
    .line 896
    .line 897
    move-result-object v10

    .line 898
    const-string v13, "index_WorkSpec_last_enqueue_time"

    .line 899
    .line 900
    invoke-direct {v4, v13, v12, v2, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 901
    .line 902
    .line 903
    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    new-instance v2, Landroidx/room/util/TableInfo;

    .line 907
    .line 908
    const-string v4, "WorkSpec"

    .line 909
    .line 910
    invoke-direct {v2, v4, v1, v7, v9}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 911
    .line 912
    .line 913
    invoke-static {v0, v4}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    invoke-virtual {v2, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v4

    .line 921
    if-nez v4, :cond_1

    .line 922
    .line 923
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 924
    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    .line 926
    .line 927
    const-string v4, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    .line 928
    .line 929
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    invoke-direct {v0, v12, v1}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 946
    .line 947
    .line 948
    return-object v0

    .line 949
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 950
    .line 951
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 952
    .line 953
    .line 954
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 955
    .line 956
    const/16 v17, 0x0

    .line 957
    .line 958
    const/16 v19, 0x1

    .line 959
    .line 960
    const/4 v14, 0x1

    .line 961
    const-string/jumbo v15, "tag"

    .line 962
    .line 963
    .line 964
    const-string v16, "TEXT"

    .line 965
    .line 966
    const/16 v18, 0x1

    .line 967
    .line 968
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 969
    .line 970
    .line 971
    const-string/jumbo v2, "tag"

    .line 972
    .line 973
    .line 974
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 978
    .line 979
    const/16 v18, 0x0

    .line 980
    .line 981
    const/16 v20, 0x1

    .line 982
    .line 983
    const/4 v15, 0x2

    .line 984
    const-string/jumbo v16, "work_spec_id"

    .line 985
    .line 986
    .line 987
    const-string v17, "TEXT"

    .line 988
    .line 989
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 990
    .line 991
    .line 992
    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 996
    .line 997
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 998
    .line 999
    .line 1000
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1001
    .line 1002
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v17

    .line 1006
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v18

    .line 1010
    const-string v14, "WorkSpec"

    .line 1011
    .line 1012
    const-string v15, "CASCADE"

    .line 1013
    .line 1014
    const-string v16, "CASCADE"

    .line 1015
    .line 1016
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1020
    .line 1021
    .line 1022
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1023
    .line 1024
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1025
    .line 1026
    .line 1027
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 1028
    .line 1029
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v9

    .line 1033
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v10

    .line 1037
    const-string v13, "index_WorkTag_work_spec_id"

    .line 1038
    .line 1039
    invoke-direct {v7, v13, v12, v9, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    new-instance v7, Landroidx/room/util/TableInfo;

    .line 1046
    .line 1047
    const-string v9, "WorkTag"

    .line 1048
    .line 1049
    invoke-direct {v7, v9, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1050
    .line 1051
    .line 1052
    invoke-static {v0, v9}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v1

    .line 1056
    invoke-virtual {v7, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v2

    .line 1060
    if-nez v2, :cond_2

    .line 1061
    .line 1062
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 1063
    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    .line 1067
    .line 1068
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v1

    .line 1084
    invoke-direct {v0, v12, v1}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    return-object v0

    .line 1088
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1089
    .line 1090
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1091
    .line 1092
    .line 1093
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1094
    .line 1095
    const/16 v17, 0x0

    .line 1096
    .line 1097
    const/16 v19, 0x1

    .line 1098
    .line 1099
    const/4 v14, 0x1

    .line 1100
    const-string/jumbo v15, "work_spec_id"

    .line 1101
    .line 1102
    .line 1103
    const-string v16, "TEXT"

    .line 1104
    .line 1105
    const/16 v18, 0x1

    .line 1106
    .line 1107
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1108
    .line 1109
    .line 1110
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1114
    .line 1115
    const-string v18, "0"

    .line 1116
    .line 1117
    const/16 v20, 0x1

    .line 1118
    .line 1119
    const/4 v15, 0x2

    .line 1120
    const-string v16, "generation"

    .line 1121
    .line 1122
    const-string v17, "INTEGER"

    .line 1123
    .line 1124
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1125
    .line 1126
    .line 1127
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 1131
    .line 1132
    const/16 v19, 0x0

    .line 1133
    .line 1134
    const/16 v21, 0x1

    .line 1135
    .line 1136
    const/16 v16, 0x0

    .line 1137
    .line 1138
    const-string/jumbo v17, "system_id"

    .line 1139
    .line 1140
    .line 1141
    const-string v18, "INTEGER"

    .line 1142
    .line 1143
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1144
    .line 1145
    .line 1146
    const-string/jumbo v2, "system_id"

    .line 1147
    .line 1148
    .line 1149
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1153
    .line 1154
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1155
    .line 1156
    .line 1157
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1158
    .line 1159
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v17

    .line 1163
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v18

    .line 1167
    const-string v14, "WorkSpec"

    .line 1168
    .line 1169
    const-string v15, "CASCADE"

    .line 1170
    .line 1171
    const-string v16, "CASCADE"

    .line 1172
    .line 1173
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1174
    .line 1175
    .line 1176
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1180
    .line 1181
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1182
    .line 1183
    .line 1184
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 1185
    .line 1186
    const-string v7, "SystemIdInfo"

    .line 1187
    .line 1188
    invoke-direct {v6, v7, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1189
    .line 1190
    .line 1191
    invoke-static {v0, v7}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v2

    .line 1199
    if-nez v2, :cond_3

    .line 1200
    .line 1201
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 1202
    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    .line 1206
    .line 1207
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    invoke-direct {v0, v12, v1}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    return-object v0

    .line 1227
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1228
    .line 1229
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1230
    .line 1231
    .line 1232
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1233
    .line 1234
    const/16 v17, 0x0

    .line 1235
    .line 1236
    const/16 v19, 0x1

    .line 1237
    .line 1238
    const/4 v14, 0x1

    .line 1239
    const-string v15, "name"

    .line 1240
    .line 1241
    const-string v16, "TEXT"

    .line 1242
    .line 1243
    const/16 v18, 0x1

    .line 1244
    .line 1245
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1246
    .line 1247
    .line 1248
    const-string v2, "name"

    .line 1249
    .line 1250
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1254
    .line 1255
    const/16 v18, 0x0

    .line 1256
    .line 1257
    const/16 v20, 0x1

    .line 1258
    .line 1259
    const/4 v15, 0x2

    .line 1260
    const-string/jumbo v16, "work_spec_id"

    .line 1261
    .line 1262
    .line 1263
    const-string v17, "TEXT"

    .line 1264
    .line 1265
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1266
    .line 1267
    .line 1268
    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1272
    .line 1273
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1274
    .line 1275
    .line 1276
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1277
    .line 1278
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v17

    .line 1282
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v18

    .line 1286
    const-string v14, "WorkSpec"

    .line 1287
    .line 1288
    const-string v15, "CASCADE"

    .line 1289
    .line 1290
    const-string v16, "CASCADE"

    .line 1291
    .line 1292
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1296
    .line 1297
    .line 1298
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1299
    .line 1300
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 1304
    .line 1305
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v7

    .line 1309
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v8

    .line 1313
    const-string v9, "index_WorkName_work_spec_id"

    .line 1314
    .line 1315
    invoke-direct {v6, v9, v12, v7, v8}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1316
    .line 1317
    .line 1318
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1319
    .line 1320
    .line 1321
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 1322
    .line 1323
    const-string v7, "WorkName"

    .line 1324
    .line 1325
    invoke-direct {v6, v7, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1326
    .line 1327
    .line 1328
    invoke-static {v0, v7}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1333
    .line 1334
    .line 1335
    move-result v2

    .line 1336
    if-nez v2, :cond_4

    .line 1337
    .line 1338
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 1339
    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1341
    .line 1342
    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    .line 1343
    .line 1344
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    invoke-direct {v0, v12, v1}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    return-object v0

    .line 1364
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1365
    .line 1366
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1367
    .line 1368
    .line 1369
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1370
    .line 1371
    const/16 v17, 0x0

    .line 1372
    .line 1373
    const/16 v19, 0x1

    .line 1374
    .line 1375
    const/4 v14, 0x1

    .line 1376
    const-string/jumbo v15, "work_spec_id"

    .line 1377
    .line 1378
    .line 1379
    const-string v16, "TEXT"

    .line 1380
    .line 1381
    const/16 v18, 0x1

    .line 1382
    .line 1383
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1384
    .line 1385
    .line 1386
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    .line 1388
    .line 1389
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1390
    .line 1391
    const/16 v18, 0x0

    .line 1392
    .line 1393
    const/16 v20, 0x1

    .line 1394
    .line 1395
    const/4 v15, 0x0

    .line 1396
    const-string v16, "progress"

    .line 1397
    .line 1398
    const-string v17, "BLOB"

    .line 1399
    .line 1400
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1401
    .line 1402
    .line 1403
    const-string v2, "progress"

    .line 1404
    .line 1405
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1409
    .line 1410
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1411
    .line 1412
    .line 1413
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1414
    .line 1415
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v17

    .line 1419
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v18

    .line 1423
    const-string v14, "WorkSpec"

    .line 1424
    .line 1425
    const-string v15, "CASCADE"

    .line 1426
    .line 1427
    const-string v16, "CASCADE"

    .line 1428
    .line 1429
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1430
    .line 1431
    .line 1432
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1433
    .line 1434
    .line 1435
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1436
    .line 1437
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1438
    .line 1439
    .line 1440
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1441
    .line 1442
    const-string v6, "WorkProgress"

    .line 1443
    .line 1444
    invoke-direct {v4, v6, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1445
    .line 1446
    .line 1447
    invoke-static {v0, v6}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v1

    .line 1451
    invoke-virtual {v4, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1452
    .line 1453
    .line 1454
    move-result v2

    .line 1455
    if-nez v2, :cond_5

    .line 1456
    .line 1457
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 1458
    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    .line 1462
    .line 1463
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v1

    .line 1479
    invoke-direct {v0, v12, v1}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    return-object v0

    .line 1483
    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1484
    .line 1485
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1486
    .line 1487
    .line 1488
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1489
    .line 1490
    const/16 v17, 0x0

    .line 1491
    .line 1492
    const/16 v19, 0x1

    .line 1493
    .line 1494
    const/4 v14, 0x1

    .line 1495
    const-string v15, "key"

    .line 1496
    .line 1497
    const-string v16, "TEXT"

    .line 1498
    .line 1499
    const/16 v18, 0x1

    .line 1500
    .line 1501
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1502
    .line 1503
    .line 1504
    const-string v2, "key"

    .line 1505
    .line 1506
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1510
    .line 1511
    const/16 v18, 0x0

    .line 1512
    .line 1513
    const/16 v20, 0x1

    .line 1514
    .line 1515
    const/4 v15, 0x0

    .line 1516
    const-string v16, "long_value"

    .line 1517
    .line 1518
    const-string v17, "INTEGER"

    .line 1519
    .line 1520
    const/16 v19, 0x0

    .line 1521
    .line 1522
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1523
    .line 1524
    .line 1525
    const-string v2, "long_value"

    .line 1526
    .line 1527
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    .line 1529
    .line 1530
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1531
    .line 1532
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1533
    .line 1534
    .line 1535
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1536
    .line 1537
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1538
    .line 1539
    .line 1540
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1541
    .line 1542
    const-string v6, "Preference"

    .line 1543
    .line 1544
    invoke-direct {v4, v6, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1545
    .line 1546
    .line 1547
    invoke-static {v0, v6}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1552
    .line 1553
    .line 1554
    move-result v1

    .line 1555
    if-nez v1, :cond_6

    .line 1556
    .line 1557
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 1558
    .line 1559
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    .line 1562
    .line 1563
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v0

    .line 1579
    invoke-direct {v1, v12, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1580
    .line 1581
    .line 1582
    return-object v1

    .line 1583
    :cond_6
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 1584
    .line 1585
    const/4 v1, 0x1

    .line 1586
    const/4 v2, 0x0

    .line 1587
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1588
    .line 1589
    .line 1590
    return-object v0
.end method


# virtual methods
.method public final createAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 1
    iget p0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const-string p0, "CREATE TABLE IF NOT EXISTS `subscriptions` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `url` TEXT, `name` TEXT, `avatar_url` TEXT, `subscriber_count` INTEGER, `description` TEXT, `notification_mode` INTEGER NOT NULL)"

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_subscriptions_service_id_url` ON `subscriptions` (`service_id`, `url`)"

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "CREATE TABLE IF NOT EXISTS `search_history` (`creation_date` INTEGER, `service_id` INTEGER NOT NULL, `search` TEXT, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL)"

    .line 22
    .line 23
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_search_history_search` ON `search_history` (`search`)"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "CREATE TABLE IF NOT EXISTS `streams` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `url` TEXT NOT NULL, `title` TEXT NOT NULL, `stream_type` TEXT NOT NULL, `duration` INTEGER NOT NULL, `uploader` TEXT NOT NULL, `uploader_url` TEXT, `thumbnail_url` TEXT, `view_count` INTEGER, `textual_upload_date` TEXT, `upload_date` INTEGER, `is_upload_date_approximation` INTEGER)"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_streams_service_id_url` ON `streams` (`service_id`, `url`)"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p0, "CREATE TABLE IF NOT EXISTS `stream_history` (`stream_id` INTEGER NOT NULL, `access_date` INTEGER NOT NULL, `repeat_count` INTEGER NOT NULL, PRIMARY KEY(`stream_id`, `access_date`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 42
    .line 43
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_stream_history_stream_id` ON `stream_history` (`stream_id`)"

    .line 47
    .line 48
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p0, "CREATE TABLE IF NOT EXISTS `stream_state` (`stream_id` INTEGER NOT NULL, `progress_time` INTEGER NOT NULL, PRIMARY KEY(`stream_id`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p0, "CREATE TABLE IF NOT EXISTS `playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `is_thumbnail_permanent` INTEGER NOT NULL, `thumbnail_stream_id` INTEGER NOT NULL, `display_index` INTEGER NOT NULL)"

    .line 57
    .line 58
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "CREATE TABLE IF NOT EXISTS `playlist_stream_join` (`playlist_id` INTEGER NOT NULL, `stream_id` INTEGER NOT NULL, `join_index` INTEGER NOT NULL, PRIMARY KEY(`playlist_id`, `join_index`), FOREIGN KEY(`playlist_id`) REFERENCES `playlists`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 62
    .line 63
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_playlist_stream_join_playlist_id_join_index` ON `playlist_stream_join` (`playlist_id`, `join_index`)"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_playlist_stream_join_stream_id` ON `playlist_stream_join` (`stream_id`)"

    .line 72
    .line 73
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p0, "CREATE TABLE IF NOT EXISTS `remote_playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `name` TEXT, `url` TEXT, `thumbnail_url` TEXT, `uploader` TEXT, `display_index` INTEGER NOT NULL, `stream_count` INTEGER)"

    .line 77
    .line 78
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_remote_playlists_service_id_url` ON `remote_playlists` (`service_id`, `url`)"

    .line 82
    .line 83
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p0, "CREATE TABLE IF NOT EXISTS `feed` (`stream_id` INTEGER NOT NULL, `subscription_id` INTEGER NOT NULL, PRIMARY KEY(`stream_id`, `subscription_id`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`subscription_id`) REFERENCES `subscriptions`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 87
    .line 88
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_feed_subscription_id` ON `feed` (`subscription_id`)"

    .line 92
    .line 93
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p0, "CREATE TABLE IF NOT EXISTS `feed_group` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `icon_id` INTEGER NOT NULL, `sort_order` INTEGER NOT NULL)"

    .line 97
    .line 98
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_feed_group_sort_order` ON `feed_group` (`sort_order`)"

    .line 102
    .line 103
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string p0, "CREATE TABLE IF NOT EXISTS `feed_group_subscription_join` (`group_id` INTEGER NOT NULL, `subscription_id` INTEGER NOT NULL, PRIMARY KEY(`group_id`, `subscription_id`), FOREIGN KEY(`group_id`) REFERENCES `feed_group`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`subscription_id`) REFERENCES `subscriptions`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 107
    .line 108
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_feed_group_subscription_join_subscription_id` ON `feed_group_subscription_join` (`subscription_id`)"

    .line 112
    .line 113
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string p0, "CREATE TABLE IF NOT EXISTS `feed_last_updated` (`subscription_id` INTEGER NOT NULL, `last_updated` INTEGER, PRIMARY KEY(`subscription_id`), FOREIGN KEY(`subscription_id`) REFERENCES `subscriptions`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 117
    .line 118
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'7591e8039faa74d8c0517dc867af9d3e\')"

    .line 125
    .line 126
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_0
    const-string p0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 131
    .line 132
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 136
    .line 137
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 141
    .line 142
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x\'\', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 146
    .line 147
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 151
    .line 152
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 156
    .line 157
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 161
    .line 162
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 166
    .line 167
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string p0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 171
    .line 172
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 176
    .line 177
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 181
    .line 182
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 186
    .line 187
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string p0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 191
    .line 192
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'08b926448d86528e697981ddd30459f7\')"

    .line 199
    .line 200
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p0, "DROP TABLE IF EXISTS `subscriptions`"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "DROP TABLE IF EXISTS `search_history`"

    .line 15
    .line 16
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "DROP TABLE IF EXISTS `streams`"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "DROP TABLE IF EXISTS `stream_history`"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "DROP TABLE IF EXISTS `stream_state`"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "DROP TABLE IF EXISTS `playlists`"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "DROP TABLE IF EXISTS `playlist_stream_join`"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "DROP TABLE IF EXISTS `remote_playlists`"

    .line 45
    .line 46
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "DROP TABLE IF EXISTS `feed`"

    .line 50
    .line 51
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "DROP TABLE IF EXISTS `feed_group`"

    .line 55
    .line 56
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "DROP TABLE IF EXISTS `feed_group_subscription_join`"

    .line 60
    .line 61
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "DROP TABLE IF EXISTS `feed_last_updated`"

    .line 65
    .line 66
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_0
    const-string p0, "DROP TABLE IF EXISTS `Dependency`"

    .line 71
    .line 72
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p0, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 76
    .line 77
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p0, "DROP TABLE IF EXISTS `WorkTag`"

    .line 81
    .line 82
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 86
    .line 87
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string p0, "DROP TABLE IF EXISTS `WorkName`"

    .line 91
    .line 92
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string p0, "DROP TABLE IF EXISTS `WorkProgress`"

    .line 96
    .line 97
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p0, "DROP TABLE IF EXISTS `Preference`"

    .line 101
    .line 102
    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    .line 4
    .line 5
    const-string v1, "PRAGMA foreign_keys = ON"

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast p0, Lorg/schabi/newpipe/database/AppDatabase_Impl;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lkotlinx/serialization/json/internal/Composer;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v8, 0x1

    .line 22
    const/4 v3, 0x1

    .line 23
    const-string/jumbo v4, "uid"

    .line 24
    .line 25
    .line 26
    const-string v5, "INTEGER"

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v3, "uid"

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    const-string v6, "service_id"

    .line 44
    .line 45
    const-string v7, "INTEGER"

    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 49
    .line 50
    .line 51
    const-string v2, "service_id"

    .line 52
    .line 53
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v5, Landroidx/room/util/TableInfo$Column;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v11, 0x1

    .line 60
    const/4 v6, 0x0

    .line 61
    const-string/jumbo v7, "url"

    .line 62
    .line 63
    .line 64
    const-string v8, "TEXT"

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v4, "url"

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v6, Landroidx/room/util/TableInfo$Column;

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v12, 0x1

    .line 80
    const/4 v7, 0x0

    .line 81
    const-string v8, "name"

    .line 82
    .line 83
    const-string v9, "TEXT"

    .line 84
    .line 85
    const/4 v11, 0x0

    .line 86
    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 87
    .line 88
    .line 89
    const-string v5, "name"

    .line 90
    .line 91
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    new-instance v7, Landroidx/room/util/TableInfo$Column;

    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    const/4 v13, 0x1

    .line 98
    const/4 v8, 0x0

    .line 99
    const-string v9, "avatar_url"

    .line 100
    .line 101
    const-string v10, "TEXT"

    .line 102
    .line 103
    const/4 v12, 0x0

    .line 104
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 105
    .line 106
    .line 107
    const-string v6, "avatar_url"

    .line 108
    .line 109
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    new-instance v8, Landroidx/room/util/TableInfo$Column;

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v14, 0x1

    .line 116
    const/4 v9, 0x0

    .line 117
    const-string/jumbo v10, "subscriber_count"

    .line 118
    .line 119
    .line 120
    const-string v11, "INTEGER"

    .line 121
    .line 122
    const/4 v13, 0x0

    .line 123
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v6, "subscriber_count"

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    new-instance v9, Landroidx/room/util/TableInfo$Column;

    .line 133
    .line 134
    const/4 v13, 0x0

    .line 135
    const/4 v15, 0x1

    .line 136
    const/4 v10, 0x0

    .line 137
    const-string v11, "description"

    .line 138
    .line 139
    const-string v12, "TEXT"

    .line 140
    .line 141
    const/4 v14, 0x0

    .line 142
    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 143
    .line 144
    .line 145
    const-string v6, "description"

    .line 146
    .line 147
    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    new-instance v10, Landroidx/room/util/TableInfo$Column;

    .line 151
    .line 152
    const/4 v14, 0x0

    .line 153
    const/16 v16, 0x1

    .line 154
    .line 155
    const/4 v11, 0x0

    .line 156
    const-string v12, "notification_mode"

    .line 157
    .line 158
    const-string v13, "INTEGER"

    .line 159
    .line 160
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 161
    .line 162
    .line 163
    const-string v6, "notification_mode"

    .line 164
    .line 165
    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 171
    .line 172
    .line 173
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 174
    .line 175
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v8, Landroidx/room/util/TableInfo$Index;

    .line 179
    .line 180
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-static {v9}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    const-string v10, "ASC"

    .line 189
    .line 190
    filled-new-array {v10, v10}, [Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    const-string v12, "index_subscriptions_service_id_url"

    .line 199
    .line 200
    const/4 v13, 0x1

    .line 201
    invoke-direct {v8, v12, v13, v9, v11}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 208
    .line 209
    const-string/jumbo v9, "subscriptions"

    .line 210
    .line 211
    .line 212
    invoke-direct {v8, v9, v0, v6, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v8, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    const-string v7, "\n Found:\n"

    .line 224
    .line 225
    const/4 v9, 0x0

    .line 226
    if-nez v6, :cond_0

    .line 227
    .line 228
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string/jumbo v3, "subscriptions(org.schabi.newpipe.database.subscription.SubscriptionEntity).\n Expected:\n"

    .line 233
    .line 234
    .line 235
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-direct {v1, v9, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 257
    .line 258
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 259
    .line 260
    .line 261
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 262
    .line 263
    const/16 v18, 0x0

    .line 264
    .line 265
    const/16 v20, 0x1

    .line 266
    .line 267
    const/4 v15, 0x0

    .line 268
    const-string v16, "creation_date"

    .line 269
    .line 270
    const-string v17, "INTEGER"

    .line 271
    .line 272
    const/16 v19, 0x0

    .line 273
    .line 274
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 275
    .line 276
    .line 277
    const-string v6, "creation_date"

    .line 278
    .line 279
    invoke-interface {v0, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 283
    .line 284
    const/16 v19, 0x0

    .line 285
    .line 286
    const/16 v21, 0x1

    .line 287
    .line 288
    const/16 v16, 0x0

    .line 289
    .line 290
    const-string v17, "service_id"

    .line 291
    .line 292
    const-string v18, "INTEGER"

    .line 293
    .line 294
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 301
    .line 302
    const/16 v20, 0x0

    .line 303
    .line 304
    const/16 v22, 0x1

    .line 305
    .line 306
    const/16 v17, 0x0

    .line 307
    .line 308
    const-string v18, "search"

    .line 309
    .line 310
    const-string v19, "TEXT"

    .line 311
    .line 312
    const/16 v21, 0x0

    .line 313
    .line 314
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 315
    .line 316
    .line 317
    move-object/from16 v6, v16

    .line 318
    .line 319
    const-string v8, "search"

    .line 320
    .line 321
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 325
    .line 326
    const/16 v18, 0x0

    .line 327
    .line 328
    const/16 v20, 0x1

    .line 329
    .line 330
    const/4 v15, 0x1

    .line 331
    const-string v16, "id"

    .line 332
    .line 333
    const-string v17, "INTEGER"

    .line 334
    .line 335
    const/16 v19, 0x1

    .line 336
    .line 337
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 338
    .line 339
    .line 340
    const-string v6, "id"

    .line 341
    .line 342
    invoke-interface {v0, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 346
    .line 347
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 348
    .line 349
    .line 350
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 351
    .line 352
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 353
    .line 354
    .line 355
    new-instance v12, Landroidx/room/util/TableInfo$Index;

    .line 356
    .line 357
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    invoke-static {v10}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    const-string v15, "index_search_history_search"

    .line 366
    .line 367
    invoke-direct {v12, v15, v9, v8, v14}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 368
    .line 369
    .line 370
    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 374
    .line 375
    const-string v12, "search_history"

    .line 376
    .line 377
    invoke-direct {v8, v12, v0, v6, v11}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v8, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-nez v6, :cond_1

    .line 389
    .line 390
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 391
    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v3, "search_history(org.schabi.newpipe.database.history.model.SearchHistoryEntry).\n Expected:\n"

    .line 395
    .line 396
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-direct {v1, v9, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 418
    .line 419
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 420
    .line 421
    .line 422
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 423
    .line 424
    const/16 v18, 0x0

    .line 425
    .line 426
    const/16 v20, 0x1

    .line 427
    .line 428
    const/16 v19, 0x1

    .line 429
    .line 430
    const/4 v15, 0x1

    .line 431
    const-string/jumbo v16, "uid"

    .line 432
    .line 433
    .line 434
    const-string v17, "INTEGER"

    .line 435
    .line 436
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v0, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 443
    .line 444
    const/16 v19, 0x0

    .line 445
    .line 446
    const/16 v21, 0x1

    .line 447
    .line 448
    const/16 v16, 0x0

    .line 449
    .line 450
    const-string v17, "service_id"

    .line 451
    .line 452
    const-string v18, "INTEGER"

    .line 453
    .line 454
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 455
    .line 456
    .line 457
    invoke-interface {v0, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 461
    .line 462
    const/16 v20, 0x0

    .line 463
    .line 464
    const/16 v22, 0x1

    .line 465
    .line 466
    const/16 v17, 0x0

    .line 467
    .line 468
    const-string/jumbo v18, "url"

    .line 469
    .line 470
    .line 471
    const-string v19, "TEXT"

    .line 472
    .line 473
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 474
    .line 475
    .line 476
    move-object/from16 v6, v16

    .line 477
    .line 478
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 482
    .line 483
    const/16 v18, 0x0

    .line 484
    .line 485
    const/16 v20, 0x1

    .line 486
    .line 487
    const/16 v19, 0x1

    .line 488
    .line 489
    const/4 v15, 0x0

    .line 490
    const-string/jumbo v16, "title"

    .line 491
    .line 492
    .line 493
    const-string v17, "TEXT"

    .line 494
    .line 495
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 496
    .line 497
    .line 498
    const-string/jumbo v6, "title"

    .line 499
    .line 500
    .line 501
    invoke-interface {v0, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 505
    .line 506
    const/16 v19, 0x0

    .line 507
    .line 508
    const/16 v16, 0x0

    .line 509
    .line 510
    const-string/jumbo v17, "stream_type"

    .line 511
    .line 512
    .line 513
    const-string v18, "TEXT"

    .line 514
    .line 515
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 516
    .line 517
    .line 518
    const-string/jumbo v6, "stream_type"

    .line 519
    .line 520
    .line 521
    invoke-interface {v0, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 525
    .line 526
    const/16 v20, 0x0

    .line 527
    .line 528
    const/16 v17, 0x0

    .line 529
    .line 530
    const-string v18, "duration"

    .line 531
    .line 532
    const-string v19, "INTEGER"

    .line 533
    .line 534
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 535
    .line 536
    .line 537
    move-object/from16 v6, v16

    .line 538
    .line 539
    const-string v8, "duration"

    .line 540
    .line 541
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 545
    .line 546
    const/16 v18, 0x0

    .line 547
    .line 548
    const/16 v20, 0x1

    .line 549
    .line 550
    const/16 v19, 0x1

    .line 551
    .line 552
    const/4 v15, 0x0

    .line 553
    const-string/jumbo v16, "uploader"

    .line 554
    .line 555
    .line 556
    const-string v17, "TEXT"

    .line 557
    .line 558
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 559
    .line 560
    .line 561
    const-string/jumbo v6, "uploader"

    .line 562
    .line 563
    .line 564
    invoke-interface {v0, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 568
    .line 569
    const/16 v19, 0x0

    .line 570
    .line 571
    const/16 v20, 0x0

    .line 572
    .line 573
    const/16 v16, 0x0

    .line 574
    .line 575
    const-string/jumbo v17, "uploader_url"

    .line 576
    .line 577
    .line 578
    const-string v18, "TEXT"

    .line 579
    .line 580
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 581
    .line 582
    .line 583
    const-string/jumbo v8, "uploader_url"

    .line 584
    .line 585
    .line 586
    invoke-interface {v0, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 590
    .line 591
    const/16 v20, 0x0

    .line 592
    .line 593
    const/16 v21, 0x0

    .line 594
    .line 595
    const/16 v17, 0x0

    .line 596
    .line 597
    const-string/jumbo v18, "thumbnail_url"

    .line 598
    .line 599
    .line 600
    const-string v19, "TEXT"

    .line 601
    .line 602
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 603
    .line 604
    .line 605
    move-object/from16 v8, v16

    .line 606
    .line 607
    const-string/jumbo v11, "thumbnail_url"

    .line 608
    .line 609
    .line 610
    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 614
    .line 615
    const/16 v18, 0x0

    .line 616
    .line 617
    const/16 v20, 0x1

    .line 618
    .line 619
    const/16 v19, 0x0

    .line 620
    .line 621
    const/4 v15, 0x0

    .line 622
    const-string/jumbo v16, "view_count"

    .line 623
    .line 624
    .line 625
    const-string v17, "INTEGER"

    .line 626
    .line 627
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 628
    .line 629
    .line 630
    const-string/jumbo v8, "view_count"

    .line 631
    .line 632
    .line 633
    invoke-interface {v0, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 637
    .line 638
    const/16 v19, 0x0

    .line 639
    .line 640
    const/16 v21, 0x1

    .line 641
    .line 642
    const/16 v20, 0x0

    .line 643
    .line 644
    const/16 v16, 0x0

    .line 645
    .line 646
    const-string/jumbo v17, "textual_upload_date"

    .line 647
    .line 648
    .line 649
    const-string v18, "TEXT"

    .line 650
    .line 651
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 652
    .line 653
    .line 654
    const-string/jumbo v8, "textual_upload_date"

    .line 655
    .line 656
    .line 657
    invoke-interface {v0, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 661
    .line 662
    const/16 v20, 0x0

    .line 663
    .line 664
    const/16 v21, 0x0

    .line 665
    .line 666
    const/16 v17, 0x0

    .line 667
    .line 668
    const-string/jumbo v18, "upload_date"

    .line 669
    .line 670
    .line 671
    const-string v19, "INTEGER"

    .line 672
    .line 673
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 674
    .line 675
    .line 676
    move-object/from16 v8, v16

    .line 677
    .line 678
    const-string/jumbo v12, "upload_date"

    .line 679
    .line 680
    .line 681
    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 685
    .line 686
    const/16 v18, 0x0

    .line 687
    .line 688
    const/16 v20, 0x1

    .line 689
    .line 690
    const/16 v19, 0x0

    .line 691
    .line 692
    const/4 v15, 0x0

    .line 693
    const-string v16, "is_upload_date_approximation"

    .line 694
    .line 695
    const-string v17, "INTEGER"

    .line 696
    .line 697
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 698
    .line 699
    .line 700
    const-string v8, "is_upload_date_approximation"

    .line 701
    .line 702
    invoke-interface {v0, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 706
    .line 707
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 708
    .line 709
    .line 710
    new-instance v12, Ljava/util/LinkedHashSet;

    .line 711
    .line 712
    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    .line 713
    .line 714
    .line 715
    new-instance v14, Landroidx/room/util/TableInfo$Index;

    .line 716
    .line 717
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v15

    .line 721
    invoke-static {v15}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 722
    .line 723
    .line 724
    move-result-object v15

    .line 725
    filled-new-array {v10, v10}, [Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v16

    .line 729
    invoke-static/range {v16 .. v16}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 730
    .line 731
    .line 732
    move-result-object v9

    .line 733
    move-object/from16 v16, v6

    .line 734
    .line 735
    const-string v6, "index_streams_service_id_url"

    .line 736
    .line 737
    invoke-direct {v14, v6, v13, v15, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 738
    .line 739
    .line 740
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 744
    .line 745
    const-string/jumbo v9, "streams"

    .line 746
    .line 747
    .line 748
    invoke-direct {v6, v9, v0, v8, v12}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 749
    .line 750
    .line 751
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-virtual {v6, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v8

    .line 759
    if-nez v8, :cond_2

    .line 760
    .line 761
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 762
    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    const-string/jumbo v3, "streams(org.schabi.newpipe.database.stream.model.StreamEntity).\n Expected:\n"

    .line 766
    .line 767
    .line 768
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    const/4 v2, 0x0

    .line 785
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 786
    .line 787
    .line 788
    goto/16 :goto_0

    .line 789
    .line 790
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 791
    .line 792
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 793
    .line 794
    .line 795
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 796
    .line 797
    const/16 v21, 0x0

    .line 798
    .line 799
    const/16 v23, 0x1

    .line 800
    .line 801
    const/16 v18, 0x1

    .line 802
    .line 803
    const-string/jumbo v19, "stream_id"

    .line 804
    .line 805
    .line 806
    const-string v20, "INTEGER"

    .line 807
    .line 808
    const/16 v22, 0x1

    .line 809
    .line 810
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 811
    .line 812
    .line 813
    move-object/from16 v6, v17

    .line 814
    .line 815
    const-string/jumbo v8, "stream_id"

    .line 816
    .line 817
    .line 818
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 822
    .line 823
    const/16 v18, 0x2

    .line 824
    .line 825
    const-string v19, "access_date"

    .line 826
    .line 827
    const-string v20, "INTEGER"

    .line 828
    .line 829
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 830
    .line 831
    .line 832
    move-object/from16 v6, v17

    .line 833
    .line 834
    const-string v9, "access_date"

    .line 835
    .line 836
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 840
    .line 841
    const/16 v18, 0x0

    .line 842
    .line 843
    const-string v19, "repeat_count"

    .line 844
    .line 845
    const-string v20, "INTEGER"

    .line 846
    .line 847
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 848
    .line 849
    .line 850
    move-object/from16 v6, v17

    .line 851
    .line 852
    const-string v9, "repeat_count"

    .line 853
    .line 854
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 858
    .line 859
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 860
    .line 861
    .line 862
    new-instance v17, Landroidx/room/util/TableInfo$ForeignKey;

    .line 863
    .line 864
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 865
    .line 866
    .line 867
    move-result-object v21

    .line 868
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 869
    .line 870
    .line 871
    move-result-object v22

    .line 872
    const-string/jumbo v18, "streams"

    .line 873
    .line 874
    .line 875
    const-string v19, "CASCADE"

    .line 876
    .line 877
    const-string v20, "CASCADE"

    .line 878
    .line 879
    invoke-direct/range {v17 .. v22}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 880
    .line 881
    .line 882
    move-object/from16 v9, v17

    .line 883
    .line 884
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 888
    .line 889
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 890
    .line 891
    .line 892
    new-instance v12, Landroidx/room/util/TableInfo$Index;

    .line 893
    .line 894
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 895
    .line 896
    .line 897
    move-result-object v14

    .line 898
    invoke-static {v10}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 899
    .line 900
    .line 901
    move-result-object v15

    .line 902
    const-string v13, "index_stream_history_stream_id"

    .line 903
    .line 904
    move-object/from16 v18, v11

    .line 905
    .line 906
    const/4 v11, 0x0

    .line 907
    invoke-direct {v12, v13, v11, v14, v15}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 908
    .line 909
    .line 910
    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 911
    .line 912
    .line 913
    new-instance v11, Landroidx/room/util/TableInfo;

    .line 914
    .line 915
    const-string/jumbo v12, "stream_history"

    .line 916
    .line 917
    .line 918
    invoke-direct {v11, v12, v0, v6, v9}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 919
    .line 920
    .line 921
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    invoke-virtual {v11, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    move-result v6

    .line 929
    if-nez v6, :cond_3

    .line 930
    .line 931
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 932
    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    .line 934
    .line 935
    const-string/jumbo v3, "stream_history(org.schabi.newpipe.database.history.model.StreamHistoryEntity).\n Expected:\n"

    .line 936
    .line 937
    .line 938
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    const/4 v2, 0x0

    .line 955
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 956
    .line 957
    .line 958
    goto/16 :goto_0

    .line 959
    .line 960
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 961
    .line 962
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 963
    .line 964
    .line 965
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 966
    .line 967
    const/16 v23, 0x0

    .line 968
    .line 969
    const/16 v25, 0x1

    .line 970
    .line 971
    const/16 v20, 0x1

    .line 972
    .line 973
    const-string/jumbo v21, "stream_id"

    .line 974
    .line 975
    .line 976
    const-string v22, "INTEGER"

    .line 977
    .line 978
    const/16 v24, 0x1

    .line 979
    .line 980
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 981
    .line 982
    .line 983
    move-object/from16 v6, v19

    .line 984
    .line 985
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 989
    .line 990
    const/16 v20, 0x0

    .line 991
    .line 992
    const-string v21, "progress_time"

    .line 993
    .line 994
    const-string v22, "INTEGER"

    .line 995
    .line 996
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 997
    .line 998
    .line 999
    move-object/from16 v6, v19

    .line 1000
    .line 1001
    const-string v9, "progress_time"

    .line 1002
    .line 1003
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 1007
    .line 1008
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1009
    .line 1010
    .line 1011
    new-instance v19, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1012
    .line 1013
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v23

    .line 1017
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v24

    .line 1021
    const-string/jumbo v20, "streams"

    .line 1022
    .line 1023
    .line 1024
    const-string v21, "CASCADE"

    .line 1025
    .line 1026
    const-string v22, "CASCADE"

    .line 1027
    .line 1028
    invoke-direct/range {v19 .. v24}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1029
    .line 1030
    .line 1031
    move-object/from16 v9, v19

    .line 1032
    .line 1033
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 1037
    .line 1038
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    new-instance v11, Landroidx/room/util/TableInfo;

    .line 1042
    .line 1043
    const-string/jumbo v12, "stream_state"

    .line 1044
    .line 1045
    .line 1046
    invoke-direct {v11, v12, v0, v6, v9}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1047
    .line 1048
    .line 1049
    invoke-static {v1, v12}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v0

    .line 1053
    invoke-virtual {v11, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v6

    .line 1057
    if-nez v6, :cond_4

    .line 1058
    .line 1059
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 1060
    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    const-string/jumbo v3, "stream_state(org.schabi.newpipe.database.stream.model.StreamStateEntity).\n Expected:\n"

    .line 1064
    .line 1065
    .line 1066
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    const/4 v2, 0x0

    .line 1083
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_0

    .line 1087
    .line 1088
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1089
    .line 1090
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1091
    .line 1092
    .line 1093
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1094
    .line 1095
    const/16 v23, 0x0

    .line 1096
    .line 1097
    const/16 v25, 0x1

    .line 1098
    .line 1099
    const/16 v20, 0x1

    .line 1100
    .line 1101
    const-string/jumbo v21, "uid"

    .line 1102
    .line 1103
    .line 1104
    const-string v22, "INTEGER"

    .line 1105
    .line 1106
    const/16 v24, 0x1

    .line 1107
    .line 1108
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1109
    .line 1110
    .line 1111
    move-object/from16 v6, v19

    .line 1112
    .line 1113
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1117
    .line 1118
    const/16 v20, 0x0

    .line 1119
    .line 1120
    const-string v21, "name"

    .line 1121
    .line 1122
    const-string v22, "TEXT"

    .line 1123
    .line 1124
    const/16 v24, 0x0

    .line 1125
    .line 1126
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1127
    .line 1128
    .line 1129
    move-object/from16 v6, v19

    .line 1130
    .line 1131
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1135
    .line 1136
    const-string v21, "is_thumbnail_permanent"

    .line 1137
    .line 1138
    const-string v22, "INTEGER"

    .line 1139
    .line 1140
    const/16 v24, 0x1

    .line 1141
    .line 1142
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1143
    .line 1144
    .line 1145
    move-object/from16 v6, v19

    .line 1146
    .line 1147
    const-string v9, "is_thumbnail_permanent"

    .line 1148
    .line 1149
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1153
    .line 1154
    const-string/jumbo v21, "thumbnail_stream_id"

    .line 1155
    .line 1156
    .line 1157
    const-string v22, "INTEGER"

    .line 1158
    .line 1159
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1160
    .line 1161
    .line 1162
    move-object/from16 v6, v19

    .line 1163
    .line 1164
    const-string/jumbo v9, "thumbnail_stream_id"

    .line 1165
    .line 1166
    .line 1167
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1171
    .line 1172
    const-string v21, "display_index"

    .line 1173
    .line 1174
    const-string v22, "INTEGER"

    .line 1175
    .line 1176
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1177
    .line 1178
    .line 1179
    move-object/from16 v6, v19

    .line 1180
    .line 1181
    const-string v9, "display_index"

    .line 1182
    .line 1183
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 1187
    .line 1188
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1189
    .line 1190
    .line 1191
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 1192
    .line 1193
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1194
    .line 1195
    .line 1196
    new-instance v12, Landroidx/room/util/TableInfo;

    .line 1197
    .line 1198
    const-string v13, "playlists"

    .line 1199
    .line 1200
    invoke-direct {v12, v13, v0, v6, v11}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1201
    .line 1202
    .line 1203
    invoke-static {v1, v13}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    invoke-virtual {v12, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v6

    .line 1211
    if-nez v6, :cond_5

    .line 1212
    .line 1213
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 1214
    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    const-string v3, "playlists(org.schabi.newpipe.database.playlist.model.PlaylistEntity).\n Expected:\n"

    .line 1218
    .line 1219
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v0

    .line 1235
    const/4 v2, 0x0

    .line 1236
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1237
    .line 1238
    .line 1239
    goto/16 :goto_0

    .line 1240
    .line 1241
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1242
    .line 1243
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1244
    .line 1245
    .line 1246
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1247
    .line 1248
    const/16 v23, 0x0

    .line 1249
    .line 1250
    const/16 v25, 0x1

    .line 1251
    .line 1252
    const/16 v20, 0x1

    .line 1253
    .line 1254
    const-string v21, "playlist_id"

    .line 1255
    .line 1256
    const-string v22, "INTEGER"

    .line 1257
    .line 1258
    const/16 v24, 0x1

    .line 1259
    .line 1260
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1261
    .line 1262
    .line 1263
    move-object/from16 v6, v19

    .line 1264
    .line 1265
    const-string v11, "playlist_id"

    .line 1266
    .line 1267
    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    .line 1269
    .line 1270
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1271
    .line 1272
    const/16 v20, 0x0

    .line 1273
    .line 1274
    const-string/jumbo v21, "stream_id"

    .line 1275
    .line 1276
    .line 1277
    const-string v22, "INTEGER"

    .line 1278
    .line 1279
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1280
    .line 1281
    .line 1282
    move-object/from16 v6, v19

    .line 1283
    .line 1284
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1288
    .line 1289
    const/16 v20, 0x2

    .line 1290
    .line 1291
    const-string v21, "join_index"

    .line 1292
    .line 1293
    const-string v22, "INTEGER"

    .line 1294
    .line 1295
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1296
    .line 1297
    .line 1298
    move-object/from16 v6, v19

    .line 1299
    .line 1300
    const-string v12, "join_index"

    .line 1301
    .line 1302
    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 1306
    .line 1307
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1308
    .line 1309
    .line 1310
    new-instance v19, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1311
    .line 1312
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v23

    .line 1316
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v24

    .line 1320
    const-string v20, "playlists"

    .line 1321
    .line 1322
    const-string v21, "CASCADE"

    .line 1323
    .line 1324
    const-string v22, "CASCADE"

    .line 1325
    .line 1326
    invoke-direct/range {v19 .. v24}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1327
    .line 1328
    .line 1329
    move-object/from16 v13, v19

    .line 1330
    .line 1331
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1332
    .line 1333
    .line 1334
    new-instance v19, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1335
    .line 1336
    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v23

    .line 1340
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v24

    .line 1344
    const-string/jumbo v20, "streams"

    .line 1345
    .line 1346
    .line 1347
    const-string v21, "CASCADE"

    .line 1348
    .line 1349
    const-string v22, "CASCADE"

    .line 1350
    .line 1351
    invoke-direct/range {v19 .. v24}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1352
    .line 1353
    .line 1354
    move-object/from16 v13, v19

    .line 1355
    .line 1356
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1357
    .line 1358
    .line 1359
    new-instance v13, Ljava/util/LinkedHashSet;

    .line 1360
    .line 1361
    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1362
    .line 1363
    .line 1364
    new-instance v14, Landroidx/room/util/TableInfo$Index;

    .line 1365
    .line 1366
    filled-new-array {v11, v12}, [Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v11

    .line 1370
    invoke-static {v11}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v11

    .line 1374
    filled-new-array {v10, v10}, [Ljava/lang/String;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v12

    .line 1378
    invoke-static {v12}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v12

    .line 1382
    const-string v15, "index_playlist_stream_join_playlist_id_join_index"

    .line 1383
    .line 1384
    move-object/from16 v19, v8

    .line 1385
    .line 1386
    const/4 v8, 0x1

    .line 1387
    invoke-direct {v14, v15, v8, v11, v12}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1388
    .line 1389
    .line 1390
    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    new-instance v8, Landroidx/room/util/TableInfo$Index;

    .line 1394
    .line 1395
    invoke-static/range {v19 .. v19}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v11

    .line 1399
    invoke-static {v10}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v12

    .line 1403
    const-string v14, "index_playlist_stream_join_stream_id"

    .line 1404
    .line 1405
    const/4 v15, 0x0

    .line 1406
    invoke-direct {v8, v14, v15, v11, v12}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1407
    .line 1408
    .line 1409
    invoke-interface {v13, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1410
    .line 1411
    .line 1412
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 1413
    .line 1414
    const-string v11, "playlist_stream_join"

    .line 1415
    .line 1416
    invoke-direct {v8, v11, v0, v6, v13}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1417
    .line 1418
    .line 1419
    invoke-static {v1, v11}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    invoke-virtual {v8, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v6

    .line 1427
    if-nez v6, :cond_6

    .line 1428
    .line 1429
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 1430
    .line 1431
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1432
    .line 1433
    const-string v3, "playlist_stream_join(org.schabi.newpipe.database.playlist.model.PlaylistStreamEntity).\n Expected:\n"

    .line 1434
    .line 1435
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1439
    .line 1440
    .line 1441
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v0

    .line 1451
    const/4 v2, 0x0

    .line 1452
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1453
    .line 1454
    .line 1455
    goto/16 :goto_0

    .line 1456
    .line 1457
    :cond_6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1458
    .line 1459
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1460
    .line 1461
    .line 1462
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1463
    .line 1464
    const/16 v24, 0x0

    .line 1465
    .line 1466
    const/16 v26, 0x1

    .line 1467
    .line 1468
    const/16 v21, 0x1

    .line 1469
    .line 1470
    const-string/jumbo v22, "uid"

    .line 1471
    .line 1472
    .line 1473
    const-string v23, "INTEGER"

    .line 1474
    .line 1475
    const/16 v25, 0x1

    .line 1476
    .line 1477
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1478
    .line 1479
    .line 1480
    move-object/from16 v6, v20

    .line 1481
    .line 1482
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1486
    .line 1487
    const/16 v21, 0x0

    .line 1488
    .line 1489
    const-string v22, "service_id"

    .line 1490
    .line 1491
    const-string v23, "INTEGER"

    .line 1492
    .line 1493
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1494
    .line 1495
    .line 1496
    move-object/from16 v6, v20

    .line 1497
    .line 1498
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    .line 1500
    .line 1501
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1502
    .line 1503
    const-string v22, "name"

    .line 1504
    .line 1505
    const-string v23, "TEXT"

    .line 1506
    .line 1507
    const/16 v25, 0x0

    .line 1508
    .line 1509
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1510
    .line 1511
    .line 1512
    move-object/from16 v6, v20

    .line 1513
    .line 1514
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1518
    .line 1519
    const-string/jumbo v22, "url"

    .line 1520
    .line 1521
    .line 1522
    const-string v23, "TEXT"

    .line 1523
    .line 1524
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1525
    .line 1526
    .line 1527
    move-object/from16 v6, v20

    .line 1528
    .line 1529
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1533
    .line 1534
    const-string/jumbo v22, "thumbnail_url"

    .line 1535
    .line 1536
    .line 1537
    const-string v23, "TEXT"

    .line 1538
    .line 1539
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1540
    .line 1541
    .line 1542
    move-object/from16 v8, v18

    .line 1543
    .line 1544
    move-object/from16 v6, v20

    .line 1545
    .line 1546
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    .line 1548
    .line 1549
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1550
    .line 1551
    const-string/jumbo v22, "uploader"

    .line 1552
    .line 1553
    .line 1554
    const-string v23, "TEXT"

    .line 1555
    .line 1556
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1557
    .line 1558
    .line 1559
    move-object/from16 v8, v16

    .line 1560
    .line 1561
    move-object/from16 v6, v20

    .line 1562
    .line 1563
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    .line 1565
    .line 1566
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1567
    .line 1568
    const-string v22, "display_index"

    .line 1569
    .line 1570
    const-string v23, "INTEGER"

    .line 1571
    .line 1572
    const/16 v25, 0x1

    .line 1573
    .line 1574
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1575
    .line 1576
    .line 1577
    move-object/from16 v6, v20

    .line 1578
    .line 1579
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    .line 1581
    .line 1582
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1583
    .line 1584
    const-string/jumbo v22, "stream_count"

    .line 1585
    .line 1586
    .line 1587
    const-string v23, "INTEGER"

    .line 1588
    .line 1589
    const/16 v25, 0x0

    .line 1590
    .line 1591
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1592
    .line 1593
    .line 1594
    move-object/from16 v6, v20

    .line 1595
    .line 1596
    const-string/jumbo v8, "stream_count"

    .line 1597
    .line 1598
    .line 1599
    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 1603
    .line 1604
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1605
    .line 1606
    .line 1607
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 1608
    .line 1609
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1610
    .line 1611
    .line 1612
    new-instance v9, Landroidx/room/util/TableInfo$Index;

    .line 1613
    .line 1614
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v2

    .line 1618
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v2

    .line 1622
    filled-new-array {v10, v10}, [Ljava/lang/String;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v4

    .line 1626
    invoke-static {v4}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v4

    .line 1630
    const-string v11, "index_remote_playlists_service_id_url"

    .line 1631
    .line 1632
    const/4 v12, 0x1

    .line 1633
    invoke-direct {v9, v11, v12, v2, v4}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1634
    .line 1635
    .line 1636
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1637
    .line 1638
    .line 1639
    new-instance v2, Landroidx/room/util/TableInfo;

    .line 1640
    .line 1641
    const-string v4, "remote_playlists"

    .line 1642
    .line 1643
    invoke-direct {v2, v4, v0, v6, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1644
    .line 1645
    .line 1646
    invoke-static {v1, v4}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v0

    .line 1650
    invoke-virtual {v2, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1651
    .line 1652
    .line 1653
    move-result v4

    .line 1654
    if-nez v4, :cond_7

    .line 1655
    .line 1656
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 1657
    .line 1658
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    const-string v4, "remote_playlists(org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity).\n Expected:\n"

    .line 1661
    .line 1662
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    .line 1670
    .line 1671
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v0

    .line 1678
    const/4 v2, 0x0

    .line 1679
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1680
    .line 1681
    .line 1682
    goto/16 :goto_0

    .line 1683
    .line 1684
    :cond_7
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1685
    .line 1686
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1687
    .line 1688
    .line 1689
    new-instance v20, Landroidx/room/util/TableInfo$Column;

    .line 1690
    .line 1691
    const/16 v24, 0x0

    .line 1692
    .line 1693
    const/16 v26, 0x1

    .line 1694
    .line 1695
    const/16 v21, 0x1

    .line 1696
    .line 1697
    const-string/jumbo v22, "stream_id"

    .line 1698
    .line 1699
    .line 1700
    const-string v23, "INTEGER"

    .line 1701
    .line 1702
    const/16 v25, 0x1

    .line 1703
    .line 1704
    invoke-direct/range {v20 .. v26}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1705
    .line 1706
    .line 1707
    move-object/from16 v4, v19

    .line 1708
    .line 1709
    move-object/from16 v2, v20

    .line 1710
    .line 1711
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    .line 1713
    .line 1714
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1715
    .line 1716
    const/16 v22, 0x0

    .line 1717
    .line 1718
    const/16 v24, 0x1

    .line 1719
    .line 1720
    const/16 v19, 0x2

    .line 1721
    .line 1722
    const-string/jumbo v20, "subscription_id"

    .line 1723
    .line 1724
    .line 1725
    const-string v21, "INTEGER"

    .line 1726
    .line 1727
    const/16 v23, 0x1

    .line 1728
    .line 1729
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1730
    .line 1731
    .line 1732
    move-object/from16 v2, v18

    .line 1733
    .line 1734
    const-string/jumbo v6, "subscription_id"

    .line 1735
    .line 1736
    .line 1737
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    .line 1739
    .line 1740
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1741
    .line 1742
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1743
    .line 1744
    .line 1745
    new-instance v11, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1746
    .line 1747
    invoke-static {v4}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v15

    .line 1751
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v16

    .line 1755
    const-string/jumbo v12, "streams"

    .line 1756
    .line 1757
    .line 1758
    const-string v13, "CASCADE"

    .line 1759
    .line 1760
    const-string v14, "CASCADE"

    .line 1761
    .line 1762
    invoke-direct/range {v11 .. v16}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1763
    .line 1764
    .line 1765
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1766
    .line 1767
    .line 1768
    new-instance v18, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1769
    .line 1770
    invoke-static {v6}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v22

    .line 1774
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v23

    .line 1778
    const-string/jumbo v19, "subscriptions"

    .line 1779
    .line 1780
    .line 1781
    const-string v20, "CASCADE"

    .line 1782
    .line 1783
    const-string v21, "CASCADE"

    .line 1784
    .line 1785
    invoke-direct/range {v18 .. v23}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1786
    .line 1787
    .line 1788
    move-object/from16 v4, v18

    .line 1789
    .line 1790
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1791
    .line 1792
    .line 1793
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1794
    .line 1795
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1796
    .line 1797
    .line 1798
    new-instance v8, Landroidx/room/util/TableInfo$Index;

    .line 1799
    .line 1800
    invoke-static {v6}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v9

    .line 1804
    invoke-static {v10}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v11

    .line 1808
    const-string v12, "index_feed_subscription_id"

    .line 1809
    .line 1810
    const/4 v15, 0x0

    .line 1811
    invoke-direct {v8, v12, v15, v9, v11}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1812
    .line 1813
    .line 1814
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1815
    .line 1816
    .line 1817
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 1818
    .line 1819
    const-string v9, "feed"

    .line 1820
    .line 1821
    invoke-direct {v8, v9, v0, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1822
    .line 1823
    .line 1824
    invoke-static {v1, v9}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v0

    .line 1828
    invoke-virtual {v8, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1829
    .line 1830
    .line 1831
    move-result v2

    .line 1832
    if-nez v2, :cond_8

    .line 1833
    .line 1834
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 1835
    .line 1836
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1837
    .line 1838
    const-string v3, "feed(org.schabi.newpipe.database.feed.model.FeedEntity).\n Expected:\n"

    .line 1839
    .line 1840
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    .line 1848
    .line 1849
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v0

    .line 1856
    const/4 v2, 0x0

    .line 1857
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 1858
    .line 1859
    .line 1860
    goto/16 :goto_0

    .line 1861
    .line 1862
    :cond_8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1863
    .line 1864
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1865
    .line 1866
    .line 1867
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1868
    .line 1869
    const/16 v22, 0x0

    .line 1870
    .line 1871
    const/16 v24, 0x1

    .line 1872
    .line 1873
    const/16 v19, 0x1

    .line 1874
    .line 1875
    const-string/jumbo v20, "uid"

    .line 1876
    .line 1877
    .line 1878
    const-string v21, "INTEGER"

    .line 1879
    .line 1880
    const/16 v23, 0x1

    .line 1881
    .line 1882
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1883
    .line 1884
    .line 1885
    move-object/from16 v2, v18

    .line 1886
    .line 1887
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    .line 1889
    .line 1890
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1891
    .line 1892
    const/16 v19, 0x0

    .line 1893
    .line 1894
    const-string v20, "name"

    .line 1895
    .line 1896
    const-string v21, "TEXT"

    .line 1897
    .line 1898
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1899
    .line 1900
    .line 1901
    move-object/from16 v2, v18

    .line 1902
    .line 1903
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    .line 1905
    .line 1906
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1907
    .line 1908
    const-string v20, "icon_id"

    .line 1909
    .line 1910
    const-string v21, "INTEGER"

    .line 1911
    .line 1912
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1913
    .line 1914
    .line 1915
    move-object/from16 v2, v18

    .line 1916
    .line 1917
    const-string v4, "icon_id"

    .line 1918
    .line 1919
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    .line 1921
    .line 1922
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1923
    .line 1924
    const-string/jumbo v20, "sort_order"

    .line 1925
    .line 1926
    .line 1927
    const-string v21, "INTEGER"

    .line 1928
    .line 1929
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1930
    .line 1931
    .line 1932
    move-object/from16 v2, v18

    .line 1933
    .line 1934
    const-string/jumbo v4, "sort_order"

    .line 1935
    .line 1936
    .line 1937
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    .line 1939
    .line 1940
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1941
    .line 1942
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1943
    .line 1944
    .line 1945
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 1946
    .line 1947
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1948
    .line 1949
    .line 1950
    new-instance v8, Landroidx/room/util/TableInfo$Index;

    .line 1951
    .line 1952
    invoke-static {v4}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v4

    .line 1956
    invoke-static {v10}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v9

    .line 1960
    const-string v11, "index_feed_group_sort_order"

    .line 1961
    .line 1962
    const/4 v15, 0x0

    .line 1963
    invoke-direct {v8, v11, v15, v4, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1964
    .line 1965
    .line 1966
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1967
    .line 1968
    .line 1969
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1970
    .line 1971
    const-string v8, "feed_group"

    .line 1972
    .line 1973
    invoke-direct {v4, v8, v0, v2, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1974
    .line 1975
    .line 1976
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v0

    .line 1980
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1981
    .line 1982
    .line 1983
    move-result v2

    .line 1984
    if-nez v2, :cond_9

    .line 1985
    .line 1986
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 1987
    .line 1988
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1989
    .line 1990
    const-string v3, "feed_group(org.schabi.newpipe.database.feed.model.FeedGroupEntity).\n Expected:\n"

    .line 1991
    .line 1992
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1996
    .line 1997
    .line 1998
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    .line 2000
    .line 2001
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v0

    .line 2008
    const/4 v2, 0x0

    .line 2009
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 2010
    .line 2011
    .line 2012
    goto/16 :goto_0

    .line 2013
    .line 2014
    :cond_9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2015
    .line 2016
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2017
    .line 2018
    .line 2019
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 2020
    .line 2021
    const/16 v22, 0x0

    .line 2022
    .line 2023
    const/16 v24, 0x1

    .line 2024
    .line 2025
    const/16 v19, 0x1

    .line 2026
    .line 2027
    const-string v20, "group_id"

    .line 2028
    .line 2029
    const-string v21, "INTEGER"

    .line 2030
    .line 2031
    const/16 v23, 0x1

    .line 2032
    .line 2033
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2034
    .line 2035
    .line 2036
    move-object/from16 v2, v18

    .line 2037
    .line 2038
    const-string v4, "group_id"

    .line 2039
    .line 2040
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    .line 2042
    .line 2043
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 2044
    .line 2045
    const/16 v19, 0x2

    .line 2046
    .line 2047
    const-string/jumbo v20, "subscription_id"

    .line 2048
    .line 2049
    .line 2050
    const-string v21, "INTEGER"

    .line 2051
    .line 2052
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2053
    .line 2054
    .line 2055
    move-object/from16 v2, v18

    .line 2056
    .line 2057
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    .line 2059
    .line 2060
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 2061
    .line 2062
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2063
    .line 2064
    .line 2065
    new-instance v11, Landroidx/room/util/TableInfo$ForeignKey;

    .line 2066
    .line 2067
    invoke-static {v4}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v15

    .line 2071
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v16

    .line 2075
    const-string v12, "feed_group"

    .line 2076
    .line 2077
    const-string v13, "CASCADE"

    .line 2078
    .line 2079
    const-string v14, "CASCADE"

    .line 2080
    .line 2081
    invoke-direct/range {v11 .. v16}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 2082
    .line 2083
    .line 2084
    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2085
    .line 2086
    .line 2087
    new-instance v18, Landroidx/room/util/TableInfo$ForeignKey;

    .line 2088
    .line 2089
    invoke-static {v6}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v22

    .line 2093
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v23

    .line 2097
    const-string/jumbo v19, "subscriptions"

    .line 2098
    .line 2099
    .line 2100
    const-string v20, "CASCADE"

    .line 2101
    .line 2102
    const-string v21, "CASCADE"

    .line 2103
    .line 2104
    invoke-direct/range {v18 .. v23}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 2105
    .line 2106
    .line 2107
    move-object/from16 v4, v18

    .line 2108
    .line 2109
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2110
    .line 2111
    .line 2112
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 2113
    .line 2114
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2115
    .line 2116
    .line 2117
    new-instance v5, Landroidx/room/util/TableInfo$Index;

    .line 2118
    .line 2119
    invoke-static {v6}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v8

    .line 2123
    invoke-static {v10}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2124
    .line 2125
    .line 2126
    move-result-object v9

    .line 2127
    const-string v10, "index_feed_group_subscription_join_subscription_id"

    .line 2128
    .line 2129
    const/4 v15, 0x0

    .line 2130
    invoke-direct {v5, v10, v15, v8, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 2131
    .line 2132
    .line 2133
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2134
    .line 2135
    .line 2136
    new-instance v5, Landroidx/room/util/TableInfo;

    .line 2137
    .line 2138
    const-string v8, "feed_group_subscription_join"

    .line 2139
    .line 2140
    invoke-direct {v5, v8, v0, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 2141
    .line 2142
    .line 2143
    invoke-static {v1, v8}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v0

    .line 2147
    invoke-virtual {v5, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 2148
    .line 2149
    .line 2150
    move-result v2

    .line 2151
    if-nez v2, :cond_a

    .line 2152
    .line 2153
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 2154
    .line 2155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2156
    .line 2157
    const-string v3, "feed_group_subscription_join(org.schabi.newpipe.database.feed.model.FeedGroupSubscriptionEntity).\n Expected:\n"

    .line 2158
    .line 2159
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2160
    .line 2161
    .line 2162
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2163
    .line 2164
    .line 2165
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    .line 2167
    .line 2168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2169
    .line 2170
    .line 2171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2172
    .line 2173
    .line 2174
    move-result-object v0

    .line 2175
    const/4 v2, 0x0

    .line 2176
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 2177
    .line 2178
    .line 2179
    goto/16 :goto_0

    .line 2180
    .line 2181
    :cond_a
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2182
    .line 2183
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2184
    .line 2185
    .line 2186
    new-instance v8, Landroidx/room/util/TableInfo$Column;

    .line 2187
    .line 2188
    const/4 v12, 0x0

    .line 2189
    const/4 v14, 0x1

    .line 2190
    const/4 v9, 0x1

    .line 2191
    const-string/jumbo v10, "subscription_id"

    .line 2192
    .line 2193
    .line 2194
    const-string v11, "INTEGER"

    .line 2195
    .line 2196
    const/4 v13, 0x1

    .line 2197
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2198
    .line 2199
    .line 2200
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2201
    .line 2202
    .line 2203
    new-instance v9, Landroidx/room/util/TableInfo$Column;

    .line 2204
    .line 2205
    const/4 v13, 0x0

    .line 2206
    const/4 v15, 0x1

    .line 2207
    const/4 v10, 0x0

    .line 2208
    const-string v11, "last_updated"

    .line 2209
    .line 2210
    const-string v12, "INTEGER"

    .line 2211
    .line 2212
    const/4 v14, 0x0

    .line 2213
    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2214
    .line 2215
    .line 2216
    const-string v2, "last_updated"

    .line 2217
    .line 2218
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    .line 2220
    .line 2221
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 2222
    .line 2223
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2224
    .line 2225
    .line 2226
    new-instance v8, Landroidx/room/util/TableInfo$ForeignKey;

    .line 2227
    .line 2228
    invoke-static {v6}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v12

    .line 2232
    invoke-static {v3}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v13

    .line 2236
    const-string/jumbo v9, "subscriptions"

    .line 2237
    .line 2238
    .line 2239
    const-string v10, "CASCADE"

    .line 2240
    .line 2241
    const-string v11, "CASCADE"

    .line 2242
    .line 2243
    invoke-direct/range {v8 .. v13}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 2244
    .line 2245
    .line 2246
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2247
    .line 2248
    .line 2249
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 2250
    .line 2251
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2252
    .line 2253
    .line 2254
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 2255
    .line 2256
    const-string v5, "feed_last_updated"

    .line 2257
    .line 2258
    invoke-direct {v4, v5, v0, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 2259
    .line 2260
    .line 2261
    invoke-static {v1, v5}, Landroidx/room/util/DBUtil;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v0

    .line 2265
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 2266
    .line 2267
    .line 2268
    move-result v1

    .line 2269
    if-nez v1, :cond_b

    .line 2270
    .line 2271
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 2272
    .line 2273
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2274
    .line 2275
    const-string v3, "feed_last_updated(org.schabi.newpipe.database.feed.model.FeedLastUpdatedEntity).\n Expected:\n"

    .line 2276
    .line 2277
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2278
    .line 2279
    .line 2280
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2281
    .line 2282
    .line 2283
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2287
    .line 2288
    .line 2289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v0

    .line 2293
    const/4 v2, 0x0

    .line 2294
    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 2295
    .line 2296
    .line 2297
    goto :goto_0

    .line 2298
    :cond_b
    new-instance v1, Lkotlinx/serialization/json/internal/Composer;

    .line 2299
    .line 2300
    const/4 v0, 0x0

    .line 2301
    const/4 v8, 0x1

    .line 2302
    invoke-direct {v1, v8, v0}, Lkotlinx/serialization/json/internal/Composer;-><init>(ZLjava/lang/String;)V

    .line 2303
    .line 2304
    .line 2305
    :goto_0
    return-object v1

    .line 2306
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->onValidateSchema$androidx$work$impl$WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(Landroidx/sqlite/SQLiteConnection;)Lkotlinx/serialization/json/internal/Composer;

    .line 2307
    .line 2308
    .line 2309
    move-result-object v0

    .line 2310
    return-object v0

    .line 2311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
