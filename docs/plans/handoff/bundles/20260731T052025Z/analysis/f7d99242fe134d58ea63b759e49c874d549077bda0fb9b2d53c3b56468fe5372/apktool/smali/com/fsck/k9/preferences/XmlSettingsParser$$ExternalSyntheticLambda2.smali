.class public final synthetic Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lokhttp3/ConnectionPool;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/ConnectionPool;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;->f$0:Lokhttp3/ConnectionPool;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    iget-object v5, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, v4, :cond_1

    .line 23
    .line 24
    iget-object v7, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;->f$0:Lokhttp3/ConnectionPool;

    .line 25
    .line 26
    iget-object v0, v7, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 29
    .line 30
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "identity"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    .line 44
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 48
    .line 49
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    .line 59
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v6, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    invoke-direct/range {v6 .. v12}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v6}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/fsck/k9/preferences/SettingsFile$Identity;

    .line 72
    .line 73
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v4, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    iget-object v6, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v6, Ljava/util/Map;

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v4, v6}, Lcom/fsck/k9/preferences/SettingsFile$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v7}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    return-object v3

    .line 100
    :pswitch_0
    iget-object v0, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;->f$0:Lokhttp3/ConnectionPool;

    .line 101
    .line 102
    iget-object v1, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Lorg/xmlpull/v1/XmlPullParser;

    .line 105
    .line 106
    move-object/from16 v6, p1

    .line 107
    .line 108
    check-cast v6, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-ne v6, v4, :cond_4

    .line 115
    .line 116
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-string v6, "folder"

    .line 121
    .line 122
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_3

    .line 127
    .line 128
    const-string v4, "name"

    .line 129
    .line 130
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-nez v1, :cond_2

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->readSettingsContainer()Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v2, Lcom/fsck/k9/preferences/SettingsFile$Folder;

    .line 142
    .line 143
    invoke-direct {v2, v1, v0}, Lcom/fsck/k9/preferences/SettingsFile$Folder;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 144
    .line 145
    .line 146
    :goto_1
    if-eqz v2, :cond_4

    .line 147
    .line 148
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 153
    .line 154
    .line 155
    :cond_4
    :goto_2
    return-object v3

    .line 156
    :pswitch_1
    iget-object v7, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda2;->f$0:Lokhttp3/ConnectionPool;

    .line 157
    .line 158
    iget-object v0, v7, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 161
    .line 162
    move-object/from16 v1, p1

    .line 163
    .line 164
    check-cast v1, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-ne v1, v4, :cond_b

    .line 171
    .line 172
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string v4, "account"

    .line 177
    .line 178
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_a

    .line 183
    .line 184
    const-string/jumbo v1, "uuid"

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const/4 v4, 0x0

    .line 192
    const/4 v15, 0x1

    .line 193
    :try_start_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-array v6, v15, [Ljava/lang/Object;

    .line 199
    .line 200
    aput-object v1, v6, v4

    .line 201
    .line 202
    const-string v1, "Invalid account UUID: %s"

    .line 203
    .line 204
    invoke-static {v0, v1, v6}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    move-object v1, v2

    .line 208
    :goto_3
    if-nez v1, :cond_5

    .line 209
    .line 210
    invoke-virtual {v7}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_5
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 215
    .line 216
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 217
    .line 218
    .line 219
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 220
    .line 221
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 222
    .line 223
    .line 224
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 225
    .line 226
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 227
    .line 228
    .line 229
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 230
    .line 231
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 232
    .line 233
    .line 234
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 235
    .line 236
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 237
    .line 238
    .line 239
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 240
    .line 241
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 242
    .line 243
    .line 244
    new-instance v6, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;

    .line 245
    .line 246
    const/4 v14, 0x1

    .line 247
    invoke-direct/range {v6 .. v14}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v6}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 254
    .line 255
    if-nez v0, :cond_6

    .line 256
    .line 257
    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 258
    .line 259
    :cond_6
    new-instance v16, Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 260
    .line 261
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 262
    .line 263
    move-object/from16 v18, v0

    .line 264
    .line 265
    check-cast v18, Ljava/lang/String;

    .line 266
    .line 267
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 268
    .line 269
    move-object/from16 v19, v0

    .line 270
    .line 271
    check-cast v19, Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 272
    .line 273
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 274
    .line 275
    move-object/from16 v20, v0

    .line 276
    .line 277
    check-cast v20, Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 278
    .line 279
    iget-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 280
    .line 281
    move-object/from16 v21, v0

    .line 282
    .line 283
    check-cast v21, Ljava/util/Map;

    .line 284
    .line 285
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 286
    .line 287
    move-object/from16 v22, v0

    .line 288
    .line 289
    check-cast v22, Ljava/util/List;

    .line 290
    .line 291
    iget-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 292
    .line 293
    move-object/from16 v23, v0

    .line 294
    .line 295
    check-cast v23, Ljava/util/List;

    .line 296
    .line 297
    move-object/from16 v17, v1

    .line 298
    .line 299
    invoke-direct/range {v16 .. v23}, Lcom/fsck/k9/preferences/SettingsFile$Account;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsFile$Server;Lcom/fsck/k9/preferences/SettingsFile$Server;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 300
    .line 301
    .line 302
    move-object/from16 v2, v16

    .line 303
    .line 304
    :goto_4
    if-eqz v2, :cond_b

    .line 305
    .line 306
    iget-object v0, v2, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_7

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_9

    .line 324
    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    check-cast v6, Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 330
    .line 331
    iget-object v6, v6, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_8

    .line 338
    .line 339
    new-array v1, v15, [Ljava/lang/Object;

    .line 340
    .line 341
    aput-object v0, v1, v4

    .line 342
    .line 343
    const-string v0, "Duplicate account entries with UUID %s. Ignoring!"

    .line 344
    .line 345
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_9
    :goto_5
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_a
    invoke-virtual {v7}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 354
    .line 355
    .line 356
    :cond_b
    :goto_6
    return-object v3

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
