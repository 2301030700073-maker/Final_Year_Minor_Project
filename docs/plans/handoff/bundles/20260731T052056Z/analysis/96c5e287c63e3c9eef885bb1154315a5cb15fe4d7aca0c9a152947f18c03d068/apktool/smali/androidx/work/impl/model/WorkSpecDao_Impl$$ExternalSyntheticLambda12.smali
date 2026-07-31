.class public final synthetic Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 12
    iput p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-wide p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$1:J

    iput-object p4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLorg/wikipedia/notifications/db/NotificationDao_Impl;)V
    .locals 0

    .line 1
    const/4 p4, 0x2

    .line 2
    iput p4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$1:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-wide v4, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$1:J

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v6, "SELECT * FROM Notification WHERE `wiki` IN (?) AND `id` IN (?)"

    .line 22
    .line 23
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :try_start_0
    invoke-interface {v1, v3, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v4, v5, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 31
    .line 32
    .line 33
    const-string v0, "id"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string/jumbo v2, "wiki"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-string v3, "read"

    .line 47
    .line 48
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const-string v4, "category"

    .line 53
    .line 54
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const-string/jumbo v5, "type"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const-string v6, "revid"

    .line 66
    .line 67
    invoke-static {v1, v6}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    const-string v7, "title"

    .line 72
    .line 73
    invoke-static {v1, v7}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    const-string v8, "agent"

    .line 78
    .line 79
    invoke-static {v1, v8}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    const-string v9, "timestamp"

    .line 84
    .line 85
    invoke-static {v1, v9}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    const-string v10, "contents"

    .line 90
    .line 91
    invoke-static {v1, v10}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    const/4 v12, 0x0

    .line 100
    if-eqz v11, :cond_5

    .line 101
    .line 102
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v14

    .line 106
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    .line 116
    move-object/from16 v17, v12

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v17, v0

    .line 124
    .line 125
    :goto_0
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v18

    .line 129
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v19

    .line 133
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v20

    .line 137
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    .line 143
    move-object v0, v12

    .line 144
    goto :goto_1

    .line 145
    :cond_1
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_1
    invoke-static {v0}, Lokio/Path$Companion;->stringToTitle(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Title;

    .line 150
    .line 151
    .line 152
    move-result-object v22

    .line 153
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    move-object v0, v12

    .line 160
    goto :goto_2

    .line 161
    :cond_2
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :goto_2
    invoke-static {v0}, Lokio/Path$Companion;->stringToAgent(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Agent;

    .line 166
    .line 167
    .line 168
    move-result-object v23

    .line 169
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_3

    .line 174
    .line 175
    move-object v0, v12

    .line 176
    goto :goto_3

    .line 177
    :cond_3
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    :goto_3
    invoke-static {v0}, Lokio/Path$Companion;->stringToTimestamp(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 182
    .line 183
    .line 184
    move-result-object v24

    .line 185
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_4
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    :goto_4
    invoke-static {v12}, Lokio/Path$Companion;->stringToContents(Ljava/lang/String;)Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 197
    .line 198
    .line 199
    move-result-object v25

    .line 200
    new-instance v13, Lorg/wikipedia/notifications/db/Notification;

    .line 201
    .line 202
    invoke-direct/range {v13 .. v25}, Lorg/wikipedia/notifications/db/Notification;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/wikipedia/notifications/db/Notification$Title;Lorg/wikipedia/notifications/db/Notification$Agent;Lorg/wikipedia/notifications/db/Notification$Timestamp;Lorg/wikipedia/notifications/db/Notification$Contents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .line 204
    .line 205
    move-object v12, v13

    .line 206
    goto :goto_5

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    goto :goto_6

    .line 209
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 210
    .line 211
    .line 212
    return-object v12

    .line 213
    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :pswitch_0
    move-object/from16 v1, p1

    .line 218
    .line 219
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    const-string v6, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    .line 225
    .line 226
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    :try_start_1
    invoke-interface {v1, v4, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    .line 238
    .line 239
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 240
    .line 241
    .line 242
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 243
    .line 244
    return-object v0

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :pswitch_1
    move-object/from16 v1, p1

    .line 251
    .line 252
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const-string v6, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    .line 258
    .line 259
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    :try_start_2
    invoke-interface {v6, v4, v5, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(JI)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v6, v2, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v6}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 270
    .line 271
    .line 272
    invoke-static {v1}, Lkotlin/TuplesKt;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 273
    .line 274
    .line 275
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 276
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 277
    .line 278
    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    return-object v0

    .line 284
    :catchall_2
    move-exception v0

    .line 285
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 286
    .line 287
    .line 288
    throw v0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
