.class public final Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final writeSettings(Ljava/io/FileOutputStream;Ljava/util/ArrayList;)V
    .locals 18

    .line 1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "UTF-8"

    .line 6
    .line 7
    move-object/from16 v2, p1

    .line 8
    .line 9
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const-string v1, "k9settings"

    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v4, "version"

    .line 30
    .line 31
    .line 32
    const-string v5, "99"

    .line 33
    .line 34
    invoke-interface {v0, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    .line 36
    .line 37
    const-string v4, "format"

    .line 38
    .line 39
    const-string v5, "1"

    .line 40
    .line 41
    invoke-interface {v0, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    .line 43
    .line 44
    const-string v4, "accounts"

    .line 45
    .line 46
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_a

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Account;

    .line 64
    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const-string v8, "account"

    .line 77
    .line 78
    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    .line 80
    .line 81
    const-string/jumbo v9, "uuid"

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v2, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .line 86
    .line 87
    iget-object v7, v6, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Account;->accountName:Ljava/lang/String;

    .line 88
    .line 89
    const-string v9, "name"

    .line 90
    .line 91
    invoke-static {v0, v9, v7}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v7, "settings"

    .line 95
    .line 96
    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    .line 98
    .line 99
    iget-object v10, v6, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Account;->deletePolicy:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eqz v10, :cond_3

    .line 106
    .line 107
    if-eq v10, v3, :cond_2

    .line 108
    .line 109
    const/4 v11, 0x2

    .line 110
    if-eq v10, v11, :cond_1

    .line 111
    .line 112
    const/4 v11, 0x3

    .line 113
    if-ne v10, v11, :cond_0

    .line 114
    .line 115
    const-string v10, "MARK_AS_READ"

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_1
    const-string v10, "DELETE"

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const-string v0, "Unsupported value"

    .line 126
    .line 127
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    const-string v10, "NEVER"

    .line 132
    .line 133
    :goto_1
    const-string/jumbo v11, "value"

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    .line 138
    .line 139
    const-string v12, "key"

    .line 140
    .line 141
    const-string v13, "deletePolicy"

    .line 142
    .line 143
    invoke-interface {v0, v2, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    .line 145
    .line 146
    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    .line 151
    .line 152
    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    .line 154
    .line 155
    iget-object v7, v6, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Account;->incomingServer:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;

    .line 156
    .line 157
    const-string v10, "incoming-server"

    .line 158
    .line 159
    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    .line 161
    .line 162
    iget-object v11, v7, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->protocol:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-eqz v11, :cond_5

    .line 169
    .line 170
    if-ne v11, v3, :cond_4

    .line 171
    .line 172
    const-string v11, "POP3"

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_5
    const-string v11, "IMAP"

    .line 180
    .line 181
    :goto_2
    const-string v12, "type"

    .line 182
    .line 183
    invoke-interface {v0, v2, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    .line 185
    .line 186
    iget-object v11, v7, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->hostname:Ljava/lang/String;

    .line 187
    .line 188
    const-string v13, "host"

    .line 189
    .line 190
    invoke-static {v0, v13, v11}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget v11, v7, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->port:I

    .line 194
    .line 195
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    const-string v14, "port"

    .line 200
    .line 201
    invoke-static {v0, v14, v11}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v11, v7, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->connectionSecurity:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 205
    .line 206
    invoke-static {v11}, Landroidx/compose/ui/unit/IntRectKt;->mapToSettingsString(Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    const-string v15, "connection-security"

    .line 211
    .line 212
    invoke-static {v0, v15, v11}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v11, v7, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->authenticationType:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 216
    .line 217
    invoke-static {v11}, Landroidx/compose/ui/unit/IntRectKt;->mapToSettingsString(Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    const-string v3, "authentication-type"

    .line 222
    .line 223
    invoke-static {v0, v3, v11}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v11, v7, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->username:Ljava/lang/String;

    .line 227
    .line 228
    const-string/jumbo v2, "username"

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v2, v11}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v7, v7, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->password:Ljava/lang/String;

    .line 235
    .line 236
    const-string v11, "password"

    .line 237
    .line 238
    if-eqz v7, :cond_6

    .line 239
    .line 240
    invoke-static {v0, v11, v7}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    const/4 v7, 0x0

    .line 244
    invoke-interface {v0, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    .line 246
    .line 247
    iget-object v6, v6, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Account;->outgoingServerGroups:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    check-cast v6, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServerGroup;

    .line 254
    .line 255
    iget-object v10, v6, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServerGroup;->outgoingServer:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;

    .line 256
    .line 257
    move-object/from16 p2, v5

    .line 258
    .line 259
    const-string v5, "outgoing-server"

    .line 260
    .line 261
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    .line 263
    .line 264
    sget-object v16, Lapp/k9mail/feature/migration/qrcode/settings/SettingsValueMapperKt$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 265
    .line 266
    const/16 v17, 0x0

    .line 267
    .line 268
    aget v7, v16, v17

    .line 269
    .line 270
    move-object/from16 v16, v1

    .line 271
    .line 272
    const/4 v1, 0x1

    .line 273
    if-ne v7, v1, :cond_9

    .line 274
    .line 275
    const-string v7, "SMTP"

    .line 276
    .line 277
    const/4 v1, 0x0

    .line 278
    invoke-interface {v0, v1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    .line 280
    .line 281
    iget-object v1, v10, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;->hostname:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v0, v13, v1}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget v1, v10, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;->port:I

    .line 287
    .line 288
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v0, v14, v1}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v1, v10, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;->connectionSecurity:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 296
    .line 297
    invoke-static {v1}, Landroidx/compose/ui/unit/IntRectKt;->mapToSettingsString(Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-static {v0, v15, v1}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v10, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;->authenticationType:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 305
    .line 306
    invoke-static {v1}, Landroidx/compose/ui/unit/IntRectKt;->mapToSettingsString(Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v0, v3, v1}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v10, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;->username:Ljava/lang/String;

    .line 314
    .line 315
    invoke-static {v0, v2, v1}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v10, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServer;->password:Ljava/lang/String;

    .line 319
    .line 320
    if-eqz v1, :cond_7

    .line 321
    .line 322
    invoke-static {v0, v11, v1}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :cond_7
    const/4 v1, 0x0

    .line 326
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    .line 328
    .line 329
    iget-object v2, v6, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$OutgoingServerGroup;->identities:Ljava/util/ArrayList;

    .line 330
    .line 331
    const-string v3, "identities"

    .line 332
    .line 333
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-eqz v5, :cond_8

    .line 345
    .line 346
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    check-cast v5, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Identity;

    .line 351
    .line 352
    const-string v6, "identity"

    .line 353
    .line 354
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    .line 356
    .line 357
    iget-object v7, v5, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Identity;->displayName:Ljava/lang/String;

    .line 358
    .line 359
    invoke-static {v0, v9, v7}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v5, v5, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$Identity;->emailAddress:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 363
    .line 364
    invoke-virtual {v5}, Lnet/thunderbird/core/common/mail/EmailAddress;->getAddress()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    const-string v7, "email"

    .line 369
    .line 370
    invoke-static {v0, v7, v5}, Lapp/k9mail/feature/migration/qrcode/settings/XmlSettingWriter;->writeElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :cond_8
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 378
    .line 379
    .line 380
    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    .line 382
    .line 383
    move-object/from16 v5, p2

    .line 384
    .line 385
    move-object v2, v1

    .line 386
    move-object/from16 v1, v16

    .line 387
    .line 388
    const/4 v3, 0x1

    .line 389
    goto/16 :goto_0

    .line 390
    .line 391
    :cond_9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :cond_a
    move-object/from16 v16, v1

    .line 396
    .line 397
    move-object v1, v2

    .line 398
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    .line 400
    .line 401
    move-object/from16 v2, v16

    .line 402
    .line 403
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    .line 405
    .line 406
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 407
    .line 408
    .line 409
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 410
    .line 411
    .line 412
    return-void
.end method
