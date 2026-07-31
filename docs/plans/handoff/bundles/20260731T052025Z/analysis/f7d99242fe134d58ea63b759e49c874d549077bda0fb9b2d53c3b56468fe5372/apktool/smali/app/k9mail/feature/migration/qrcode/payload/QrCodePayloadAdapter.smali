.class public final Lapp/k9mail/feature/migration/qrcode/payload/QrCodePayloadAdapter;
.super Lcom/squareup/moshi/JsonAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final fromJson(Lcom/squareup/moshi/JsonUtf8Reader;)Ljava/lang/Object;
    .locals 17

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->beginArray()V

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v0, v2, v3

    .line 20
    .line 21
    const-string v0, "Unsupported version: %s"

    .line 22
    .line 23
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->beginArray()V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->readJsonValue()Ljava/io/Serializable;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->endArray()V

    .line 49
    .line 50
    .line 51
    new-instance v4, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;

    .line 52
    .line 53
    invoke-direct {v4, v2, v3}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->beginArray()V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    move-object v12, v3

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    move-object v12, v1

    .line 100
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    move-object v13, v3

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    move-object v13, v1

    .line 113
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->readJsonValue()Ljava/io/Serializable;

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->endArray()V

    .line 124
    .line 125
    .line 126
    new-instance v5, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;

    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-direct/range {v5 .. v13}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->beginArray()V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->beginArray()V

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->beginArray()V

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-eqz v6, :cond_5

    .line 179
    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    move-object v13, v6

    .line 185
    goto :goto_5

    .line 186
    :cond_5
    move-object v13, v1

    .line 187
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_6

    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->readJsonValue()Ljava/io/Serializable;

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->endArray()V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->beginArray()V

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v16

    .line 219
    if-eqz v16, :cond_7

    .line 220
    .line 221
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->readJsonValue()Ljava/io/Serializable;

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->endArray()V

    .line 226
    .line 227
    .line 228
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Identity;

    .line 229
    .line 230
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    invoke-direct {v1, v14, v15}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-nez v1, :cond_a

    .line 247
    .line 248
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->endArray()V

    .line 253
    .line 254
    .line 255
    new-instance v6, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;

    .line 256
    .line 257
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-direct/range {v6 .. v14}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$OutgoingServer;-><init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lkotlin/collections/builders/ListBuilder;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v6}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-nez v1, :cond_9

    .line 274
    .line 275
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->endArray()V

    .line 280
    .line 281
    .line 282
    new-instance v3, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;

    .line 283
    .line 284
    invoke-direct {v3, v5, v1}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Account;-><init>(Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;Lkotlin/collections/builders/ListBuilder;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_8

    .line 295
    .line 296
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/moshi/JsonUtf8Reader;->endArray()V

    .line 301
    .line 302
    .line 303
    new-instance v2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;

    .line 304
    .line 305
    invoke-direct {v2, v0, v4, v1}, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;-><init>(ILapp/k9mail/feature/migration/qrcode/payload/QrCodeData$Misc;Lkotlin/collections/builders/ListBuilder;)V

    .line 306
    .line 307
    .line 308
    return-object v2

    .line 309
    :cond_8
    const/4 v1, 0x0

    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_9
    const/4 v1, 0x0

    .line 313
    goto/16 :goto_4

    .line 314
    .line 315
    :cond_a
    const/4 v1, 0x0

    .line 316
    goto :goto_6
.end method

.method public final toJson(Lcom/squareup/moshi/JsonUtf8Writer;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData;

    .line 2
    .line 3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    const-string p1, "not implemented"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw p0
.end method
