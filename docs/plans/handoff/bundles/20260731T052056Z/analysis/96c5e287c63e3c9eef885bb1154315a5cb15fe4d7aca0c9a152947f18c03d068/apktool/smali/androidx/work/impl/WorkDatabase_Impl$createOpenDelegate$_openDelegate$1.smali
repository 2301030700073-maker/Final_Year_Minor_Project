.class public final Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;
.super Landroidx/room/RoomOpenDelegate;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    invoke-direct {p0, v1, p1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/database/AppDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    .line 16
    const-string p1, "b6c7b5a53187eaa550798555db600785"

    const-string v0, "c1e56b502c218a42f6b77388d1961ee3"

    const/16 v1, 0x22

    invoke-direct {p0, v1, p1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final onValidateSchema$androidx$work$impl$WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;
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
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    const-string/jumbo v3, "work_spec_id"

    .line 16
    .line 17
    .line 18
    const-string v4, "TEXT"

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x1

    .line 22
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

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
    const/4 v9, 0x0

    .line 34
    const/4 v10, 0x1

    .line 35
    const-string v5, "prerequisite_id"

    .line 36
    .line 37
    const-string v6, "TEXT"

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    const/4 v8, 0x2

    .line 41
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const-string v2, "prerequisite_id"

    .line 45
    .line 46
    invoke-static {v1, v2, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    new-instance v5, Landroidx/room/util/TableInfo$ForeignKey;

    .line 51
    .line 52
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v11, "id"

    .line 57
    .line 58
    invoke-static {v11}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    const-string v6, "WorkSpec"

    .line 63
    .line 64
    const-string v7, "CASCADE"

    .line 65
    .line 66
    const-string v8, "CASCADE"

    .line 67
    .line 68
    invoke-direct/range {v5 .. v10}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v12, Landroidx/room/util/TableInfo$ForeignKey;

    .line 75
    .line 76
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v16

    .line 80
    invoke-static {v11}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v17

    .line 84
    const-string v13, "WorkSpec"

    .line 85
    .line 86
    const-string v14, "CASCADE"

    .line 87
    .line 88
    const-string v15, "CASCADE"

    .line 89
    .line 90
    invoke-direct/range {v12 .. v17}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 102
    .line 103
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const-string v8, "ASC"

    .line 108
    .line 109
    invoke-static {v8}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    const-string v10, "index_Dependency_work_spec_id"

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    invoke-direct {v6, v10, v12, v7, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 123
    .line 124
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v8}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    const-string v9, "index_Dependency_prerequisite_id"

    .line 133
    .line 134
    invoke-direct {v6, v9, v12, v2, v7}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    new-instance v2, Landroidx/room/util/TableInfo;

    .line 141
    .line 142
    const-string v6, "Dependency"

    .line 143
    .line 144
    invoke-direct {v2, v6, v1, v4, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v6}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v2, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    const-string v5, "\n Found:\n"

    .line 156
    .line 157
    if-nez v4, :cond_0

    .line 158
    .line 159
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 160
    .line 161
    const-string v3, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    .line 162
    .line 163
    invoke-static {v3, v2, v5, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-direct {v0, v1, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 174
    .line 175
    .line 176
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 177
    .line 178
    const/16 v18, 0x0

    .line 179
    .line 180
    const/16 v19, 0x1

    .line 181
    .line 182
    const/16 v16, 0x1

    .line 183
    .line 184
    const/16 v17, 0x1

    .line 185
    .line 186
    const-string v14, "id"

    .line 187
    .line 188
    const-string v15, "TEXT"

    .line 189
    .line 190
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 197
    .line 198
    const/16 v19, 0x0

    .line 199
    .line 200
    const/16 v20, 0x1

    .line 201
    .line 202
    const/16 v18, 0x0

    .line 203
    .line 204
    const-string v15, "state"

    .line 205
    .line 206
    const-string v16, "INTEGER"

    .line 207
    .line 208
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    const-string v2, "state"

    .line 212
    .line 213
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 217
    .line 218
    const/16 v20, 0x0

    .line 219
    .line 220
    const/16 v21, 0x1

    .line 221
    .line 222
    const/16 v18, 0x1

    .line 223
    .line 224
    const/16 v19, 0x0

    .line 225
    .line 226
    const-string/jumbo v16, "worker_class_name"

    .line 227
    .line 228
    .line 229
    const-string v17, "TEXT"

    .line 230
    .line 231
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    const-string/jumbo v2, "worker_class_name"

    .line 235
    .line 236
    .line 237
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 241
    .line 242
    const/16 v21, 0x0

    .line 243
    .line 244
    const/16 v22, 0x1

    .line 245
    .line 246
    const/16 v19, 0x1

    .line 247
    .line 248
    const/16 v20, 0x0

    .line 249
    .line 250
    const-string v17, "input_merger_class_name"

    .line 251
    .line 252
    const-string v18, "TEXT"

    .line 253
    .line 254
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    move-object/from16 v2, v16

    .line 258
    .line 259
    const-string v4, "input_merger_class_name"

    .line 260
    .line 261
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 265
    .line 266
    const/16 v18, 0x0

    .line 267
    .line 268
    const/16 v16, 0x1

    .line 269
    .line 270
    const/16 v17, 0x0

    .line 271
    .line 272
    const-string v14, "input"

    .line 273
    .line 274
    const-string v15, "BLOB"

    .line 275
    .line 276
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    const-string v2, "input"

    .line 280
    .line 281
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 285
    .line 286
    const/16 v19, 0x0

    .line 287
    .line 288
    const/16 v20, 0x1

    .line 289
    .line 290
    const/16 v17, 0x1

    .line 291
    .line 292
    const/16 v18, 0x0

    .line 293
    .line 294
    const-string v15, "output"

    .line 295
    .line 296
    const-string v16, "BLOB"

    .line 297
    .line 298
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 299
    .line 300
    .line 301
    const-string v2, "output"

    .line 302
    .line 303
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 307
    .line 308
    const/16 v20, 0x0

    .line 309
    .line 310
    const/16 v21, 0x1

    .line 311
    .line 312
    const/16 v18, 0x1

    .line 313
    .line 314
    const/16 v19, 0x0

    .line 315
    .line 316
    const-string v16, "initial_delay"

    .line 317
    .line 318
    const-string v17, "INTEGER"

    .line 319
    .line 320
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 321
    .line 322
    .line 323
    const-string v2, "initial_delay"

    .line 324
    .line 325
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 329
    .line 330
    const/16 v21, 0x0

    .line 331
    .line 332
    const/16 v19, 0x1

    .line 333
    .line 334
    const/16 v20, 0x0

    .line 335
    .line 336
    const-string v17, "interval_duration"

    .line 337
    .line 338
    const-string v18, "INTEGER"

    .line 339
    .line 340
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 341
    .line 342
    .line 343
    move-object/from16 v2, v16

    .line 344
    .line 345
    const-string v4, "interval_duration"

    .line 346
    .line 347
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 351
    .line 352
    const/16 v18, 0x0

    .line 353
    .line 354
    const/16 v16, 0x1

    .line 355
    .line 356
    const/16 v17, 0x0

    .line 357
    .line 358
    const-string v14, "flex_duration"

    .line 359
    .line 360
    const-string v15, "INTEGER"

    .line 361
    .line 362
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    const-string v2, "flex_duration"

    .line 366
    .line 367
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 371
    .line 372
    const/16 v19, 0x0

    .line 373
    .line 374
    const/16 v20, 0x1

    .line 375
    .line 376
    const/16 v17, 0x1

    .line 377
    .line 378
    const/16 v18, 0x0

    .line 379
    .line 380
    const-string v15, "run_attempt_count"

    .line 381
    .line 382
    const-string v16, "INTEGER"

    .line 383
    .line 384
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 385
    .line 386
    .line 387
    const-string v2, "run_attempt_count"

    .line 388
    .line 389
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 393
    .line 394
    const/16 v20, 0x0

    .line 395
    .line 396
    const/16 v21, 0x1

    .line 397
    .line 398
    const/16 v18, 0x1

    .line 399
    .line 400
    const/16 v19, 0x0

    .line 401
    .line 402
    const-string v16, "backoff_policy"

    .line 403
    .line 404
    const-string v17, "INTEGER"

    .line 405
    .line 406
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

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
    const/16 v21, 0x0

    .line 417
    .line 418
    const/16 v19, 0x1

    .line 419
    .line 420
    const/16 v20, 0x0

    .line 421
    .line 422
    const-string v17, "backoff_delay_duration"

    .line 423
    .line 424
    const-string v18, "INTEGER"

    .line 425
    .line 426
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    move-object/from16 v2, v16

    .line 430
    .line 431
    const-string v4, "backoff_delay_duration"

    .line 432
    .line 433
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 437
    .line 438
    const-string v18, "-1"

    .line 439
    .line 440
    const/16 v16, 0x1

    .line 441
    .line 442
    const/16 v17, 0x0

    .line 443
    .line 444
    const-string v14, "last_enqueue_time"

    .line 445
    .line 446
    const-string v15, "INTEGER"

    .line 447
    .line 448
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 449
    .line 450
    .line 451
    const-string v2, "last_enqueue_time"

    .line 452
    .line 453
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 457
    .line 458
    const/16 v19, 0x0

    .line 459
    .line 460
    const/16 v20, 0x1

    .line 461
    .line 462
    const/16 v17, 0x1

    .line 463
    .line 464
    const/16 v18, 0x0

    .line 465
    .line 466
    const-string v15, "minimum_retention_duration"

    .line 467
    .line 468
    const-string v16, "INTEGER"

    .line 469
    .line 470
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 471
    .line 472
    .line 473
    const-string v4, "minimum_retention_duration"

    .line 474
    .line 475
    invoke-interface {v1, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 479
    .line 480
    const/16 v20, 0x0

    .line 481
    .line 482
    const/16 v21, 0x1

    .line 483
    .line 484
    const/16 v18, 0x1

    .line 485
    .line 486
    const/16 v19, 0x0

    .line 487
    .line 488
    const-string v16, "schedule_requested_at"

    .line 489
    .line 490
    const-string v17, "INTEGER"

    .line 491
    .line 492
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 493
    .line 494
    .line 495
    const-string v4, "schedule_requested_at"

    .line 496
    .line 497
    invoke-interface {v1, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 501
    .line 502
    const/16 v21, 0x0

    .line 503
    .line 504
    const/16 v19, 0x1

    .line 505
    .line 506
    const/16 v20, 0x0

    .line 507
    .line 508
    const-string v17, "run_in_foreground"

    .line 509
    .line 510
    const-string v18, "INTEGER"

    .line 511
    .line 512
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v6, v16

    .line 516
    .line 517
    const-string v7, "run_in_foreground"

    .line 518
    .line 519
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 523
    .line 524
    const/16 v18, 0x0

    .line 525
    .line 526
    const/16 v16, 0x1

    .line 527
    .line 528
    const/16 v17, 0x0

    .line 529
    .line 530
    const-string v14, "out_of_quota_policy"

    .line 531
    .line 532
    const-string v15, "INTEGER"

    .line 533
    .line 534
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    const-string v6, "out_of_quota_policy"

    .line 538
    .line 539
    invoke-interface {v1, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 543
    .line 544
    const-string v19, "0"

    .line 545
    .line 546
    const/16 v20, 0x1

    .line 547
    .line 548
    const/16 v17, 0x1

    .line 549
    .line 550
    const/16 v18, 0x0

    .line 551
    .line 552
    const-string v15, "period_count"

    .line 553
    .line 554
    const-string v16, "INTEGER"

    .line 555
    .line 556
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 557
    .line 558
    .line 559
    const-string v6, "period_count"

    .line 560
    .line 561
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 565
    .line 566
    const-string v20, "0"

    .line 567
    .line 568
    const/16 v21, 0x1

    .line 569
    .line 570
    const/16 v18, 0x1

    .line 571
    .line 572
    const/16 v19, 0x0

    .line 573
    .line 574
    const-string v16, "generation"

    .line 575
    .line 576
    const-string v17, "INTEGER"

    .line 577
    .line 578
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 579
    .line 580
    .line 581
    const-string v6, "generation"

    .line 582
    .line 583
    invoke-interface {v1, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 587
    .line 588
    const-string v21, "9223372036854775807"

    .line 589
    .line 590
    const/16 v19, 0x1

    .line 591
    .line 592
    const/16 v20, 0x0

    .line 593
    .line 594
    const-string v17, "next_schedule_time_override"

    .line 595
    .line 596
    const-string v18, "INTEGER"

    .line 597
    .line 598
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v7, v16

    .line 602
    .line 603
    const-string v9, "next_schedule_time_override"

    .line 604
    .line 605
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 609
    .line 610
    const-string v18, "0"

    .line 611
    .line 612
    const/16 v16, 0x1

    .line 613
    .line 614
    const/16 v17, 0x0

    .line 615
    .line 616
    const-string v14, "next_schedule_time_override_generation"

    .line 617
    .line 618
    const-string v15, "INTEGER"

    .line 619
    .line 620
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 621
    .line 622
    .line 623
    const-string v7, "next_schedule_time_override_generation"

    .line 624
    .line 625
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 629
    .line 630
    const-string v19, "-256"

    .line 631
    .line 632
    const/16 v20, 0x1

    .line 633
    .line 634
    const/16 v17, 0x1

    .line 635
    .line 636
    const/16 v18, 0x0

    .line 637
    .line 638
    const-string v15, "stop_reason"

    .line 639
    .line 640
    const-string v16, "INTEGER"

    .line 641
    .line 642
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 643
    .line 644
    .line 645
    const-string v7, "stop_reason"

    .line 646
    .line 647
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 651
    .line 652
    const/16 v20, 0x0

    .line 653
    .line 654
    const/16 v21, 0x1

    .line 655
    .line 656
    const/16 v19, 0x0

    .line 657
    .line 658
    const-string/jumbo v16, "trace_tag"

    .line 659
    .line 660
    .line 661
    const-string v17, "TEXT"

    .line 662
    .line 663
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 664
    .line 665
    .line 666
    const-string/jumbo v7, "trace_tag"

    .line 667
    .line 668
    .line 669
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 673
    .line 674
    const/16 v21, 0x0

    .line 675
    .line 676
    const/16 v20, 0x0

    .line 677
    .line 678
    const-string v17, "backoff_on_system_interruptions"

    .line 679
    .line 680
    const-string v18, "INTEGER"

    .line 681
    .line 682
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 683
    .line 684
    .line 685
    move-object/from16 v7, v16

    .line 686
    .line 687
    const-string v9, "backoff_on_system_interruptions"

    .line 688
    .line 689
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 693
    .line 694
    const/16 v18, 0x0

    .line 695
    .line 696
    const/16 v19, 0x1

    .line 697
    .line 698
    const/16 v16, 0x1

    .line 699
    .line 700
    const/16 v17, 0x0

    .line 701
    .line 702
    const-string v14, "required_network_type"

    .line 703
    .line 704
    const-string v15, "INTEGER"

    .line 705
    .line 706
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 707
    .line 708
    .line 709
    const-string v7, "required_network_type"

    .line 710
    .line 711
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 715
    .line 716
    const-string/jumbo v19, "x\'\'"

    .line 717
    .line 718
    .line 719
    const/16 v20, 0x1

    .line 720
    .line 721
    const/16 v17, 0x1

    .line 722
    .line 723
    const/16 v18, 0x0

    .line 724
    .line 725
    const-string v15, "required_network_request"

    .line 726
    .line 727
    const-string v16, "BLOB"

    .line 728
    .line 729
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 730
    .line 731
    .line 732
    const-string v7, "required_network_request"

    .line 733
    .line 734
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 738
    .line 739
    const/16 v20, 0x0

    .line 740
    .line 741
    const/16 v21, 0x1

    .line 742
    .line 743
    const/16 v18, 0x1

    .line 744
    .line 745
    const/16 v19, 0x0

    .line 746
    .line 747
    const-string v16, "requires_charging"

    .line 748
    .line 749
    const-string v17, "INTEGER"

    .line 750
    .line 751
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 752
    .line 753
    .line 754
    const-string v7, "requires_charging"

    .line 755
    .line 756
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 760
    .line 761
    const/16 v21, 0x0

    .line 762
    .line 763
    const/16 v19, 0x1

    .line 764
    .line 765
    const/16 v20, 0x0

    .line 766
    .line 767
    const-string v17, "requires_device_idle"

    .line 768
    .line 769
    const-string v18, "INTEGER"

    .line 770
    .line 771
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 772
    .line 773
    .line 774
    move-object/from16 v7, v16

    .line 775
    .line 776
    const-string v9, "requires_device_idle"

    .line 777
    .line 778
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 782
    .line 783
    const/16 v18, 0x0

    .line 784
    .line 785
    const/16 v16, 0x1

    .line 786
    .line 787
    const/16 v17, 0x0

    .line 788
    .line 789
    const-string v14, "requires_battery_not_low"

    .line 790
    .line 791
    const-string v15, "INTEGER"

    .line 792
    .line 793
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 794
    .line 795
    .line 796
    const-string v7, "requires_battery_not_low"

    .line 797
    .line 798
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 802
    .line 803
    const/16 v19, 0x0

    .line 804
    .line 805
    const/16 v20, 0x1

    .line 806
    .line 807
    const/16 v17, 0x1

    .line 808
    .line 809
    const/16 v18, 0x0

    .line 810
    .line 811
    const-string v15, "requires_storage_not_low"

    .line 812
    .line 813
    const-string v16, "INTEGER"

    .line 814
    .line 815
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 816
    .line 817
    .line 818
    const-string v7, "requires_storage_not_low"

    .line 819
    .line 820
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 824
    .line 825
    const/16 v20, 0x0

    .line 826
    .line 827
    const/16 v21, 0x1

    .line 828
    .line 829
    const/16 v18, 0x1

    .line 830
    .line 831
    const/16 v19, 0x0

    .line 832
    .line 833
    const-string/jumbo v16, "trigger_content_update_delay"

    .line 834
    .line 835
    .line 836
    const-string v17, "INTEGER"

    .line 837
    .line 838
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 839
    .line 840
    .line 841
    const-string/jumbo v7, "trigger_content_update_delay"

    .line 842
    .line 843
    .line 844
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 848
    .line 849
    const/16 v21, 0x0

    .line 850
    .line 851
    const/16 v19, 0x1

    .line 852
    .line 853
    const/16 v20, 0x0

    .line 854
    .line 855
    const-string/jumbo v17, "trigger_max_content_delay"

    .line 856
    .line 857
    .line 858
    const-string v18, "INTEGER"

    .line 859
    .line 860
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 861
    .line 862
    .line 863
    move-object/from16 v7, v16

    .line 864
    .line 865
    const-string/jumbo v9, "trigger_max_content_delay"

    .line 866
    .line 867
    .line 868
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 872
    .line 873
    const/16 v18, 0x0

    .line 874
    .line 875
    const/16 v16, 0x1

    .line 876
    .line 877
    const/16 v17, 0x0

    .line 878
    .line 879
    const-string v14, "content_uri_triggers"

    .line 880
    .line 881
    const-string v15, "BLOB"

    .line 882
    .line 883
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 884
    .line 885
    .line 886
    const-string v7, "content_uri_triggers"

    .line 887
    .line 888
    invoke-static {v1, v7, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 889
    .line 890
    .line 891
    move-result-object v7

    .line 892
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 893
    .line 894
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 895
    .line 896
    .line 897
    new-instance v10, Landroidx/room/util/TableInfo$Index;

    .line 898
    .line 899
    invoke-static {v4}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 900
    .line 901
    .line 902
    move-result-object v4

    .line 903
    invoke-static {v8}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 904
    .line 905
    .line 906
    move-result-object v13

    .line 907
    const-string v14, "index_WorkSpec_schedule_requested_at"

    .line 908
    .line 909
    invoke-direct {v10, v14, v12, v4, v13}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 910
    .line 911
    .line 912
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    new-instance v4, Landroidx/room/util/TableInfo$Index;

    .line 916
    .line 917
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 918
    .line 919
    .line 920
    move-result-object v2

    .line 921
    invoke-static {v8}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 922
    .line 923
    .line 924
    move-result-object v10

    .line 925
    const-string v13, "index_WorkSpec_last_enqueue_time"

    .line 926
    .line 927
    invoke-direct {v4, v13, v12, v2, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 928
    .line 929
    .line 930
    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 931
    .line 932
    .line 933
    new-instance v2, Landroidx/room/util/TableInfo;

    .line 934
    .line 935
    const-string v4, "WorkSpec"

    .line 936
    .line 937
    invoke-direct {v2, v4, v1, v7, v9}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 938
    .line 939
    .line 940
    invoke-static {v0, v4}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 941
    .line 942
    .line 943
    move-result-object v1

    .line 944
    invoke-virtual {v2, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 945
    .line 946
    .line 947
    move-result v4

    .line 948
    if-nez v4, :cond_1

    .line 949
    .line 950
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 951
    .line 952
    const-string v3, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    .line 953
    .line 954
    invoke-static {v3, v2, v5, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-direct {v0, v1, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 959
    .line 960
    .line 961
    return-object v0

    .line 962
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 963
    .line 964
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 965
    .line 966
    .line 967
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 968
    .line 969
    const/16 v18, 0x0

    .line 970
    .line 971
    const/16 v19, 0x1

    .line 972
    .line 973
    const-string v14, "tag"

    .line 974
    .line 975
    const-string v15, "TEXT"

    .line 976
    .line 977
    const/16 v16, 0x1

    .line 978
    .line 979
    const/16 v17, 0x1

    .line 980
    .line 981
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 982
    .line 983
    .line 984
    const-string v2, "tag"

    .line 985
    .line 986
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 990
    .line 991
    const/16 v19, 0x0

    .line 992
    .line 993
    const/16 v20, 0x1

    .line 994
    .line 995
    const-string/jumbo v15, "work_spec_id"

    .line 996
    .line 997
    .line 998
    const-string v16, "TEXT"

    .line 999
    .line 1000
    const/16 v18, 0x2

    .line 1001
    .line 1002
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1003
    .line 1004
    .line 1005
    invoke-static {v1, v3, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v2

    .line 1009
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1010
    .line 1011
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v17

    .line 1015
    invoke-static {v11}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v18

    .line 1019
    const-string v14, "WorkSpec"

    .line 1020
    .line 1021
    const-string v15, "CASCADE"

    .line 1022
    .line 1023
    const-string v16, "CASCADE"

    .line 1024
    .line 1025
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1032
    .line 1033
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1034
    .line 1035
    .line 1036
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 1037
    .line 1038
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v9

    .line 1042
    invoke-static {v8}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v10

    .line 1046
    const-string v13, "index_WorkTag_work_spec_id"

    .line 1047
    .line 1048
    invoke-direct {v7, v13, v12, v9, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    new-instance v7, Landroidx/room/util/TableInfo;

    .line 1055
    .line 1056
    const-string v9, "WorkTag"

    .line 1057
    .line 1058
    invoke-direct {v7, v9, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-static {v0, v9}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v1

    .line 1065
    invoke-virtual {v7, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v2

    .line 1069
    if-nez v2, :cond_2

    .line 1070
    .line 1071
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1072
    .line 1073
    const-string v2, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    .line 1074
    .line 1075
    invoke-static {v2, v7, v5, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v1

    .line 1079
    invoke-direct {v0, v1, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1080
    .line 1081
    .line 1082
    return-object v0

    .line 1083
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1084
    .line 1085
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1086
    .line 1087
    .line 1088
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1089
    .line 1090
    const/16 v18, 0x0

    .line 1091
    .line 1092
    const/16 v19, 0x1

    .line 1093
    .line 1094
    const-string/jumbo v14, "work_spec_id"

    .line 1095
    .line 1096
    .line 1097
    const-string v15, "TEXT"

    .line 1098
    .line 1099
    const/16 v16, 0x1

    .line 1100
    .line 1101
    const/16 v17, 0x1

    .line 1102
    .line 1103
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1104
    .line 1105
    .line 1106
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1110
    .line 1111
    const-string v19, "0"

    .line 1112
    .line 1113
    const/16 v20, 0x1

    .line 1114
    .line 1115
    const-string v15, "generation"

    .line 1116
    .line 1117
    const-string v16, "INTEGER"

    .line 1118
    .line 1119
    const/16 v18, 0x2

    .line 1120
    .line 1121
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1122
    .line 1123
    .line 1124
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    new-instance v15, Landroidx/room/util/TableInfo$Column;

    .line 1128
    .line 1129
    const/16 v20, 0x0

    .line 1130
    .line 1131
    const/16 v21, 0x1

    .line 1132
    .line 1133
    const-string v16, "system_id"

    .line 1134
    .line 1135
    const-string v17, "INTEGER"

    .line 1136
    .line 1137
    const/16 v18, 0x1

    .line 1138
    .line 1139
    const/16 v19, 0x0

    .line 1140
    .line 1141
    invoke-direct/range {v15 .. v21}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1142
    .line 1143
    .line 1144
    const-string v2, "system_id"

    .line 1145
    .line 1146
    invoke-static {v1, v2, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1151
    .line 1152
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v17

    .line 1156
    invoke-static {v11}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v18

    .line 1160
    const-string v14, "WorkSpec"

    .line 1161
    .line 1162
    const-string v15, "CASCADE"

    .line 1163
    .line 1164
    const-string v16, "CASCADE"

    .line 1165
    .line 1166
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1173
    .line 1174
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1175
    .line 1176
    .line 1177
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 1178
    .line 1179
    const-string v7, "SystemIdInfo"

    .line 1180
    .line 1181
    invoke-direct {v6, v7, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1182
    .line 1183
    .line 1184
    invoke-static {v0, v7}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v1

    .line 1188
    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v2

    .line 1192
    if-nez v2, :cond_3

    .line 1193
    .line 1194
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1195
    .line 1196
    const-string v2, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    .line 1197
    .line 1198
    invoke-static {v2, v6, v5, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    invoke-direct {v0, v1, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1203
    .line 1204
    .line 1205
    return-object v0

    .line 1206
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1207
    .line 1208
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1209
    .line 1210
    .line 1211
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1212
    .line 1213
    const/16 v18, 0x0

    .line 1214
    .line 1215
    const/16 v19, 0x1

    .line 1216
    .line 1217
    const-string v14, "name"

    .line 1218
    .line 1219
    const-string v15, "TEXT"

    .line 1220
    .line 1221
    const/16 v16, 0x1

    .line 1222
    .line 1223
    const/16 v17, 0x1

    .line 1224
    .line 1225
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1226
    .line 1227
    .line 1228
    const-string v2, "name"

    .line 1229
    .line 1230
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1234
    .line 1235
    const/16 v19, 0x0

    .line 1236
    .line 1237
    const/16 v20, 0x1

    .line 1238
    .line 1239
    const-string/jumbo v15, "work_spec_id"

    .line 1240
    .line 1241
    .line 1242
    const-string v16, "TEXT"

    .line 1243
    .line 1244
    const/16 v18, 0x2

    .line 1245
    .line 1246
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1247
    .line 1248
    .line 1249
    invoke-static {v1, v3, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v2

    .line 1253
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1254
    .line 1255
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v17

    .line 1259
    invoke-static {v11}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v18

    .line 1263
    const-string v14, "WorkSpec"

    .line 1264
    .line 1265
    const-string v15, "CASCADE"

    .line 1266
    .line 1267
    const-string v16, "CASCADE"

    .line 1268
    .line 1269
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1270
    .line 1271
    .line 1272
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1273
    .line 1274
    .line 1275
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1276
    .line 1277
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1278
    .line 1279
    .line 1280
    new-instance v6, Landroidx/room/util/TableInfo$Index;

    .line 1281
    .line 1282
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v7

    .line 1286
    invoke-static {v8}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v8

    .line 1290
    const-string v9, "index_WorkName_work_spec_id"

    .line 1291
    .line 1292
    invoke-direct {v6, v9, v12, v7, v8}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1296
    .line 1297
    .line 1298
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 1299
    .line 1300
    const-string v7, "WorkName"

    .line 1301
    .line 1302
    invoke-direct {v6, v7, v1, v2, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-static {v0, v7}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v1

    .line 1309
    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v2

    .line 1313
    if-nez v2, :cond_4

    .line 1314
    .line 1315
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1316
    .line 1317
    const-string v2, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    .line 1318
    .line 1319
    invoke-static {v2, v6, v5, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    invoke-direct {v0, v1, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1324
    .line 1325
    .line 1326
    return-object v0

    .line 1327
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1328
    .line 1329
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1330
    .line 1331
    .line 1332
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1333
    .line 1334
    const/16 v18, 0x0

    .line 1335
    .line 1336
    const/16 v19, 0x1

    .line 1337
    .line 1338
    const-string/jumbo v14, "work_spec_id"

    .line 1339
    .line 1340
    .line 1341
    const-string v15, "TEXT"

    .line 1342
    .line 1343
    const/16 v16, 0x1

    .line 1344
    .line 1345
    const/16 v17, 0x1

    .line 1346
    .line 1347
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1348
    .line 1349
    .line 1350
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1354
    .line 1355
    const/16 v19, 0x0

    .line 1356
    .line 1357
    const/16 v20, 0x1

    .line 1358
    .line 1359
    const-string v15, "progress"

    .line 1360
    .line 1361
    const-string v16, "BLOB"

    .line 1362
    .line 1363
    const/16 v18, 0x0

    .line 1364
    .line 1365
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1366
    .line 1367
    .line 1368
    const-string v2, "progress"

    .line 1369
    .line 1370
    invoke-static {v1, v2, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v2

    .line 1374
    new-instance v13, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1375
    .line 1376
    invoke-static {v3}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v17

    .line 1380
    invoke-static {v11}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v18

    .line 1384
    const-string v14, "WorkSpec"

    .line 1385
    .line 1386
    const-string v15, "CASCADE"

    .line 1387
    .line 1388
    const-string v16, "CASCADE"

    .line 1389
    .line 1390
    invoke-direct/range {v13 .. v18}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1394
    .line 1395
    .line 1396
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1397
    .line 1398
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1399
    .line 1400
    .line 1401
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1402
    .line 1403
    const-string v6, "WorkProgress"

    .line 1404
    .line 1405
    invoke-direct {v4, v6, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1406
    .line 1407
    .line 1408
    invoke-static {v0, v6}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v1

    .line 1412
    invoke-virtual {v4, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1413
    .line 1414
    .line 1415
    move-result v2

    .line 1416
    if-nez v2, :cond_5

    .line 1417
    .line 1418
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1419
    .line 1420
    const-string v2, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    .line 1421
    .line 1422
    invoke-static {v2, v4, v5, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v1

    .line 1426
    invoke-direct {v0, v1, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1427
    .line 1428
    .line 1429
    return-object v0

    .line 1430
    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1431
    .line 1432
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1433
    .line 1434
    .line 1435
    new-instance v13, Landroidx/room/util/TableInfo$Column;

    .line 1436
    .line 1437
    const/16 v18, 0x0

    .line 1438
    .line 1439
    const/16 v19, 0x1

    .line 1440
    .line 1441
    const-string v14, "key"

    .line 1442
    .line 1443
    const-string v15, "TEXT"

    .line 1444
    .line 1445
    const/16 v16, 0x1

    .line 1446
    .line 1447
    const/16 v17, 0x1

    .line 1448
    .line 1449
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1450
    .line 1451
    .line 1452
    const-string v2, "key"

    .line 1453
    .line 1454
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 1458
    .line 1459
    const/16 v19, 0x0

    .line 1460
    .line 1461
    const/16 v20, 0x1

    .line 1462
    .line 1463
    const-string v15, "long_value"

    .line 1464
    .line 1465
    const-string v16, "INTEGER"

    .line 1466
    .line 1467
    const/16 v17, 0x0

    .line 1468
    .line 1469
    const/16 v18, 0x0

    .line 1470
    .line 1471
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1472
    .line 1473
    .line 1474
    const-string v2, "long_value"

    .line 1475
    .line 1476
    invoke-static {v1, v2, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v2

    .line 1480
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1481
    .line 1482
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1483
    .line 1484
    .line 1485
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1486
    .line 1487
    const-string v6, "Preference"

    .line 1488
    .line 1489
    invoke-direct {v4, v6, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1490
    .line 1491
    .line 1492
    invoke-static {v0, v6}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v1

    .line 1500
    if-nez v1, :cond_6

    .line 1501
    .line 1502
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1503
    .line 1504
    const-string v2, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    .line 1505
    .line 1506
    invoke-static {v2, v4, v5, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    invoke-direct {v1, v0, v12}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1511
    .line 1512
    .line 1513
    return-object v1

    .line 1514
    :cond_6
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1515
    .line 1516
    const/4 v1, 0x1

    .line 1517
    const/4 v2, 0x0

    .line 1518
    invoke-direct {v0, v2, v1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1519
    .line 1520
    .line 1521
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
    const-string p0, "CREATE TABLE IF NOT EXISTS `HistoryEntry` (`authority` TEXT NOT NULL, `lang` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `namespace` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `source` INTEGER NOT NULL, `prevId` INTEGER NOT NULL)"

    .line 12
    .line 13
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_HistoryEntry_lang_namespace_apiTitle` ON `HistoryEntry` (`lang`, `namespace`, `apiTitle`)"

    .line 17
    .line 18
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "CREATE TABLE IF NOT EXISTS `PageImage` (`lang` TEXT NOT NULL, `namespace` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `imageName` TEXT, `description` TEXT, `timeSpentSec` INTEGER NOT NULL, `geoLat` REAL NOT NULL, `geoLon` REAL NOT NULL, PRIMARY KEY(`lang`, `namespace`, `apiTitle`))"

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_PageImage_lang_namespace_apiTitle` ON `PageImage` (`lang`, `namespace`, `apiTitle`)"

    .line 27
    .line 28
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "CREATE TABLE IF NOT EXISTS `RecentSearch` (`text` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`text`))"

    .line 32
    .line 33
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p0, "CREATE TABLE IF NOT EXISTS `TalkPageSeen` (`sha` TEXT NOT NULL, PRIMARY KEY(`sha`))"

    .line 37
    .line 38
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p0, "CREATE TABLE IF NOT EXISTS `EditSummary` (`summary` TEXT NOT NULL, `lastUsed` INTEGER NOT NULL, PRIMARY KEY(`summary`))"

    .line 42
    .line 43
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p0, "CREATE TABLE IF NOT EXISTS `OfflineObject` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `url` TEXT NOT NULL, `lang` TEXT NOT NULL, `path` TEXT NOT NULL, `status` INTEGER NOT NULL, `usedByStr` TEXT NOT NULL)"

    .line 47
    .line 48
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p0, "CREATE TABLE IF NOT EXISTS `ReadingList` (`listTitle` TEXT NOT NULL, `description` TEXT, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `sizeBytes` INTEGER NOT NULL, `dirty` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)"

    .line 52
    .line 53
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p0, "CREATE TABLE IF NOT EXISTS `ReadingListPage` (`wiki` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `apiTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `listId` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `mtime` INTEGER NOT NULL, `atime` INTEGER NOT NULL, `offline` INTEGER NOT NULL, `status` INTEGER NOT NULL, `sizeBytes` INTEGER NOT NULL, `lang` TEXT NOT NULL, `revId` INTEGER NOT NULL, `remoteId` INTEGER NOT NULL)"

    .line 57
    .line 58
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "CREATE TABLE IF NOT EXISTS `Notification` (`id` INTEGER NOT NULL, `wiki` TEXT NOT NULL, `read` TEXT, `category` TEXT NOT NULL, `type` TEXT NOT NULL, `revid` INTEGER NOT NULL, `title` TEXT, `agent` TEXT, `timestamp` TEXT, `contents` TEXT, PRIMARY KEY(`id`, `wiki`))"

    .line 62
    .line 63
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p0, "CREATE TABLE IF NOT EXISTS `TalkTemplate` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `type` INTEGER NOT NULL, `order` INTEGER NOT NULL, `title` TEXT NOT NULL, `subject` TEXT NOT NULL, `message` TEXT NOT NULL)"

    .line 67
    .line 68
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "CREATE TABLE IF NOT EXISTS `Category` (`year` INTEGER NOT NULL, `month` INTEGER NOT NULL, `title` TEXT NOT NULL, `lang` TEXT NOT NULL, `count` INTEGER NOT NULL, PRIMARY KEY(`year`, `month`, `title`, `lang`))"

    .line 72
    .line 73
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p0, "CREATE TABLE IF NOT EXISTS `DailyGameHistory` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `gameName` INTEGER NOT NULL, `language` TEXT NOT NULL, `year` INTEGER NOT NULL, `month` INTEGER NOT NULL, `day` INTEGER NOT NULL, `score` INTEGER NOT NULL, `playType` INTEGER NOT NULL, `gameData` TEXT, `status` INTEGER NOT NULL, `currentQuestionIndex` INTEGER NOT NULL)"

    .line 77
    .line 78
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p0, "CREATE TABLE IF NOT EXISTS `RecommendedPage` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `wiki` TEXT NOT NULL, `lang` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `timestamp` INTEGER NOT NULL, `apiTitle` TEXT NOT NULL, `displayTitle` TEXT NOT NULL, `description` TEXT, `thumbUrl` TEXT, `status` INTEGER NOT NULL, `extract` TEXT)"

    .line 82
    .line 83
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p0, "CREATE TABLE IF NOT EXISTS `InterestTopic` (`topicId` TEXT NOT NULL, PRIMARY KEY(`topicId`))"

    .line 87
    .line 88
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string p0, "CREATE TABLE IF NOT EXISTS `InterestArticle` (`apiTitle` TEXT NOT NULL, `lang` TEXT NOT NULL, `namespace` INTEGER NOT NULL, `displayTitle` TEXT NOT NULL, `description` TEXT NOT NULL, `thumbUrl` TEXT NOT NULL, PRIMARY KEY(`apiTitle`, `lang`, `namespace`))"

    .line 92
    .line 93
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'b6c7b5a53187eaa550798555db600785\')"

    .line 100
    .line 101
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_0
    const-string p0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 106
    .line 107
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 111
    .line 112
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 116
    .line 117
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x\'\', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 121
    .line 122
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 126
    .line 127
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 131
    .line 132
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 136
    .line 137
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 141
    .line 142
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string p0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 146
    .line 147
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 151
    .line 152
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 156
    .line 157
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 161
    .line 162
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string p0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 166
    .line 167
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'08b926448d86528e697981ddd30459f7\')"

    .line 174
    .line 175
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
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
    const-string p0, "DROP TABLE IF EXISTS `HistoryEntry`"

    .line 10
    .line 11
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "DROP TABLE IF EXISTS `PageImage`"

    .line 15
    .line 16
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "DROP TABLE IF EXISTS `RecentSearch`"

    .line 20
    .line 21
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "DROP TABLE IF EXISTS `TalkPageSeen`"

    .line 25
    .line 26
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "DROP TABLE IF EXISTS `EditSummary`"

    .line 30
    .line 31
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "DROP TABLE IF EXISTS `OfflineObject`"

    .line 35
    .line 36
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "DROP TABLE IF EXISTS `ReadingList`"

    .line 40
    .line 41
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "DROP TABLE IF EXISTS `ReadingListPage`"

    .line 45
    .line 46
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "DROP TABLE IF EXISTS `Notification`"

    .line 50
    .line 51
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "DROP TABLE IF EXISTS `TalkTemplate`"

    .line 55
    .line 56
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "DROP TABLE IF EXISTS `Category`"

    .line 60
    .line 61
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "DROP TABLE IF EXISTS `DailyGameHistory`"

    .line 65
    .line 66
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "DROP TABLE IF EXISTS `RecommendedPage`"

    .line 70
    .line 71
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p0, "DROP TABLE IF EXISTS `InterestTopic`"

    .line 75
    .line 76
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p0, "DROP TABLE IF EXISTS `InterestArticle`"

    .line 80
    .line 81
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_0
    const-string p0, "DROP TABLE IF EXISTS `Dependency`"

    .line 86
    .line 87
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string p0, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 91
    .line 92
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string p0, "DROP TABLE IF EXISTS `WorkTag`"

    .line 96
    .line 97
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 101
    .line 102
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string p0, "DROP TABLE IF EXISTS `WorkName`"

    .line 106
    .line 107
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p0, "DROP TABLE IF EXISTS `WorkProgress`"

    .line 111
    .line 112
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string p0, "DROP TABLE IF EXISTS `Preference`"

    .line 116
    .line 117
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
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
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/database/AppDatabase_Impl;

    .line 12
    .line 13
    sget v0, Lorg/wikipedia/database/AppDatabase_Impl;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    const-string v0, "PRAGMA foreign_keys = ON"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcoil3/util/ContextsKt;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

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
    invoke-static {p1}, Landroidx/work/OperationKt;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    invoke-static {p1}, Landroidx/work/OperationKt;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

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

.method public final onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;
    .locals 26

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
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x1

    .line 22
    const-string v3, "authority"

    .line 23
    .line 24
    const-string v4, "TEXT"

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string v3, "authority"

    .line 32
    .line 33
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x1

    .line 40
    const-string v5, "lang"

    .line 41
    .line 42
    const-string v6, "TEXT"

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const-string v2, "lang"

    .line 50
    .line 51
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    new-instance v5, Landroidx/room/util/TableInfo$Column;

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x1

    .line 58
    const-string v6, "apiTitle"

    .line 59
    .line 60
    const-string v7, "TEXT"

    .line 61
    .line 62
    const/4 v8, 0x1

    .line 63
    const/4 v9, 0x0

    .line 64
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    const-string v3, "apiTitle"

    .line 68
    .line 69
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-instance v6, Landroidx/room/util/TableInfo$Column;

    .line 73
    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v12, 0x1

    .line 76
    const-string v7, "displayTitle"

    .line 77
    .line 78
    const-string v8, "TEXT"

    .line 79
    .line 80
    const/4 v9, 0x1

    .line 81
    const/4 v10, 0x0

    .line 82
    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string v4, "displayTitle"

    .line 86
    .line 87
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    new-instance v7, Landroidx/room/util/TableInfo$Column;

    .line 91
    .line 92
    const/4 v12, 0x0

    .line 93
    const/4 v13, 0x1

    .line 94
    const-string v8, "id"

    .line 95
    .line 96
    const-string v9, "INTEGER"

    .line 97
    .line 98
    const/4 v10, 0x1

    .line 99
    const/4 v11, 0x1

    .line 100
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    const-string v5, "id"

    .line 104
    .line 105
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    new-instance v8, Landroidx/room/util/TableInfo$Column;

    .line 109
    .line 110
    const/4 v13, 0x0

    .line 111
    const/4 v14, 0x1

    .line 112
    const-string v9, "namespace"

    .line 113
    .line 114
    const-string v10, "TEXT"

    .line 115
    .line 116
    const/4 v12, 0x0

    .line 117
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v6, "namespace"

    .line 121
    .line 122
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    new-instance v9, Landroidx/room/util/TableInfo$Column;

    .line 126
    .line 127
    const/4 v14, 0x0

    .line 128
    const/4 v15, 0x1

    .line 129
    const-string v10, "timestamp"

    .line 130
    .line 131
    const-string v11, "INTEGER"

    .line 132
    .line 133
    const/4 v12, 0x1

    .line 134
    const/4 v13, 0x0

    .line 135
    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    const-string v7, "timestamp"

    .line 139
    .line 140
    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    new-instance v10, Landroidx/room/util/TableInfo$Column;

    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    const/16 v16, 0x1

    .line 147
    .line 148
    const-string v11, "source"

    .line 149
    .line 150
    const-string v12, "INTEGER"

    .line 151
    .line 152
    const/4 v13, 0x1

    .line 153
    const/4 v14, 0x0

    .line 154
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    const-string v8, "source"

    .line 158
    .line 159
    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    new-instance v11, Landroidx/room/util/TableInfo$Column;

    .line 163
    .line 164
    const/16 v16, 0x0

    .line 165
    .line 166
    const/16 v17, 0x1

    .line 167
    .line 168
    const-string v12, "prevId"

    .line 169
    .line 170
    const-string v13, "INTEGER"

    .line 171
    .line 172
    const/4 v14, 0x1

    .line 173
    const/4 v15, 0x0

    .line 174
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    const-string v8, "prevId"

    .line 178
    .line 179
    invoke-static {v0, v8, v11}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 184
    .line 185
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v10, Landroidx/room/util/TableInfo$Index;

    .line 189
    .line 190
    filled-new-array {v2, v6, v3}, [Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-static {v11}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    const-string v12, "ASC"

    .line 199
    .line 200
    filled-new-array {v12, v12, v12}, [Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-static {v13}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    const-string v14, "index_HistoryEntry_lang_namespace_apiTitle"

    .line 209
    .line 210
    invoke-direct {v10, v14, v15, v11, v13}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    new-instance v10, Landroidx/room/util/TableInfo;

    .line 217
    .line 218
    const-string v11, "HistoryEntry"

    .line 219
    .line 220
    invoke-direct {v10, v11, v0, v8, v9}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v11}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v10, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    const-string v9, "\n Found:\n"

    .line 232
    .line 233
    if-nez v8, :cond_0

    .line 234
    .line 235
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 236
    .line 237
    const-string v2, "HistoryEntry(org.wikipedia.history.HistoryEntry).\n Expected:\n"

    .line 238
    .line 239
    invoke-static {v2, v10, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-direct {v1, v0, v15}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 251
    .line 252
    .line 253
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 254
    .line 255
    const/16 v21, 0x0

    .line 256
    .line 257
    const/16 v22, 0x1

    .line 258
    .line 259
    const-string v17, "lang"

    .line 260
    .line 261
    const-string v18, "TEXT"

    .line 262
    .line 263
    const/16 v19, 0x1

    .line 264
    .line 265
    const/16 v20, 0x1

    .line 266
    .line 267
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v8, v16

    .line 271
    .line 272
    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 276
    .line 277
    const-string v17, "namespace"

    .line 278
    .line 279
    const-string v18, "TEXT"

    .line 280
    .line 281
    const/16 v20, 0x2

    .line 282
    .line 283
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v8, v16

    .line 287
    .line 288
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 292
    .line 293
    const-string v17, "apiTitle"

    .line 294
    .line 295
    const-string v18, "TEXT"

    .line 296
    .line 297
    const/16 v20, 0x3

    .line 298
    .line 299
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    move-object/from16 v8, v16

    .line 303
    .line 304
    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 308
    .line 309
    const-string v17, "imageName"

    .line 310
    .line 311
    const-string v18, "TEXT"

    .line 312
    .line 313
    const/16 v19, 0x0

    .line 314
    .line 315
    const/16 v20, 0x0

    .line 316
    .line 317
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    move-object/from16 v8, v16

    .line 321
    .line 322
    const-string v10, "imageName"

    .line 323
    .line 324
    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 328
    .line 329
    const-string v17, "description"

    .line 330
    .line 331
    const-string v18, "TEXT"

    .line 332
    .line 333
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v8, v16

    .line 337
    .line 338
    const-string v10, "description"

    .line 339
    .line 340
    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 344
    .line 345
    const-string v17, "timeSpentSec"

    .line 346
    .line 347
    const-string v18, "INTEGER"

    .line 348
    .line 349
    const/16 v19, 0x1

    .line 350
    .line 351
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v8, v16

    .line 355
    .line 356
    const-string v11, "timeSpentSec"

    .line 357
    .line 358
    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 362
    .line 363
    const-string v17, "geoLat"

    .line 364
    .line 365
    const-string v18, "REAL"

    .line 366
    .line 367
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 368
    .line 369
    .line 370
    move-object/from16 v8, v16

    .line 371
    .line 372
    const-string v11, "geoLat"

    .line 373
    .line 374
    invoke-interface {v0, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 378
    .line 379
    const-string v17, "geoLon"

    .line 380
    .line 381
    const-string v18, "REAL"

    .line 382
    .line 383
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v8, v16

    .line 387
    .line 388
    const-string v11, "geoLon"

    .line 389
    .line 390
    invoke-static {v0, v11, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 395
    .line 396
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 397
    .line 398
    .line 399
    new-instance v13, Landroidx/room/util/TableInfo$Index;

    .line 400
    .line 401
    filled-new-array {v2, v6, v3}, [Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v14

    .line 405
    invoke-static {v14}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object v14

    .line 409
    filled-new-array {v12, v12, v12}, [Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v12

    .line 413
    invoke-static {v12}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 414
    .line 415
    .line 416
    move-result-object v12

    .line 417
    move-object/from16 p0, v3

    .line 418
    .line 419
    const-string v3, "index_PageImage_lang_namespace_apiTitle"

    .line 420
    .line 421
    invoke-direct {v13, v3, v15, v14, v12}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 422
    .line 423
    .line 424
    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    new-instance v3, Landroidx/room/util/TableInfo;

    .line 428
    .line 429
    const-string v12, "PageImage"

    .line 430
    .line 431
    invoke-direct {v3, v12, v0, v8, v11}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v1, v12}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v3, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-nez v8, :cond_1

    .line 443
    .line 444
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 445
    .line 446
    const-string v2, "PageImage(org.wikipedia.pageimages.db.PageImage).\n Expected:\n"

    .line 447
    .line 448
    invoke-static {v2, v3, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-direct {v1, v0, v15}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 458
    .line 459
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 460
    .line 461
    .line 462
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 463
    .line 464
    const/16 v21, 0x0

    .line 465
    .line 466
    const/16 v22, 0x1

    .line 467
    .line 468
    const-string v17, "text"

    .line 469
    .line 470
    const-string v18, "TEXT"

    .line 471
    .line 472
    const/16 v19, 0x1

    .line 473
    .line 474
    const/16 v20, 0x1

    .line 475
    .line 476
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 477
    .line 478
    .line 479
    move-object/from16 v3, v16

    .line 480
    .line 481
    const-string v8, "text"

    .line 482
    .line 483
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 487
    .line 488
    const-string v17, "timestamp"

    .line 489
    .line 490
    const-string v18, "INTEGER"

    .line 491
    .line 492
    const/16 v20, 0x0

    .line 493
    .line 494
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    move-object/from16 v3, v16

    .line 498
    .line 499
    invoke-static {v0, v7, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 504
    .line 505
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 506
    .line 507
    .line 508
    new-instance v11, Landroidx/room/util/TableInfo;

    .line 509
    .line 510
    const-string v12, "RecentSearch"

    .line 511
    .line 512
    invoke-direct {v11, v12, v0, v3, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v1, v12}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v11, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-nez v3, :cond_2

    .line 524
    .line 525
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 526
    .line 527
    const-string v2, "RecentSearch(org.wikipedia.search.db.RecentSearch).\n Expected:\n"

    .line 528
    .line 529
    invoke-static {v2, v11, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-direct {v1, v0, v15}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 534
    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 539
    .line 540
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 541
    .line 542
    .line 543
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 544
    .line 545
    const/16 v21, 0x0

    .line 546
    .line 547
    const/16 v22, 0x1

    .line 548
    .line 549
    const-string v17, "sha"

    .line 550
    .line 551
    const-string v18, "TEXT"

    .line 552
    .line 553
    const/16 v19, 0x1

    .line 554
    .line 555
    const/16 v20, 0x1

    .line 556
    .line 557
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 558
    .line 559
    .line 560
    move-object/from16 v3, v16

    .line 561
    .line 562
    const-string v8, "sha"

    .line 563
    .line 564
    invoke-static {v0, v8, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 569
    .line 570
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 571
    .line 572
    .line 573
    new-instance v11, Landroidx/room/util/TableInfo;

    .line 574
    .line 575
    const-string v12, "TalkPageSeen"

    .line 576
    .line 577
    invoke-direct {v11, v12, v0, v3, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 578
    .line 579
    .line 580
    invoke-static {v1, v12}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v11, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-nez v3, :cond_3

    .line 589
    .line 590
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 591
    .line 592
    const-string v2, "TalkPageSeen(org.wikipedia.talk.db.TalkPageSeen).\n Expected:\n"

    .line 593
    .line 594
    invoke-static {v2, v11, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-direct {v1, v0, v15}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_0

    .line 602
    .line 603
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 604
    .line 605
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 606
    .line 607
    .line 608
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 609
    .line 610
    const/16 v21, 0x0

    .line 611
    .line 612
    const/16 v22, 0x1

    .line 613
    .line 614
    const-string v17, "summary"

    .line 615
    .line 616
    const-string v18, "TEXT"

    .line 617
    .line 618
    const/16 v19, 0x1

    .line 619
    .line 620
    const/16 v20, 0x1

    .line 621
    .line 622
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 623
    .line 624
    .line 625
    move-object/from16 v3, v16

    .line 626
    .line 627
    const-string v8, "summary"

    .line 628
    .line 629
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 633
    .line 634
    const-string v17, "lastUsed"

    .line 635
    .line 636
    const-string v18, "INTEGER"

    .line 637
    .line 638
    const/16 v20, 0x0

    .line 639
    .line 640
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 641
    .line 642
    .line 643
    move-object/from16 v3, v16

    .line 644
    .line 645
    const-string v8, "lastUsed"

    .line 646
    .line 647
    invoke-static {v0, v8, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 652
    .line 653
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 654
    .line 655
    .line 656
    new-instance v11, Landroidx/room/util/TableInfo;

    .line 657
    .line 658
    const-string v12, "EditSummary"

    .line 659
    .line 660
    invoke-direct {v11, v12, v0, v3, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 661
    .line 662
    .line 663
    invoke-static {v1, v12}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {v11, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    if-nez v3, :cond_4

    .line 672
    .line 673
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 674
    .line 675
    const-string v2, "EditSummary(org.wikipedia.edit.db.EditSummary).\n Expected:\n"

    .line 676
    .line 677
    invoke-static {v2, v11, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-direct {v1, v0, v15}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 682
    .line 683
    .line 684
    goto/16 :goto_0

    .line 685
    .line 686
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 687
    .line 688
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 689
    .line 690
    .line 691
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 692
    .line 693
    const/16 v21, 0x0

    .line 694
    .line 695
    const/16 v22, 0x1

    .line 696
    .line 697
    const-string v17, "id"

    .line 698
    .line 699
    const-string v18, "INTEGER"

    .line 700
    .line 701
    const/16 v19, 0x1

    .line 702
    .line 703
    const/16 v20, 0x1

    .line 704
    .line 705
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 706
    .line 707
    .line 708
    move-object/from16 v3, v16

    .line 709
    .line 710
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 714
    .line 715
    const-string/jumbo v17, "url"

    .line 716
    .line 717
    .line 718
    const-string v18, "TEXT"

    .line 719
    .line 720
    const/16 v20, 0x0

    .line 721
    .line 722
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 723
    .line 724
    .line 725
    move-object/from16 v3, v16

    .line 726
    .line 727
    const-string/jumbo v8, "url"

    .line 728
    .line 729
    .line 730
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 734
    .line 735
    const-string v17, "lang"

    .line 736
    .line 737
    const-string v18, "TEXT"

    .line 738
    .line 739
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 740
    .line 741
    .line 742
    move-object/from16 v3, v16

    .line 743
    .line 744
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 748
    .line 749
    const-string v17, "path"

    .line 750
    .line 751
    const-string v18, "TEXT"

    .line 752
    .line 753
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 754
    .line 755
    .line 756
    move-object/from16 v3, v16

    .line 757
    .line 758
    const-string v8, "path"

    .line 759
    .line 760
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 764
    .line 765
    const-string v17, "status"

    .line 766
    .line 767
    const-string v18, "INTEGER"

    .line 768
    .line 769
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 770
    .line 771
    .line 772
    move-object/from16 v3, v16

    .line 773
    .line 774
    const-string v8, "status"

    .line 775
    .line 776
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 780
    .line 781
    const-string/jumbo v17, "usedByStr"

    .line 782
    .line 783
    .line 784
    const-string v18, "TEXT"

    .line 785
    .line 786
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 787
    .line 788
    .line 789
    move-object/from16 v3, v16

    .line 790
    .line 791
    const-string/jumbo v11, "usedByStr"

    .line 792
    .line 793
    .line 794
    invoke-static {v0, v11, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 795
    .line 796
    .line 797
    move-result-object v3

    .line 798
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 799
    .line 800
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 801
    .line 802
    .line 803
    new-instance v12, Landroidx/room/util/TableInfo;

    .line 804
    .line 805
    const-string v13, "OfflineObject"

    .line 806
    .line 807
    invoke-direct {v12, v13, v0, v3, v11}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 808
    .line 809
    .line 810
    invoke-static {v1, v13}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    invoke-virtual {v12, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    if-nez v3, :cond_5

    .line 819
    .line 820
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 821
    .line 822
    const-string v2, "OfflineObject(org.wikipedia.offline.db.OfflineObject).\n Expected:\n"

    .line 823
    .line 824
    invoke-static {v2, v12, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-direct {v1, v0, v15}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_0

    .line 832
    .line 833
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 834
    .line 835
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 836
    .line 837
    .line 838
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 839
    .line 840
    const/16 v21, 0x0

    .line 841
    .line 842
    const/16 v22, 0x1

    .line 843
    .line 844
    const-string v17, "listTitle"

    .line 845
    .line 846
    const-string v18, "TEXT"

    .line 847
    .line 848
    const/16 v19, 0x1

    .line 849
    .line 850
    const/16 v20, 0x0

    .line 851
    .line 852
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 853
    .line 854
    .line 855
    move-object/from16 v3, v16

    .line 856
    .line 857
    const-string v11, "listTitle"

    .line 858
    .line 859
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 863
    .line 864
    const-string v17, "description"

    .line 865
    .line 866
    const-string v18, "TEXT"

    .line 867
    .line 868
    const/16 v19, 0x0

    .line 869
    .line 870
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 871
    .line 872
    .line 873
    move-object/from16 v3, v16

    .line 874
    .line 875
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 879
    .line 880
    const-string v17, "mtime"

    .line 881
    .line 882
    const-string v18, "INTEGER"

    .line 883
    .line 884
    const/16 v19, 0x1

    .line 885
    .line 886
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 887
    .line 888
    .line 889
    move-object/from16 v3, v16

    .line 890
    .line 891
    const-string v11, "mtime"

    .line 892
    .line 893
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 897
    .line 898
    const-string v17, "atime"

    .line 899
    .line 900
    const-string v18, "INTEGER"

    .line 901
    .line 902
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 903
    .line 904
    .line 905
    move-object/from16 v3, v16

    .line 906
    .line 907
    const-string v12, "atime"

    .line 908
    .line 909
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 913
    .line 914
    const-string v17, "id"

    .line 915
    .line 916
    const-string v18, "INTEGER"

    .line 917
    .line 918
    const/16 v20, 0x1

    .line 919
    .line 920
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 921
    .line 922
    .line 923
    move-object/from16 v3, v16

    .line 924
    .line 925
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 929
    .line 930
    const-string v17, "sizeBytes"

    .line 931
    .line 932
    const-string v18, "INTEGER"

    .line 933
    .line 934
    const/16 v20, 0x0

    .line 935
    .line 936
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 937
    .line 938
    .line 939
    move-object/from16 v3, v16

    .line 940
    .line 941
    const-string v13, "sizeBytes"

    .line 942
    .line 943
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 947
    .line 948
    const-string v17, "dirty"

    .line 949
    .line 950
    const-string v18, "INTEGER"

    .line 951
    .line 952
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 953
    .line 954
    .line 955
    move-object/from16 v3, v16

    .line 956
    .line 957
    const-string v14, "dirty"

    .line 958
    .line 959
    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 963
    .line 964
    const-string v17, "remoteId"

    .line 965
    .line 966
    const-string v18, "INTEGER"

    .line 967
    .line 968
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 969
    .line 970
    .line 971
    move-object/from16 v3, v16

    .line 972
    .line 973
    const-string v14, "remoteId"

    .line 974
    .line 975
    invoke-static {v0, v14, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    new-instance v15, Ljava/util/LinkedHashSet;

    .line 980
    .line 981
    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 982
    .line 983
    .line 984
    move-object/from16 v17, v7

    .line 985
    .line 986
    new-instance v7, Landroidx/room/util/TableInfo;

    .line 987
    .line 988
    move-object/from16 v18, v14

    .line 989
    .line 990
    const-string v14, "ReadingList"

    .line 991
    .line 992
    invoke-direct {v7, v14, v0, v3, v15}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 993
    .line 994
    .line 995
    invoke-static {v1, v14}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-virtual {v7, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v3

    .line 1003
    if-nez v3, :cond_6

    .line 1004
    .line 1005
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1006
    .line 1007
    const-string v2, "ReadingList(org.wikipedia.readinglist.database.ReadingList).\n Expected:\n"

    .line 1008
    .line 1009
    invoke-static {v2, v7, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    const/4 v2, 0x0

    .line 1014
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1015
    .line 1016
    .line 1017
    goto/16 :goto_0

    .line 1018
    .line 1019
    :cond_6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1020
    .line 1021
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1022
    .line 1023
    .line 1024
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1025
    .line 1026
    const/16 v24, 0x0

    .line 1027
    .line 1028
    const/16 v25, 0x1

    .line 1029
    .line 1030
    const/16 v22, 0x1

    .line 1031
    .line 1032
    const/16 v23, 0x0

    .line 1033
    .line 1034
    const-string/jumbo v20, "wiki"

    .line 1035
    .line 1036
    .line 1037
    const-string v21, "TEXT"

    .line 1038
    .line 1039
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1040
    .line 1041
    .line 1042
    move-object/from16 v3, v19

    .line 1043
    .line 1044
    const-string/jumbo v7, "wiki"

    .line 1045
    .line 1046
    .line 1047
    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1051
    .line 1052
    const-string v20, "namespace"

    .line 1053
    .line 1054
    const-string v21, "INTEGER"

    .line 1055
    .line 1056
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1057
    .line 1058
    .line 1059
    move-object/from16 v3, v19

    .line 1060
    .line 1061
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1065
    .line 1066
    const-string v20, "displayTitle"

    .line 1067
    .line 1068
    const-string v21, "TEXT"

    .line 1069
    .line 1070
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1071
    .line 1072
    .line 1073
    move-object/from16 v3, v19

    .line 1074
    .line 1075
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1079
    .line 1080
    const-string v20, "apiTitle"

    .line 1081
    .line 1082
    const-string v21, "TEXT"

    .line 1083
    .line 1084
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1085
    .line 1086
    .line 1087
    move-object/from16 v14, p0

    .line 1088
    .line 1089
    move-object/from16 v3, v19

    .line 1090
    .line 1091
    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1095
    .line 1096
    const/16 v22, 0x0

    .line 1097
    .line 1098
    const-string v20, "description"

    .line 1099
    .line 1100
    const-string v21, "TEXT"

    .line 1101
    .line 1102
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1103
    .line 1104
    .line 1105
    move-object/from16 v3, v19

    .line 1106
    .line 1107
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1111
    .line 1112
    const-string v20, "thumbUrl"

    .line 1113
    .line 1114
    const-string v21, "TEXT"

    .line 1115
    .line 1116
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1117
    .line 1118
    .line 1119
    move-object/from16 v3, v19

    .line 1120
    .line 1121
    const-string v15, "thumbUrl"

    .line 1122
    .line 1123
    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1127
    .line 1128
    const/16 v22, 0x1

    .line 1129
    .line 1130
    const-string v20, "listId"

    .line 1131
    .line 1132
    const-string v21, "INTEGER"

    .line 1133
    .line 1134
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1135
    .line 1136
    .line 1137
    move-object/from16 p0, v15

    .line 1138
    .line 1139
    move-object/from16 v3, v19

    .line 1140
    .line 1141
    const-string v15, "listId"

    .line 1142
    .line 1143
    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1147
    .line 1148
    const/16 v23, 0x1

    .line 1149
    .line 1150
    const-string v20, "id"

    .line 1151
    .line 1152
    const-string v21, "INTEGER"

    .line 1153
    .line 1154
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1155
    .line 1156
    .line 1157
    move-object/from16 v3, v19

    .line 1158
    .line 1159
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1163
    .line 1164
    const/16 v23, 0x0

    .line 1165
    .line 1166
    const-string v20, "mtime"

    .line 1167
    .line 1168
    const-string v21, "INTEGER"

    .line 1169
    .line 1170
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1171
    .line 1172
    .line 1173
    move-object/from16 v3, v19

    .line 1174
    .line 1175
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1179
    .line 1180
    const-string v20, "atime"

    .line 1181
    .line 1182
    const-string v21, "INTEGER"

    .line 1183
    .line 1184
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1185
    .line 1186
    .line 1187
    move-object/from16 v3, v19

    .line 1188
    .line 1189
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    .line 1191
    .line 1192
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1193
    .line 1194
    const-string v20, "offline"

    .line 1195
    .line 1196
    const-string v21, "INTEGER"

    .line 1197
    .line 1198
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1199
    .line 1200
    .line 1201
    move-object/from16 v3, v19

    .line 1202
    .line 1203
    const-string v11, "offline"

    .line 1204
    .line 1205
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1209
    .line 1210
    const-string v20, "status"

    .line 1211
    .line 1212
    const-string v21, "INTEGER"

    .line 1213
    .line 1214
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1215
    .line 1216
    .line 1217
    move-object/from16 v3, v19

    .line 1218
    .line 1219
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    .line 1221
    .line 1222
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1223
    .line 1224
    const-string v20, "sizeBytes"

    .line 1225
    .line 1226
    const-string v21, "INTEGER"

    .line 1227
    .line 1228
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1229
    .line 1230
    .line 1231
    move-object/from16 v3, v19

    .line 1232
    .line 1233
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1237
    .line 1238
    const-string v20, "lang"

    .line 1239
    .line 1240
    const-string v21, "TEXT"

    .line 1241
    .line 1242
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1243
    .line 1244
    .line 1245
    move-object/from16 v3, v19

    .line 1246
    .line 1247
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1251
    .line 1252
    const-string v20, "revId"

    .line 1253
    .line 1254
    const-string v21, "INTEGER"

    .line 1255
    .line 1256
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1257
    .line 1258
    .line 1259
    move-object/from16 v3, v19

    .line 1260
    .line 1261
    const-string v11, "revId"

    .line 1262
    .line 1263
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1267
    .line 1268
    const-string v20, "remoteId"

    .line 1269
    .line 1270
    const-string v21, "INTEGER"

    .line 1271
    .line 1272
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1273
    .line 1274
    .line 1275
    move-object/from16 v11, v18

    .line 1276
    .line 1277
    move-object/from16 v3, v19

    .line 1278
    .line 1279
    invoke-static {v0, v11, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 1284
    .line 1285
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1286
    .line 1287
    .line 1288
    new-instance v12, Landroidx/room/util/TableInfo;

    .line 1289
    .line 1290
    const-string v13, "ReadingListPage"

    .line 1291
    .line 1292
    invoke-direct {v12, v13, v0, v3, v11}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1293
    .line 1294
    .line 1295
    invoke-static {v1, v13}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v0

    .line 1299
    invoke-virtual {v12, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1300
    .line 1301
    .line 1302
    move-result v3

    .line 1303
    if-nez v3, :cond_7

    .line 1304
    .line 1305
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1306
    .line 1307
    const-string v2, "ReadingListPage(org.wikipedia.readinglist.database.ReadingListPage).\n Expected:\n"

    .line 1308
    .line 1309
    invoke-static {v2, v12, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v0

    .line 1313
    const/4 v2, 0x0

    .line 1314
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1315
    .line 1316
    .line 1317
    goto/16 :goto_0

    .line 1318
    .line 1319
    :cond_7
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1320
    .line 1321
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1322
    .line 1323
    .line 1324
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1325
    .line 1326
    const/16 v23, 0x0

    .line 1327
    .line 1328
    const/16 v24, 0x1

    .line 1329
    .line 1330
    const-string v19, "id"

    .line 1331
    .line 1332
    const-string v20, "INTEGER"

    .line 1333
    .line 1334
    const/16 v21, 0x1

    .line 1335
    .line 1336
    const/16 v22, 0x1

    .line 1337
    .line 1338
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1339
    .line 1340
    .line 1341
    move-object/from16 v3, v18

    .line 1342
    .line 1343
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1347
    .line 1348
    const-string/jumbo v19, "wiki"

    .line 1349
    .line 1350
    .line 1351
    const-string v20, "TEXT"

    .line 1352
    .line 1353
    const/16 v22, 0x2

    .line 1354
    .line 1355
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1356
    .line 1357
    .line 1358
    move-object/from16 v3, v18

    .line 1359
    .line 1360
    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1364
    .line 1365
    const-string v19, "read"

    .line 1366
    .line 1367
    const-string v20, "TEXT"

    .line 1368
    .line 1369
    const/16 v21, 0x0

    .line 1370
    .line 1371
    const/16 v22, 0x0

    .line 1372
    .line 1373
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1374
    .line 1375
    .line 1376
    move-object/from16 v3, v18

    .line 1377
    .line 1378
    const-string v11, "read"

    .line 1379
    .line 1380
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1384
    .line 1385
    const-string v19, "category"

    .line 1386
    .line 1387
    const-string v20, "TEXT"

    .line 1388
    .line 1389
    const/16 v21, 0x1

    .line 1390
    .line 1391
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1392
    .line 1393
    .line 1394
    move-object/from16 v3, v18

    .line 1395
    .line 1396
    const-string v11, "category"

    .line 1397
    .line 1398
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1402
    .line 1403
    const-string/jumbo v19, "type"

    .line 1404
    .line 1405
    .line 1406
    const-string v20, "TEXT"

    .line 1407
    .line 1408
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1409
    .line 1410
    .line 1411
    move-object/from16 v3, v18

    .line 1412
    .line 1413
    const-string/jumbo v11, "type"

    .line 1414
    .line 1415
    .line 1416
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1420
    .line 1421
    const-string v19, "revid"

    .line 1422
    .line 1423
    const-string v20, "INTEGER"

    .line 1424
    .line 1425
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1426
    .line 1427
    .line 1428
    move-object/from16 v3, v18

    .line 1429
    .line 1430
    const-string v12, "revid"

    .line 1431
    .line 1432
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1436
    .line 1437
    const-string v19, "title"

    .line 1438
    .line 1439
    const-string v20, "TEXT"

    .line 1440
    .line 1441
    const/16 v21, 0x0

    .line 1442
    .line 1443
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1444
    .line 1445
    .line 1446
    move-object/from16 v3, v18

    .line 1447
    .line 1448
    const-string v12, "title"

    .line 1449
    .line 1450
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1454
    .line 1455
    const-string v19, "agent"

    .line 1456
    .line 1457
    const-string v20, "TEXT"

    .line 1458
    .line 1459
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1460
    .line 1461
    .line 1462
    move-object/from16 v3, v18

    .line 1463
    .line 1464
    const-string v13, "agent"

    .line 1465
    .line 1466
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    .line 1468
    .line 1469
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 1470
    .line 1471
    const-string v19, "timestamp"

    .line 1472
    .line 1473
    const-string v20, "TEXT"

    .line 1474
    .line 1475
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1476
    .line 1477
    .line 1478
    move-object/from16 v13, v17

    .line 1479
    .line 1480
    move-object/from16 v3, v18

    .line 1481
    .line 1482
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 1486
    .line 1487
    const/16 v22, 0x0

    .line 1488
    .line 1489
    const/16 v23, 0x1

    .line 1490
    .line 1491
    const-string v18, "contents"

    .line 1492
    .line 1493
    const-string v19, "TEXT"

    .line 1494
    .line 1495
    const/16 v20, 0x0

    .line 1496
    .line 1497
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1498
    .line 1499
    .line 1500
    move-object/from16 v3, v17

    .line 1501
    .line 1502
    const-string v15, "contents"

    .line 1503
    .line 1504
    invoke-static {v0, v15, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v3

    .line 1508
    new-instance v15, Ljava/util/LinkedHashSet;

    .line 1509
    .line 1510
    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1511
    .line 1512
    .line 1513
    move-object/from16 v17, v10

    .line 1514
    .line 1515
    new-instance v10, Landroidx/room/util/TableInfo;

    .line 1516
    .line 1517
    move-object/from16 v18, v4

    .line 1518
    .line 1519
    const-string v4, "Notification"

    .line 1520
    .line 1521
    invoke-direct {v10, v4, v0, v3, v15}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1522
    .line 1523
    .line 1524
    invoke-static {v1, v4}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    invoke-virtual {v10, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1529
    .line 1530
    .line 1531
    move-result v3

    .line 1532
    if-nez v3, :cond_8

    .line 1533
    .line 1534
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1535
    .line 1536
    const-string v2, "Notification(org.wikipedia.notifications.db.Notification).\n Expected:\n"

    .line 1537
    .line 1538
    invoke-static {v2, v10, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v0

    .line 1542
    const/4 v2, 0x0

    .line 1543
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1544
    .line 1545
    .line 1546
    goto/16 :goto_0

    .line 1547
    .line 1548
    :cond_8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1549
    .line 1550
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1551
    .line 1552
    .line 1553
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1554
    .line 1555
    const/16 v24, 0x0

    .line 1556
    .line 1557
    const/16 v25, 0x1

    .line 1558
    .line 1559
    const-string v20, "id"

    .line 1560
    .line 1561
    const-string v21, "INTEGER"

    .line 1562
    .line 1563
    const/16 v22, 0x1

    .line 1564
    .line 1565
    const/16 v23, 0x1

    .line 1566
    .line 1567
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1568
    .line 1569
    .line 1570
    move-object/from16 v3, v19

    .line 1571
    .line 1572
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1576
    .line 1577
    const-string/jumbo v20, "type"

    .line 1578
    .line 1579
    .line 1580
    const-string v21, "INTEGER"

    .line 1581
    .line 1582
    const/16 v23, 0x0

    .line 1583
    .line 1584
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1585
    .line 1586
    .line 1587
    move-object/from16 v3, v19

    .line 1588
    .line 1589
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1593
    .line 1594
    const-string v20, "order"

    .line 1595
    .line 1596
    const-string v21, "INTEGER"

    .line 1597
    .line 1598
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1599
    .line 1600
    .line 1601
    move-object/from16 v3, v19

    .line 1602
    .line 1603
    const-string v4, "order"

    .line 1604
    .line 1605
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    .line 1607
    .line 1608
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1609
    .line 1610
    const-string v20, "title"

    .line 1611
    .line 1612
    const-string v21, "TEXT"

    .line 1613
    .line 1614
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1615
    .line 1616
    .line 1617
    move-object/from16 v3, v19

    .line 1618
    .line 1619
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    .line 1621
    .line 1622
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1623
    .line 1624
    const-string v20, "subject"

    .line 1625
    .line 1626
    const-string v21, "TEXT"

    .line 1627
    .line 1628
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1629
    .line 1630
    .line 1631
    move-object/from16 v3, v19

    .line 1632
    .line 1633
    const-string v4, "subject"

    .line 1634
    .line 1635
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    .line 1637
    .line 1638
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1639
    .line 1640
    const-string v20, "message"

    .line 1641
    .line 1642
    const-string v21, "TEXT"

    .line 1643
    .line 1644
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1645
    .line 1646
    .line 1647
    move-object/from16 v3, v19

    .line 1648
    .line 1649
    const-string v4, "message"

    .line 1650
    .line 1651
    invoke-static {v0, v4, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v3

    .line 1655
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1656
    .line 1657
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1658
    .line 1659
    .line 1660
    new-instance v10, Landroidx/room/util/TableInfo;

    .line 1661
    .line 1662
    const-string v11, "TalkTemplate"

    .line 1663
    .line 1664
    invoke-direct {v10, v11, v0, v3, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1665
    .line 1666
    .line 1667
    invoke-static {v1, v11}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v0

    .line 1671
    invoke-virtual {v10, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v3

    .line 1675
    if-nez v3, :cond_9

    .line 1676
    .line 1677
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1678
    .line 1679
    const-string v2, "TalkTemplate(org.wikipedia.talk.db.TalkTemplate).\n Expected:\n"

    .line 1680
    .line 1681
    invoke-static {v2, v10, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v0

    .line 1685
    const/4 v2, 0x0

    .line 1686
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1687
    .line 1688
    .line 1689
    goto/16 :goto_0

    .line 1690
    .line 1691
    :cond_9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1692
    .line 1693
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1694
    .line 1695
    .line 1696
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1697
    .line 1698
    const/16 v24, 0x0

    .line 1699
    .line 1700
    const/16 v25, 0x1

    .line 1701
    .line 1702
    const-string/jumbo v20, "year"

    .line 1703
    .line 1704
    .line 1705
    const-string v21, "INTEGER"

    .line 1706
    .line 1707
    const/16 v22, 0x1

    .line 1708
    .line 1709
    const/16 v23, 0x1

    .line 1710
    .line 1711
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1712
    .line 1713
    .line 1714
    move-object/from16 v3, v19

    .line 1715
    .line 1716
    const-string/jumbo v4, "year"

    .line 1717
    .line 1718
    .line 1719
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    .line 1721
    .line 1722
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1723
    .line 1724
    const-string v20, "month"

    .line 1725
    .line 1726
    const-string v21, "INTEGER"

    .line 1727
    .line 1728
    const/16 v23, 0x2

    .line 1729
    .line 1730
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1731
    .line 1732
    .line 1733
    move-object/from16 v3, v19

    .line 1734
    .line 1735
    const-string v10, "month"

    .line 1736
    .line 1737
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    .line 1739
    .line 1740
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1741
    .line 1742
    const-string v20, "title"

    .line 1743
    .line 1744
    const-string v21, "TEXT"

    .line 1745
    .line 1746
    const/16 v23, 0x3

    .line 1747
    .line 1748
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1749
    .line 1750
    .line 1751
    move-object/from16 v3, v19

    .line 1752
    .line 1753
    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1757
    .line 1758
    const-string v20, "lang"

    .line 1759
    .line 1760
    const-string v21, "TEXT"

    .line 1761
    .line 1762
    const/16 v23, 0x4

    .line 1763
    .line 1764
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1765
    .line 1766
    .line 1767
    move-object/from16 v3, v19

    .line 1768
    .line 1769
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    .line 1771
    .line 1772
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1773
    .line 1774
    const-string v20, "count"

    .line 1775
    .line 1776
    const-string v21, "INTEGER"

    .line 1777
    .line 1778
    const/16 v23, 0x0

    .line 1779
    .line 1780
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1781
    .line 1782
    .line 1783
    move-object/from16 v3, v19

    .line 1784
    .line 1785
    const-string v11, "count"

    .line 1786
    .line 1787
    invoke-static {v0, v11, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v3

    .line 1791
    new-instance v11, Ljava/util/LinkedHashSet;

    .line 1792
    .line 1793
    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1794
    .line 1795
    .line 1796
    new-instance v12, Landroidx/room/util/TableInfo;

    .line 1797
    .line 1798
    const-string v15, "Category"

    .line 1799
    .line 1800
    invoke-direct {v12, v15, v0, v3, v11}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1801
    .line 1802
    .line 1803
    invoke-static {v1, v15}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v0

    .line 1807
    invoke-virtual {v12, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1808
    .line 1809
    .line 1810
    move-result v3

    .line 1811
    if-nez v3, :cond_a

    .line 1812
    .line 1813
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 1814
    .line 1815
    const-string v2, "Category(org.wikipedia.categories.db.Category).\n Expected:\n"

    .line 1816
    .line 1817
    invoke-static {v2, v12, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v0

    .line 1821
    const/4 v2, 0x0

    .line 1822
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 1823
    .line 1824
    .line 1825
    goto/16 :goto_0

    .line 1826
    .line 1827
    :cond_a
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 1828
    .line 1829
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1830
    .line 1831
    .line 1832
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1833
    .line 1834
    const/16 v24, 0x0

    .line 1835
    .line 1836
    const/16 v25, 0x1

    .line 1837
    .line 1838
    const/16 v22, 0x1

    .line 1839
    .line 1840
    const/16 v23, 0x1

    .line 1841
    .line 1842
    const-string v20, "id"

    .line 1843
    .line 1844
    const-string v21, "INTEGER"

    .line 1845
    .line 1846
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1847
    .line 1848
    .line 1849
    move-object/from16 v3, v19

    .line 1850
    .line 1851
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    .line 1853
    .line 1854
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1855
    .line 1856
    const/16 v23, 0x0

    .line 1857
    .line 1858
    const-string v20, "gameName"

    .line 1859
    .line 1860
    const-string v21, "INTEGER"

    .line 1861
    .line 1862
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1863
    .line 1864
    .line 1865
    move-object/from16 v3, v19

    .line 1866
    .line 1867
    const-string v11, "gameName"

    .line 1868
    .line 1869
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1873
    .line 1874
    const-string v20, "language"

    .line 1875
    .line 1876
    const-string v21, "TEXT"

    .line 1877
    .line 1878
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1879
    .line 1880
    .line 1881
    move-object/from16 v3, v19

    .line 1882
    .line 1883
    const-string v11, "language"

    .line 1884
    .line 1885
    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    .line 1887
    .line 1888
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1889
    .line 1890
    const-string/jumbo v20, "year"

    .line 1891
    .line 1892
    .line 1893
    const-string v21, "INTEGER"

    .line 1894
    .line 1895
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1896
    .line 1897
    .line 1898
    move-object/from16 v3, v19

    .line 1899
    .line 1900
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    .line 1902
    .line 1903
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1904
    .line 1905
    const-string v20, "month"

    .line 1906
    .line 1907
    const-string v21, "INTEGER"

    .line 1908
    .line 1909
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1910
    .line 1911
    .line 1912
    move-object/from16 v3, v19

    .line 1913
    .line 1914
    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    .line 1916
    .line 1917
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1918
    .line 1919
    const-string v20, "day"

    .line 1920
    .line 1921
    const-string v21, "INTEGER"

    .line 1922
    .line 1923
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1924
    .line 1925
    .line 1926
    move-object/from16 v3, v19

    .line 1927
    .line 1928
    const-string v4, "day"

    .line 1929
    .line 1930
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    .line 1932
    .line 1933
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1934
    .line 1935
    const-string v20, "score"

    .line 1936
    .line 1937
    const-string v21, "INTEGER"

    .line 1938
    .line 1939
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1940
    .line 1941
    .line 1942
    move-object/from16 v3, v19

    .line 1943
    .line 1944
    const-string v4, "score"

    .line 1945
    .line 1946
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    .line 1948
    .line 1949
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1950
    .line 1951
    const-string v20, "playType"

    .line 1952
    .line 1953
    const-string v21, "INTEGER"

    .line 1954
    .line 1955
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1956
    .line 1957
    .line 1958
    move-object/from16 v3, v19

    .line 1959
    .line 1960
    const-string v4, "playType"

    .line 1961
    .line 1962
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    .line 1964
    .line 1965
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1966
    .line 1967
    const/16 v22, 0x0

    .line 1968
    .line 1969
    const-string v20, "gameData"

    .line 1970
    .line 1971
    const-string v21, "TEXT"

    .line 1972
    .line 1973
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1974
    .line 1975
    .line 1976
    move-object/from16 v3, v19

    .line 1977
    .line 1978
    const-string v4, "gameData"

    .line 1979
    .line 1980
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    .line 1982
    .line 1983
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 1984
    .line 1985
    const/16 v22, 0x1

    .line 1986
    .line 1987
    const-string v20, "status"

    .line 1988
    .line 1989
    const-string v21, "INTEGER"

    .line 1990
    .line 1991
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1992
    .line 1993
    .line 1994
    move-object/from16 v3, v19

    .line 1995
    .line 1996
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    .line 1998
    .line 1999
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 2000
    .line 2001
    const-string v20, "currentQuestionIndex"

    .line 2002
    .line 2003
    const-string v21, "INTEGER"

    .line 2004
    .line 2005
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2006
    .line 2007
    .line 2008
    move-object/from16 v3, v19

    .line 2009
    .line 2010
    const-string v4, "currentQuestionIndex"

    .line 2011
    .line 2012
    invoke-static {v0, v4, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v3

    .line 2016
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 2017
    .line 2018
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2019
    .line 2020
    .line 2021
    new-instance v10, Landroidx/room/util/TableInfo;

    .line 2022
    .line 2023
    const-string v11, "DailyGameHistory"

    .line 2024
    .line 2025
    invoke-direct {v10, v11, v0, v3, v4}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 2026
    .line 2027
    .line 2028
    invoke-static {v1, v11}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v0

    .line 2032
    invoke-virtual {v10, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 2033
    .line 2034
    .line 2035
    move-result v3

    .line 2036
    if-nez v3, :cond_b

    .line 2037
    .line 2038
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 2039
    .line 2040
    const-string v2, "DailyGameHistory(org.wikipedia.games.db.DailyGameHistory).\n Expected:\n"

    .line 2041
    .line 2042
    invoke-static {v2, v10, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v0

    .line 2046
    const/4 v2, 0x0

    .line 2047
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 2048
    .line 2049
    .line 2050
    goto/16 :goto_0

    .line 2051
    .line 2052
    :cond_b
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2053
    .line 2054
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2055
    .line 2056
    .line 2057
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 2058
    .line 2059
    const/16 v24, 0x0

    .line 2060
    .line 2061
    const/16 v25, 0x1

    .line 2062
    .line 2063
    const-string v20, "id"

    .line 2064
    .line 2065
    const-string v21, "INTEGER"

    .line 2066
    .line 2067
    const/16 v22, 0x1

    .line 2068
    .line 2069
    const/16 v23, 0x1

    .line 2070
    .line 2071
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2072
    .line 2073
    .line 2074
    move-object/from16 v3, v19

    .line 2075
    .line 2076
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    .line 2078
    .line 2079
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 2080
    .line 2081
    const-string/jumbo v20, "wiki"

    .line 2082
    .line 2083
    .line 2084
    const-string v21, "TEXT"

    .line 2085
    .line 2086
    const/16 v23, 0x0

    .line 2087
    .line 2088
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2089
    .line 2090
    .line 2091
    move-object/from16 v3, v19

    .line 2092
    .line 2093
    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    .line 2095
    .line 2096
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 2097
    .line 2098
    const-string v20, "lang"

    .line 2099
    .line 2100
    const-string v21, "TEXT"

    .line 2101
    .line 2102
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2103
    .line 2104
    .line 2105
    move-object/from16 v3, v19

    .line 2106
    .line 2107
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    .line 2109
    .line 2110
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 2111
    .line 2112
    const-string v20, "namespace"

    .line 2113
    .line 2114
    const-string v21, "INTEGER"

    .line 2115
    .line 2116
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2117
    .line 2118
    .line 2119
    move-object/from16 v3, v19

    .line 2120
    .line 2121
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    .line 2123
    .line 2124
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 2125
    .line 2126
    const-string v20, "timestamp"

    .line 2127
    .line 2128
    const-string v21, "INTEGER"

    .line 2129
    .line 2130
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2131
    .line 2132
    .line 2133
    move-object/from16 v3, v19

    .line 2134
    .line 2135
    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    .line 2137
    .line 2138
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 2139
    .line 2140
    const-string v20, "apiTitle"

    .line 2141
    .line 2142
    const-string v21, "TEXT"

    .line 2143
    .line 2144
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2145
    .line 2146
    .line 2147
    move-object/from16 v3, v19

    .line 2148
    .line 2149
    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    .line 2151
    .line 2152
    new-instance v19, Landroidx/room/util/TableInfo$Column;

    .line 2153
    .line 2154
    const-string v20, "displayTitle"

    .line 2155
    .line 2156
    const-string v21, "TEXT"

    .line 2157
    .line 2158
    invoke-direct/range {v19 .. v25}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2159
    .line 2160
    .line 2161
    move-object/from16 v4, v18

    .line 2162
    .line 2163
    move-object/from16 v3, v19

    .line 2164
    .line 2165
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    .line 2167
    .line 2168
    new-instance v18, Landroidx/room/util/TableInfo$Column;

    .line 2169
    .line 2170
    const/16 v23, 0x0

    .line 2171
    .line 2172
    const/16 v24, 0x1

    .line 2173
    .line 2174
    const-string v19, "description"

    .line 2175
    .line 2176
    const-string v20, "TEXT"

    .line 2177
    .line 2178
    const/16 v21, 0x0

    .line 2179
    .line 2180
    const/16 v22, 0x0

    .line 2181
    .line 2182
    invoke-direct/range {v18 .. v24}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2183
    .line 2184
    .line 2185
    move-object/from16 v5, v17

    .line 2186
    .line 2187
    move-object/from16 v3, v18

    .line 2188
    .line 2189
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    .line 2191
    .line 2192
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2193
    .line 2194
    const/16 v22, 0x0

    .line 2195
    .line 2196
    const/16 v23, 0x1

    .line 2197
    .line 2198
    const-string v18, "thumbUrl"

    .line 2199
    .line 2200
    const-string v19, "TEXT"

    .line 2201
    .line 2202
    const/16 v20, 0x0

    .line 2203
    .line 2204
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2205
    .line 2206
    .line 2207
    move-object/from16 v7, p0

    .line 2208
    .line 2209
    move-object/from16 v3, v17

    .line 2210
    .line 2211
    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    .line 2213
    .line 2214
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2215
    .line 2216
    const-string v18, "status"

    .line 2217
    .line 2218
    const-string v19, "INTEGER"

    .line 2219
    .line 2220
    const/16 v20, 0x1

    .line 2221
    .line 2222
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2223
    .line 2224
    .line 2225
    move-object/from16 v3, v17

    .line 2226
    .line 2227
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    .line 2229
    .line 2230
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2231
    .line 2232
    const-string v18, "extract"

    .line 2233
    .line 2234
    const-string v19, "TEXT"

    .line 2235
    .line 2236
    const/16 v20, 0x0

    .line 2237
    .line 2238
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2239
    .line 2240
    .line 2241
    move-object/from16 v3, v17

    .line 2242
    .line 2243
    const-string v8, "extract"

    .line 2244
    .line 2245
    invoke-static {v0, v8, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v3

    .line 2249
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 2250
    .line 2251
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2252
    .line 2253
    .line 2254
    new-instance v10, Landroidx/room/util/TableInfo;

    .line 2255
    .line 2256
    const-string v11, "RecommendedPage"

    .line 2257
    .line 2258
    invoke-direct {v10, v11, v0, v3, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 2259
    .line 2260
    .line 2261
    invoke-static {v1, v11}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v0

    .line 2265
    invoke-virtual {v10, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 2266
    .line 2267
    .line 2268
    move-result v3

    .line 2269
    if-nez v3, :cond_c

    .line 2270
    .line 2271
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 2272
    .line 2273
    const-string v2, "RecommendedPage(org.wikipedia.readinglist.database.RecommendedPage).\n Expected:\n"

    .line 2274
    .line 2275
    invoke-static {v2, v10, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v0

    .line 2279
    const/4 v2, 0x0

    .line 2280
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 2281
    .line 2282
    .line 2283
    goto/16 :goto_0

    .line 2284
    .line 2285
    :cond_c
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2286
    .line 2287
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2288
    .line 2289
    .line 2290
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2291
    .line 2292
    const/16 v22, 0x0

    .line 2293
    .line 2294
    const/16 v23, 0x1

    .line 2295
    .line 2296
    const-string/jumbo v18, "topicId"

    .line 2297
    .line 2298
    .line 2299
    const-string v19, "TEXT"

    .line 2300
    .line 2301
    const/16 v20, 0x1

    .line 2302
    .line 2303
    const/16 v21, 0x1

    .line 2304
    .line 2305
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2306
    .line 2307
    .line 2308
    move-object/from16 v3, v17

    .line 2309
    .line 2310
    const-string/jumbo v8, "topicId"

    .line 2311
    .line 2312
    .line 2313
    invoke-static {v0, v8, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v3

    .line 2317
    new-instance v8, Ljava/util/LinkedHashSet;

    .line 2318
    .line 2319
    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2320
    .line 2321
    .line 2322
    new-instance v10, Landroidx/room/util/TableInfo;

    .line 2323
    .line 2324
    const-string v11, "InterestTopic"

    .line 2325
    .line 2326
    invoke-direct {v10, v11, v0, v3, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 2327
    .line 2328
    .line 2329
    invoke-static {v1, v11}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v0

    .line 2333
    invoke-virtual {v10, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 2334
    .line 2335
    .line 2336
    move-result v3

    .line 2337
    if-nez v3, :cond_d

    .line 2338
    .line 2339
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 2340
    .line 2341
    const-string v2, "InterestTopic(org.wikipedia.feed.personalization.db.entity.InterestTopic).\n Expected:\n"

    .line 2342
    .line 2343
    invoke-static {v2, v10, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 2344
    .line 2345
    .line 2346
    move-result-object v0

    .line 2347
    const/4 v2, 0x0

    .line 2348
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 2349
    .line 2350
    .line 2351
    goto/16 :goto_0

    .line 2352
    .line 2353
    :cond_d
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2354
    .line 2355
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2356
    .line 2357
    .line 2358
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2359
    .line 2360
    const/16 v22, 0x0

    .line 2361
    .line 2362
    const/16 v23, 0x1

    .line 2363
    .line 2364
    const-string v18, "apiTitle"

    .line 2365
    .line 2366
    const-string v19, "TEXT"

    .line 2367
    .line 2368
    const/16 v20, 0x1

    .line 2369
    .line 2370
    const/16 v21, 0x1

    .line 2371
    .line 2372
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2373
    .line 2374
    .line 2375
    move-object/from16 v3, v17

    .line 2376
    .line 2377
    invoke-interface {v0, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    .line 2379
    .line 2380
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2381
    .line 2382
    const-string v18, "lang"

    .line 2383
    .line 2384
    const-string v19, "TEXT"

    .line 2385
    .line 2386
    const/16 v21, 0x2

    .line 2387
    .line 2388
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2389
    .line 2390
    .line 2391
    move-object/from16 v3, v17

    .line 2392
    .line 2393
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    .line 2395
    .line 2396
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2397
    .line 2398
    const-string v18, "namespace"

    .line 2399
    .line 2400
    const-string v19, "INTEGER"

    .line 2401
    .line 2402
    const/16 v21, 0x3

    .line 2403
    .line 2404
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2405
    .line 2406
    .line 2407
    move-object/from16 v2, v17

    .line 2408
    .line 2409
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    .line 2411
    .line 2412
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2413
    .line 2414
    const-string v18, "displayTitle"

    .line 2415
    .line 2416
    const-string v19, "TEXT"

    .line 2417
    .line 2418
    const/16 v21, 0x0

    .line 2419
    .line 2420
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2421
    .line 2422
    .line 2423
    move-object/from16 v2, v17

    .line 2424
    .line 2425
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2426
    .line 2427
    .line 2428
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2429
    .line 2430
    const-string v18, "description"

    .line 2431
    .line 2432
    const-string v19, "TEXT"

    .line 2433
    .line 2434
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2435
    .line 2436
    .line 2437
    move-object/from16 v2, v17

    .line 2438
    .line 2439
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    .line 2441
    .line 2442
    new-instance v17, Landroidx/room/util/TableInfo$Column;

    .line 2443
    .line 2444
    const-string v18, "thumbUrl"

    .line 2445
    .line 2446
    const-string v19, "TEXT"

    .line 2447
    .line 2448
    invoke-direct/range {v17 .. v23}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 2449
    .line 2450
    .line 2451
    move-object/from16 v2, v17

    .line 2452
    .line 2453
    invoke-static {v0, v7, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/util/LinkedHashMap;Ljava/lang/String;Landroidx/room/util/TableInfo$Column;)Ljava/util/LinkedHashSet;

    .line 2454
    .line 2455
    .line 2456
    move-result-object v2

    .line 2457
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 2458
    .line 2459
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2460
    .line 2461
    .line 2462
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 2463
    .line 2464
    const-string v5, "InterestArticle"

    .line 2465
    .line 2466
    invoke-direct {v4, v5, v0, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 2467
    .line 2468
    .line 2469
    invoke-static {v1, v5}, Lkotlin/text/UStringsKt;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v0

    .line 2473
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 2474
    .line 2475
    .line 2476
    move-result v1

    .line 2477
    if-nez v1, :cond_e

    .line 2478
    .line 2479
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 2480
    .line 2481
    const-string v2, "InterestArticle(org.wikipedia.feed.personalization.db.entity.InterestArticle).\n Expected:\n"

    .line 2482
    .line 2483
    invoke-static {v2, v4, v9, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Landroidx/room/util/TableInfo;Ljava/lang/String;Landroidx/room/util/TableInfo;)Ljava/lang/String;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v0

    .line 2487
    const/4 v2, 0x0

    .line 2488
    invoke-direct {v1, v0, v2}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 2489
    .line 2490
    .line 2491
    goto :goto_0

    .line 2492
    :cond_e
    new-instance v1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 2493
    .line 2494
    const/4 v0, 0x1

    .line 2495
    const/4 v2, 0x0

    .line 2496
    invoke-direct {v1, v2, v0}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(Ljava/lang/String;Z)V

    .line 2497
    .line 2498
    .line 2499
    :goto_0
    return-object v1

    .line 2500
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;->onValidateSchema$androidx$work$impl$WorkDatabase_Impl$createOpenDelegate$_openDelegate$1(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 2501
    .line 2502
    .line 2503
    move-result-object v0

    .line 2504
    return-object v0

    .line 2505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
