.class public final Landroidx/sqlite/driver/SupportSQLiteConnection;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/sqlite/SQLiteConnection;


# instance fields
.field public final db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final inTransaction()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->inTransaction()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/sqlite/driver/SupportSQLiteConnection;->db:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1b

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/lit8 v2, v2, -0x2

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    if-gez v2, :cond_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    :goto_0
    if-ge v4, v2, :cond_9

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/16 v6, 0x20

    .line 48
    .line 49
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-gtz v6, :cond_2

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v6, 0x4

    .line 59
    const/16 v7, 0x2d

    .line 60
    .line 61
    if-ne v5, v7, :cond_4

    .line 62
    .line 63
    add-int/lit8 v5, v4, 0x1

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eq v5, v7, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    add-int/lit8 v4, v4, 0x2

    .line 73
    .line 74
    const/16 v5, 0xa

    .line 75
    .line 76
    invoke-static {v5, v4, v6, v0}, Lkotlin/text/StringsKt;->indexOf$default(CIILjava/lang/CharSequence;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-gez v4, :cond_1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    const/16 v7, 0x2f

    .line 84
    .line 85
    if-ne v5, v7, :cond_8

    .line 86
    .line 87
    add-int/lit8 v5, v4, 0x1

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    const/16 v9, 0x2a

    .line 94
    .line 95
    if-eq v8, v9, :cond_5

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    invoke-static {v9, v5, v6, v0}, Lkotlin/text/StringsKt;->indexOf$default(CIILjava/lang/CharSequence;)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-gez v5, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    add-int/lit8 v4, v5, 0x1

    .line 108
    .line 109
    if-ge v4, v2, :cond_7

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-ne v4, v7, :cond_5

    .line 116
    .line 117
    :cond_7
    add-int/lit8 v4, v5, 0x2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_8
    :goto_1
    move v3, v4

    .line 121
    :cond_9
    :goto_2
    if-ltz v3, :cond_b

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-le v3, v2, :cond_a

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_a
    add-int/lit8 v2, v3, 0x3

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    goto :goto_4

    .line 145
    :cond_b
    :goto_3
    move-object v2, v1

    .line 146
    :goto_4
    if-nez v2, :cond_c

    .line 147
    .line 148
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;

    .line 149
    .line 150
    invoke-direct {v0, p0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    sparse-switch v3, :sswitch_data_0

    .line 159
    .line 160
    .line 161
    goto :goto_6

    .line 162
    :sswitch_0
    const-string v3, "ROL"

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_d

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_d
    const-string v3, " TO "

    .line 172
    .line 173
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_e

    .line 178
    .line 179
    :goto_5
    move-object v3, v1

    .line 180
    goto :goto_7

    .line 181
    :cond_e
    sget-object v3, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->ROLLBACK:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 182
    .line 183
    goto :goto_7

    .line 184
    :sswitch_1
    const-string v3, "END"

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-nez v3, :cond_f

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :sswitch_2
    const-string v3, "COM"

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-nez v3, :cond_f

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_f
    sget-object v3, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->END:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 203
    .line 204
    goto :goto_7

    .line 205
    :sswitch_3
    const-string v3, "BEG"

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-nez v3, :cond_10

    .line 212
    .line 213
    :goto_6
    goto :goto_5

    .line 214
    :cond_10
    const-string v3, "EXCLUSIVE"

    .line 215
    .line 216
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_11

    .line 221
    .line 222
    sget-object v3, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_EXCLUSIVE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_11
    const-string v3, "IMMEDIATE"

    .line 226
    .line 227
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_12

    .line 232
    .line 233
    sget-object v3, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_IMMEDIATE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_12
    sget-object v3, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;->BEGIN_DEFERRED:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 237
    .line 238
    :goto_7
    if-eqz v3, :cond_13

    .line 239
    .line 240
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;

    .line 241
    .line 242
    invoke-direct {v0, p0, p1, v3}, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;)V

    .line 243
    .line 244
    .line 245
    return-object v0

    .line 246
    :cond_13
    const-string v3, "PRA"

    .line 247
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_14

    .line 253
    .line 254
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 255
    .line 256
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    const-string v4, "journal_mode"

    .line 264
    .line 265
    const-string v5, ""

    .line 266
    .line 267
    invoke-static {v0, v4, v5}, Lkotlin/text/StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const-string v4, "="

    .line 272
    .line 273
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_14

    .line 278
    .line 279
    sget-object v1, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;->INSTANCE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;

    .line 280
    .line 281
    :cond_14
    if-eqz v1, :cond_15

    .line 282
    .line 283
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;

    .line 284
    .line 285
    new-instance v1, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    .line 286
    .line 287
    invoke-direct {v1, p0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-direct {v0, p0, p1, v1}, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;)V

    .line 291
    .line 292
    .line 293
    return-object v0

    .line 294
    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    const v1, 0x1367f

    .line 299
    .line 300
    .line 301
    if-eq v0, v1, :cond_18

    .line 302
    .line 303
    const v1, 0x1403a

    .line 304
    .line 305
    .line 306
    if-eq v0, v1, :cond_17

    .line 307
    .line 308
    const v1, 0x14fc2

    .line 309
    .line 310
    .line 311
    if-eq v0, v1, :cond_16

    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_16
    const-string v0, "WIT"

    .line 315
    .line 316
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-nez v0, :cond_19

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_17
    const-string v0, "SEL"

    .line 324
    .line 325
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-nez v0, :cond_19

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_1a

    .line 337
    .line 338
    :cond_19
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;

    .line 339
    .line 340
    invoke-direct {v0, p0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    return-object v0

    .line 344
    :cond_1a
    :goto_8
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;

    .line 345
    .line 346
    invoke-direct {v0, p0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-object v0

    .line 350
    :cond_1b
    const/16 p0, 0x15

    .line 351
    .line 352
    const-string p1, "connection is closed"

    .line 353
    .line 354
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v1

    .line 358
    nop

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x10064 -> :sswitch_3
        0x10561 -> :sswitch_2
        0x10cbb -> :sswitch_1
        0x13daf -> :sswitch_0
    .end sparse-switch
.end method
