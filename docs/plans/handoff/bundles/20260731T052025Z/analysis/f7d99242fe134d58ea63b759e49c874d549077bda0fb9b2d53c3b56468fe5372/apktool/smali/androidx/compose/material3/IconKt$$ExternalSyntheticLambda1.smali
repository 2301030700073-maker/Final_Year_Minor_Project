.class public final synthetic Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 79

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    iget-object v0, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v0, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :pswitch_0
    move-object/from16 v1, p1

    .line 33
    .line 34
    check-cast v1, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1, v0, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :pswitch_1
    move-object/from16 v1, p1

    .line 51
    .line 52
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/AppVersion;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v1, v1, Lapp/k9mail/feature/settings/import/ui/AppVersion;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :pswitch_2
    move-object/from16 v1, p1

    .line 69
    .line 70
    check-cast v1, Lkotlin/Pair;

    .line 71
    .line 72
    sget v2, Lapp/k9mail/feature/migration/provider/SettingsProvider;->$r8$clinit:I

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object v1, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 78
    .line 79
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :pswitch_3
    move-object/from16 v1, p1

    .line 89
    .line 90
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const-string v2, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    .line 96
    .line 97
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :try_start_0
    invoke-interface {v1, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_0

    .line 114
    .line 115
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto :goto_1

    .line 125
    :cond_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :pswitch_4
    move-object/from16 v1, p1

    .line 134
    .line 135
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    const-string v2, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 141
    .line 142
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :try_start_1
    invoke-interface {v1, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    :goto_2
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_1

    .line 159
    .line 160
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 165
    .line 166
    .line 167
    move-result-wide v6

    .line 168
    long-to-int v3, v6

    .line 169
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    new-instance v6, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v2, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 182
    .line 183
    iput-object v3, v6, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 184
    .line 185
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catchall_1
    move-exception v0

    .line 190
    goto :goto_3

    .line 191
    :cond_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 192
    .line 193
    .line 194
    return-object v0

    .line 195
    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :pswitch_5
    move-object/from16 v1, p1

    .line 200
    .line 201
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    const-string v2, "DELETE FROM workspec WHERE id=?"

    .line 207
    .line 208
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    :try_start_2
    invoke-interface {v1, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    .line 217
    .line 218
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 219
    .line 220
    .line 221
    return-object v3

    .line 222
    :catchall_2
    move-exception v0

    .line 223
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :pswitch_6
    move-object/from16 v1, p1

    .line 228
    .line 229
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    const-string v2, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    .line 235
    .line 236
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    :try_start_3
    invoke-interface {v2, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 244
    .line 245
    .line 246
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 247
    .line 248
    .line 249
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 250
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 251
    .line 252
    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    return-object v0

    .line 258
    :catchall_3
    move-exception v0

    .line 259
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :pswitch_7
    move-object/from16 v1, p1

    .line 264
    .line 265
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    const-string v2, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 271
    .line 272
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    :try_start_4
    invoke-interface {v1, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .line 283
    .line 284
    :goto_4
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_2

    .line 289
    .line 290
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    sget-object v3, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 295
    .line 296
    invoke-static {v2}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :catchall_4
    move-exception v0

    .line 305
    goto :goto_5

    .line 306
    :cond_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 307
    .line 308
    .line 309
    return-object v0

    .line 310
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :pswitch_8
    move-object/from16 v1, p1

    .line 315
    .line 316
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    const-string v2, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    .line 322
    .line 323
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    :try_start_5
    invoke-interface {v1, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 331
    .line 332
    .line 333
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 334
    .line 335
    .line 336
    return-object v3

    .line 337
    :catchall_5
    move-exception v0

    .line 338
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 339
    .line 340
    .line 341
    throw v0

    .line 342
    :pswitch_9
    move-object/from16 v1, p1

    .line 343
    .line 344
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    const-string v2, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    .line 350
    .line 351
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    :try_start_6
    invoke-interface {v2, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 359
    .line 360
    .line 361
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 362
    .line 363
    .line 364
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 365
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 366
    .line 367
    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    return-object v0

    .line 373
    :catchall_6
    move-exception v0

    .line 374
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :pswitch_a
    move-object/from16 v1, p1

    .line 379
    .line 380
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 381
    .line 382
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    const-string v2, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    .line 386
    .line 387
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    :try_start_7
    invoke-interface {v2, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 392
    .line 393
    .line 394
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 395
    .line 396
    .line 397
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 398
    .line 399
    .line 400
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 401
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 402
    .line 403
    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    return-object v0

    .line 409
    :catchall_7
    move-exception v0

    .line 410
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 411
    .line 412
    .line 413
    throw v0

    .line 414
    :pswitch_b
    move-object/from16 v1, p1

    .line 415
    .line 416
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    const-string v2, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 422
    .line 423
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    :try_start_8
    invoke-interface {v1, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 428
    .line 429
    .line 430
    new-instance v0, Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .line 434
    .line 435
    :goto_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_3

    .line 440
    .line 441
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 446
    .line 447
    .line 448
    goto :goto_6

    .line 449
    :catchall_8
    move-exception v0

    .line 450
    goto :goto_7

    .line 451
    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 452
    .line 453
    .line 454
    return-object v0

    .line 455
    :goto_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 456
    .line 457
    .line 458
    throw v0

    .line 459
    :pswitch_c
    move-object/from16 v1, p1

    .line 460
    .line 461
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    const-string v3, "SELECT state FROM workspec WHERE id=?"

    .line 467
    .line 468
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    :try_start_9
    invoke-interface {v1, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 473
    .line 474
    .line 475
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-eqz v0, :cond_5

    .line 480
    .line 481
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-eqz v0, :cond_4

    .line 486
    .line 487
    const/4 v0, 0x0

    .line 488
    goto :goto_8

    .line 489
    :cond_4
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 490
    .line 491
    .line 492
    move-result-wide v3

    .line 493
    long-to-int v0, v3

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    :goto_8
    if-nez v0, :cond_6

    .line 499
    .line 500
    :cond_5
    const/4 v2, 0x0

    .line 501
    goto :goto_9

    .line 502
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 507
    .line 508
    .line 509
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 510
    goto :goto_9

    .line 511
    :catchall_9
    move-exception v0

    .line 512
    goto :goto_a

    .line 513
    :goto_9
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 514
    .line 515
    .line 516
    return-object v2

    .line 517
    :goto_a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 518
    .line 519
    .line 520
    throw v0

    .line 521
    :pswitch_d
    move-object/from16 v1, p1

    .line 522
    .line 523
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    const-string v3, "SELECT * FROM workspec WHERE id=?"

    .line 529
    .line 530
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    :try_start_a
    invoke-interface {v1, v0, v5}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    const-string v0, "id"

    .line 538
    .line 539
    invoke-static {v1, v0}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    const-string v3, "state"

    .line 544
    .line 545
    invoke-static {v1, v3}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    const-string/jumbo v6, "worker_class_name"

    .line 550
    .line 551
    .line 552
    invoke-static {v1, v6}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    move-result v6

    .line 556
    const-string v7, "input_merger_class_name"

    .line 557
    .line 558
    invoke-static {v1, v7}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    const-string v8, "input"

    .line 563
    .line 564
    invoke-static {v1, v8}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    move-result v8

    .line 568
    const-string v9, "output"

    .line 569
    .line 570
    invoke-static {v1, v9}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    const-string v10, "initial_delay"

    .line 575
    .line 576
    invoke-static {v1, v10}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    move-result v10

    .line 580
    const-string v11, "interval_duration"

    .line 581
    .line 582
    invoke-static {v1, v11}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    move-result v11

    .line 586
    const-string v12, "flex_duration"

    .line 587
    .line 588
    invoke-static {v1, v12}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    move-result v12

    .line 592
    const-string v13, "run_attempt_count"

    .line 593
    .line 594
    invoke-static {v1, v13}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    move-result v13

    .line 598
    const-string v14, "backoff_policy"

    .line 599
    .line 600
    invoke-static {v1, v14}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    move-result v14

    .line 604
    const-string v15, "backoff_delay_duration"

    .line 605
    .line 606
    invoke-static {v1, v15}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    move-result v15

    .line 610
    const-string v2, "last_enqueue_time"

    .line 611
    .line 612
    invoke-static {v1, v2}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    const-string v4, "minimum_retention_duration"

    .line 617
    .line 618
    invoke-static {v1, v4}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    const-string v5, "schedule_requested_at"

    .line 623
    .line 624
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    move-result v5

    .line 628
    move/from16 p0, v5

    .line 629
    .line 630
    const-string v5, "run_in_foreground"

    .line 631
    .line 632
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 633
    .line 634
    .line 635
    move-result v5

    .line 636
    move/from16 p1, v5

    .line 637
    .line 638
    const-string v5, "out_of_quota_policy"

    .line 639
    .line 640
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    move/from16 v16, v5

    .line 645
    .line 646
    const-string v5, "period_count"

    .line 647
    .line 648
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    move/from16 v17, v5

    .line 653
    .line 654
    const-string v5, "generation"

    .line 655
    .line 656
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    move-result v5

    .line 660
    move/from16 v18, v5

    .line 661
    .line 662
    const-string v5, "next_schedule_time_override"

    .line 663
    .line 664
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    move/from16 v19, v5

    .line 669
    .line 670
    const-string v5, "next_schedule_time_override_generation"

    .line 671
    .line 672
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    move-result v5

    .line 676
    move/from16 v20, v5

    .line 677
    .line 678
    const-string v5, "stop_reason"

    .line 679
    .line 680
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    move/from16 v21, v5

    .line 685
    .line 686
    const-string v5, "trace_tag"

    .line 687
    .line 688
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 689
    .line 690
    .line 691
    move-result v5

    .line 692
    move/from16 v22, v5

    .line 693
    .line 694
    const-string v5, "backoff_on_system_interruptions"

    .line 695
    .line 696
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    move/from16 v23, v5

    .line 701
    .line 702
    const-string v5, "required_network_type"

    .line 703
    .line 704
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    move/from16 v24, v5

    .line 709
    .line 710
    const-string v5, "required_network_request"

    .line 711
    .line 712
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 713
    .line 714
    .line 715
    move-result v5

    .line 716
    move/from16 v25, v5

    .line 717
    .line 718
    const-string v5, "requires_charging"

    .line 719
    .line 720
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    move-result v5

    .line 724
    move/from16 v26, v5

    .line 725
    .line 726
    const-string v5, "requires_device_idle"

    .line 727
    .line 728
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 729
    .line 730
    .line 731
    move-result v5

    .line 732
    move/from16 v27, v5

    .line 733
    .line 734
    const-string v5, "requires_battery_not_low"

    .line 735
    .line 736
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    move/from16 v28, v5

    .line 741
    .line 742
    const-string v5, "requires_storage_not_low"

    .line 743
    .line 744
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 745
    .line 746
    .line 747
    move-result v5

    .line 748
    move/from16 v29, v5

    .line 749
    .line 750
    const-string v5, "trigger_content_update_delay"

    .line 751
    .line 752
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    move-result v5

    .line 756
    move/from16 v30, v5

    .line 757
    .line 758
    const-string v5, "trigger_max_content_delay"

    .line 759
    .line 760
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    move-result v5

    .line 764
    move/from16 v31, v5

    .line 765
    .line 766
    const-string v5, "content_uri_triggers"

    .line 767
    .line 768
    invoke-static {v1, v5}, Landroidx/appcompat/app/ActionBar;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 769
    .line 770
    .line 771
    move-result v5

    .line 772
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 773
    .line 774
    .line 775
    move-result v32

    .line 776
    if-eqz v32, :cond_10

    .line 777
    .line 778
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v34

    .line 782
    move v0, v4

    .line 783
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 784
    .line 785
    .line 786
    move-result-wide v3

    .line 787
    long-to-int v3, v3

    .line 788
    invoke-static {v3}, Landroidx/sqlite/SQLite;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 789
    .line 790
    .line 791
    move-result-object v35

    .line 792
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v36

    .line 796
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v37

    .line 800
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 801
    .line 802
    .line 803
    move-result-object v3

    .line 804
    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 805
    .line 806
    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 807
    .line 808
    .line 809
    move-result-object v38

    .line 810
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    .line 815
    .line 816
    .line 817
    move-result-object v39

    .line 818
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 819
    .line 820
    .line 821
    move-result-wide v40

    .line 822
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 823
    .line 824
    .line 825
    move-result-wide v42

    .line 826
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 827
    .line 828
    .line 829
    move-result-wide v44

    .line 830
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 831
    .line 832
    .line 833
    move-result-wide v3

    .line 834
    long-to-int v3, v3

    .line 835
    invoke-interface {v1, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 836
    .line 837
    .line 838
    move-result-wide v6

    .line 839
    long-to-int v4, v6

    .line 840
    invoke-static {v4}, Landroidx/sqlite/SQLite;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 841
    .line 842
    .line 843
    move-result-object v48

    .line 844
    invoke-interface {v1, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 845
    .line 846
    .line 847
    move-result-wide v49

    .line 848
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 849
    .line 850
    .line 851
    move-result-wide v51

    .line 852
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 853
    .line 854
    .line 855
    move-result-wide v53

    .line 856
    move/from16 v0, p0

    .line 857
    .line 858
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 859
    .line 860
    .line 861
    move-result-wide v55

    .line 862
    move/from16 v0, p1

    .line 863
    .line 864
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 865
    .line 866
    .line 867
    move-result-wide v6

    .line 868
    long-to-int v0, v6

    .line 869
    if-eqz v0, :cond_7

    .line 870
    .line 871
    const/16 v57, 0x1

    .line 872
    .line 873
    :goto_b
    move/from16 v0, v16

    .line 874
    .line 875
    goto :goto_c

    .line 876
    :cond_7
    const/16 v57, 0x0

    .line 877
    .line 878
    goto :goto_b

    .line 879
    :goto_c
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 880
    .line 881
    .line 882
    move-result-wide v6

    .line 883
    long-to-int v0, v6

    .line 884
    invoke-static {v0}, Landroidx/sqlite/SQLite;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 885
    .line 886
    .line 887
    move-result-object v58

    .line 888
    move/from16 v0, v17

    .line 889
    .line 890
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 891
    .line 892
    .line 893
    move-result-wide v6

    .line 894
    long-to-int v0, v6

    .line 895
    move/from16 v2, v18

    .line 896
    .line 897
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 898
    .line 899
    .line 900
    move-result-wide v6

    .line 901
    long-to-int v2, v6

    .line 902
    move/from16 v4, v19

    .line 903
    .line 904
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 905
    .line 906
    .line 907
    move-result-wide v61

    .line 908
    move/from16 v4, v20

    .line 909
    .line 910
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 911
    .line 912
    .line 913
    move-result-wide v6

    .line 914
    long-to-int v4, v6

    .line 915
    move/from16 v6, v21

    .line 916
    .line 917
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 918
    .line 919
    .line 920
    move-result-wide v6

    .line 921
    long-to-int v6, v6

    .line 922
    move/from16 v7, v22

    .line 923
    .line 924
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 925
    .line 926
    .line 927
    move-result v8

    .line 928
    if-eqz v8, :cond_8

    .line 929
    .line 930
    const/16 v65, 0x0

    .line 931
    .line 932
    :goto_d
    move/from16 v7, v23

    .line 933
    .line 934
    goto :goto_e

    .line 935
    :cond_8
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v7

    .line 939
    move-object/from16 v65, v7

    .line 940
    .line 941
    goto :goto_d

    .line 942
    :goto_e
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 943
    .line 944
    .line 945
    move-result v8

    .line 946
    if-eqz v8, :cond_9

    .line 947
    .line 948
    const/4 v7, 0x0

    .line 949
    goto :goto_f

    .line 950
    :cond_9
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 951
    .line 952
    .line 953
    move-result-wide v7

    .line 954
    long-to-int v7, v7

    .line 955
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 956
    .line 957
    .line 958
    move-result-object v7

    .line 959
    :goto_f
    if-eqz v7, :cond_b

    .line 960
    .line 961
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 962
    .line 963
    .line 964
    move-result v7

    .line 965
    if-eqz v7, :cond_a

    .line 966
    .line 967
    const/4 v7, 0x1

    .line 968
    goto :goto_10

    .line 969
    :cond_a
    const/4 v7, 0x0

    .line 970
    :goto_10
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 971
    .line 972
    .line 973
    move-result-object v7

    .line 974
    move-object/from16 v66, v7

    .line 975
    .line 976
    :goto_11
    move/from16 v7, v24

    .line 977
    .line 978
    goto :goto_12

    .line 979
    :catchall_a
    move-exception v0

    .line 980
    goto/16 :goto_1c

    .line 981
    .line 982
    :cond_b
    const/16 v66, 0x0

    .line 983
    .line 984
    goto :goto_11

    .line 985
    :goto_12
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 986
    .line 987
    .line 988
    move-result-wide v7

    .line 989
    long-to-int v7, v7

    .line 990
    invoke-static {v7}, Landroidx/sqlite/SQLite;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 991
    .line 992
    .line 993
    move-result-object v69

    .line 994
    move/from16 v7, v25

    .line 995
    .line 996
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 997
    .line 998
    .line 999
    move-result-object v7

    .line 1000
    invoke-static {v7}, Landroidx/sqlite/SQLite;->toNetworkRequest$work_runtime_release([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v68

    .line 1004
    move/from16 v7, v26

    .line 1005
    .line 1006
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1007
    .line 1008
    .line 1009
    move-result-wide v7

    .line 1010
    long-to-int v7, v7

    .line 1011
    if-eqz v7, :cond_c

    .line 1012
    .line 1013
    const/16 v70, 0x1

    .line 1014
    .line 1015
    :goto_13
    move/from16 v7, v27

    .line 1016
    .line 1017
    goto :goto_14

    .line 1018
    :cond_c
    const/16 v70, 0x0

    .line 1019
    .line 1020
    goto :goto_13

    .line 1021
    :goto_14
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1022
    .line 1023
    .line 1024
    move-result-wide v7

    .line 1025
    long-to-int v7, v7

    .line 1026
    if-eqz v7, :cond_d

    .line 1027
    .line 1028
    const/16 v71, 0x1

    .line 1029
    .line 1030
    :goto_15
    move/from16 v7, v28

    .line 1031
    .line 1032
    goto :goto_16

    .line 1033
    :cond_d
    const/16 v71, 0x0

    .line 1034
    .line 1035
    goto :goto_15

    .line 1036
    :goto_16
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1037
    .line 1038
    .line 1039
    move-result-wide v7

    .line 1040
    long-to-int v7, v7

    .line 1041
    if-eqz v7, :cond_e

    .line 1042
    .line 1043
    const/16 v72, 0x1

    .line 1044
    .line 1045
    :goto_17
    move/from16 v7, v29

    .line 1046
    .line 1047
    goto :goto_18

    .line 1048
    :cond_e
    const/16 v72, 0x0

    .line 1049
    .line 1050
    goto :goto_17

    .line 1051
    :goto_18
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1052
    .line 1053
    .line 1054
    move-result-wide v7

    .line 1055
    long-to-int v7, v7

    .line 1056
    if-eqz v7, :cond_f

    .line 1057
    .line 1058
    const/16 v73, 0x1

    .line 1059
    .line 1060
    :goto_19
    move/from16 v7, v30

    .line 1061
    .line 1062
    goto :goto_1a

    .line 1063
    :cond_f
    const/16 v73, 0x0

    .line 1064
    .line 1065
    goto :goto_19

    .line 1066
    :goto_1a
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1067
    .line 1068
    .line 1069
    move-result-wide v74

    .line 1070
    move/from16 v7, v31

    .line 1071
    .line 1072
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1073
    .line 1074
    .line 1075
    move-result-wide v76

    .line 1076
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    .line 1077
    .line 1078
    .line 1079
    move-result-object v5

    .line 1080
    invoke-static {v5}, Landroidx/sqlite/SQLite;->byteArrayToSetOfTriggers([B)Ljava/util/LinkedHashSet;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v78

    .line 1084
    new-instance v46, Landroidx/work/Constraints;

    .line 1085
    .line 1086
    move-object/from16 v67, v46

    .line 1087
    .line 1088
    invoke-direct/range {v67 .. v78}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1089
    .line 1090
    .line 1091
    move-object/from16 v46, v67

    .line 1092
    .line 1093
    new-instance v33, Landroidx/work/impl/model/WorkSpec;

    .line 1094
    .line 1095
    move/from16 v59, v0

    .line 1096
    .line 1097
    move/from16 v60, v2

    .line 1098
    .line 1099
    move/from16 v47, v3

    .line 1100
    .line 1101
    move/from16 v63, v4

    .line 1102
    .line 1103
    move/from16 v64, v6

    .line 1104
    .line 1105
    invoke-direct/range {v33 .. v66}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 1106
    .line 1107
    .line 1108
    move-object/from16 v2, v33

    .line 1109
    .line 1110
    goto :goto_1b

    .line 1111
    :cond_10
    const/4 v2, 0x0

    .line 1112
    :goto_1b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1113
    .line 1114
    .line 1115
    return-object v2

    .line 1116
    :goto_1c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1117
    .line 1118
    .line 1119
    throw v0

    .line 1120
    :pswitch_e
    move-object/from16 v1, p1

    .line 1121
    .line 1122
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1123
    .line 1124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1125
    .line 1126
    .line 1127
    const-string v2, "DELETE from WorkProgress where work_spec_id=?"

    .line 1128
    .line 1129
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v1

    .line 1133
    const/4 v2, 0x1

    .line 1134
    :try_start_b
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 1135
    .line 1136
    .line 1137
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 1138
    .line 1139
    .line 1140
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1141
    .line 1142
    .line 1143
    return-object v3

    .line 1144
    :catchall_b
    move-exception v0

    .line 1145
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1146
    .line 1147
    .line 1148
    throw v0

    .line 1149
    :pswitch_f
    move-object/from16 v1, p1

    .line 1150
    .line 1151
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1152
    .line 1153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1154
    .line 1155
    .line 1156
    const-string v2, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 1157
    .line 1158
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    const/4 v2, 0x1

    .line 1163
    :try_start_c
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 1164
    .line 1165
    .line 1166
    new-instance v0, Ljava/util/ArrayList;

    .line 1167
    .line 1168
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .line 1170
    .line 1171
    :goto_1d
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v2

    .line 1175
    if-eqz v2, :cond_11

    .line 1176
    .line 1177
    const/4 v2, 0x0

    .line 1178
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v3

    .line 1182
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 1183
    .line 1184
    .line 1185
    goto :goto_1d

    .line 1186
    :catchall_c
    move-exception v0

    .line 1187
    goto :goto_1e

    .line 1188
    :cond_11
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1189
    .line 1190
    .line 1191
    return-object v0

    .line 1192
    :goto_1e
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1193
    .line 1194
    .line 1195
    throw v0

    .line 1196
    :pswitch_10
    move-object/from16 v1, p1

    .line 1197
    .line 1198
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1199
    .line 1200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    const-string v2, "DELETE FROM SystemIdInfo where work_spec_id=?"

    .line 1204
    .line 1205
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    const/4 v2, 0x1

    .line 1210
    :try_start_d
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 1211
    .line 1212
    .line 1213
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 1214
    .line 1215
    .line 1216
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1217
    .line 1218
    .line 1219
    return-object v3

    .line 1220
    :catchall_d
    move-exception v0

    .line 1221
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1222
    .line 1223
    .line 1224
    throw v0

    .line 1225
    :pswitch_11
    move-object/from16 v1, p1

    .line 1226
    .line 1227
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1228
    .line 1229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1230
    .line 1231
    .line 1232
    const-string v2, "SELECT long_value FROM Preference where `key`=?"

    .line 1233
    .line 1234
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v1

    .line 1238
    const/4 v2, 0x1

    .line 1239
    :try_start_e
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 1240
    .line 1241
    .line 1242
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1243
    .line 1244
    .line 1245
    move-result v0

    .line 1246
    if-eqz v0, :cond_12

    .line 1247
    .line 1248
    const/4 v2, 0x0

    .line 1249
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    if-eqz v0, :cond_13

    .line 1254
    .line 1255
    :cond_12
    const/4 v2, 0x0

    .line 1256
    goto :goto_1f

    .line 1257
    :cond_13
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1258
    .line 1259
    .line 1260
    move-result-wide v2

    .line 1261
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 1265
    goto :goto_1f

    .line 1266
    :catchall_e
    move-exception v0

    .line 1267
    goto :goto_20

    .line 1268
    :goto_1f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1269
    .line 1270
    .line 1271
    return-object v2

    .line 1272
    :goto_20
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1273
    .line 1274
    .line 1275
    throw v0

    .line 1276
    :pswitch_12
    move-object/from16 v1, p1

    .line 1277
    .line 1278
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1279
    .line 1280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1281
    .line 1282
    .line 1283
    const-string v2, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 1284
    .line 1285
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v1

    .line 1289
    const/4 v2, 0x1

    .line 1290
    :try_start_f
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 1291
    .line 1292
    .line 1293
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v0

    .line 1297
    if-eqz v0, :cond_14

    .line 1298
    .line 1299
    const/4 v2, 0x0

    .line 1300
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1301
    .line 1302
    .line 1303
    move-result-wide v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 1304
    long-to-int v0, v3

    .line 1305
    if-eqz v0, :cond_14

    .line 1306
    .line 1307
    const/4 v4, 0x1

    .line 1308
    goto :goto_21

    .line 1309
    :catchall_f
    move-exception v0

    .line 1310
    goto :goto_22

    .line 1311
    :cond_14
    const/4 v4, 0x0

    .line 1312
    :goto_21
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1313
    .line 1314
    .line 1315
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    return-object v0

    .line 1320
    :goto_22
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1321
    .line 1322
    .line 1323
    throw v0

    .line 1324
    :pswitch_13
    move-object/from16 v1, p1

    .line 1325
    .line 1326
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1327
    .line 1328
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1329
    .line 1330
    .line 1331
    const-string v2, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    .line 1332
    .line 1333
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v1

    .line 1337
    const/4 v2, 0x1

    .line 1338
    :try_start_10
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 1339
    .line 1340
    .line 1341
    new-instance v0, Ljava/util/ArrayList;

    .line 1342
    .line 1343
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .line 1345
    .line 1346
    :goto_23
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v2

    .line 1350
    if-eqz v2, :cond_15

    .line 1351
    .line 1352
    const/4 v2, 0x0

    .line 1353
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v3

    .line 1357
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 1358
    .line 1359
    .line 1360
    goto :goto_23

    .line 1361
    :catchall_10
    move-exception v0

    .line 1362
    goto :goto_24

    .line 1363
    :cond_15
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1364
    .line 1365
    .line 1366
    return-object v0

    .line 1367
    :goto_24
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1368
    .line 1369
    .line 1370
    throw v0

    .line 1371
    :pswitch_14
    move-object/from16 v1, p1

    .line 1372
    .line 1373
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 1374
    .line 1375
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1376
    .line 1377
    .line 1378
    const-string v2, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    .line 1379
    .line 1380
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v1

    .line 1384
    const/4 v2, 0x1

    .line 1385
    :try_start_11
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 1386
    .line 1387
    .line 1388
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 1389
    .line 1390
    .line 1391
    move-result v0

    .line 1392
    if-eqz v0, :cond_16

    .line 1393
    .line 1394
    const/4 v2, 0x0

    .line 1395
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 1396
    .line 1397
    .line 1398
    move-result-wide v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 1399
    long-to-int v0, v3

    .line 1400
    if-eqz v0, :cond_17

    .line 1401
    .line 1402
    const/4 v4, 0x1

    .line 1403
    goto :goto_25

    .line 1404
    :catchall_11
    move-exception v0

    .line 1405
    goto :goto_26

    .line 1406
    :cond_16
    const/4 v2, 0x0

    .line 1407
    :cond_17
    move v4, v2

    .line 1408
    :goto_25
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1409
    .line 1410
    .line 1411
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v0

    .line 1415
    return-object v0

    .line 1416
    :goto_26
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 1417
    .line 1418
    .line 1419
    throw v0

    .line 1420
    :pswitch_15
    move-object/from16 v1, p1

    .line 1421
    .line 1422
    check-cast v1, Lkotlin/Pair;

    .line 1423
    .line 1424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1425
    .line 1426
    .line 1427
    iget-object v1, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1428
    .line 1429
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v0

    .line 1433
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v0

    .line 1437
    return-object v0

    .line 1438
    :pswitch_16
    move-object/from16 v1, p1

    .line 1439
    .line 1440
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1441
    .line 1442
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1443
    .line 1444
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1445
    .line 1446
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1447
    .line 1448
    .line 1449
    return-object v3

    .line 1450
    :pswitch_17
    move-object/from16 v1, p1

    .line 1451
    .line 1452
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1453
    .line 1454
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1455
    .line 1456
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1457
    .line 1458
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1459
    .line 1460
    const/4 v5, 0x3

    .line 1461
    aget-object v4, v4, v5

    .line 1462
    .line 1463
    new-instance v4, Landroidx/compose/ui/semantics/LiveRegionMode;

    .line 1464
    .line 1465
    const/4 v5, 0x1

    .line 1466
    invoke-direct {v4, v5}, Landroidx/compose/ui/semantics/LiveRegionMode;-><init>(I)V

    .line 1467
    .line 1468
    .line 1469
    invoke-interface {v1, v2, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1470
    .line 1471
    .line 1472
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    return-object v3

    .line 1476
    :pswitch_18
    move-object/from16 v1, p1

    .line 1477
    .line 1478
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1479
    .line 1480
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 1481
    .line 1482
    .line 1483
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 1484
    .line 1485
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1486
    .line 1487
    const/16 v4, 0xb

    .line 1488
    .line 1489
    aget-object v2, v2, v4

    .line 1490
    .line 1491
    const/4 v2, 0x0

    .line 1492
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v2

    .line 1496
    invoke-interface {v1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 1497
    .line 1498
    .line 1499
    return-object v3

    .line 1500
    :pswitch_19
    move-object/from16 v1, p1

    .line 1501
    .line 1502
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1503
    .line 1504
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    return-object v3

    .line 1508
    :pswitch_1a
    move-object/from16 v1, p1

    .line 1509
    .line 1510
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1511
    .line 1512
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 1513
    .line 1514
    .line 1515
    return-object v3

    .line 1516
    :pswitch_1b
    move-object/from16 v1, p1

    .line 1517
    .line 1518
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 1519
    .line 1520
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    const/4 v0, 0x5

    .line 1524
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 1525
    .line 1526
    .line 1527
    return-object v3

    .line 1528
    nop

    .line 1529
    :pswitch_data_0
    .packed-switch 0x0
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
