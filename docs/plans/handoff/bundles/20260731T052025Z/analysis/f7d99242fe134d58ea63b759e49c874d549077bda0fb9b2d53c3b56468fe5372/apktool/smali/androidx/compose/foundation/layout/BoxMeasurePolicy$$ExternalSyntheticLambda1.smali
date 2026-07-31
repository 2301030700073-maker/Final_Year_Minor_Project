.class public final synthetic Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/io/Serializable;

.field public final synthetic f$4:Ljava/io/Serializable;

.field public final synthetic f$5:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$3:Ljava/io/Serializable;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$4:Ljava/io/Serializable;

    .line 12
    .line 13
    iput-object p6, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$4:Ljava/io/Serializable;

    .line 11
    .line 12
    iget-object v6, v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$3:Ljava/io/Serializable;

    .line 13
    .line 14
    iget-object v7, v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;

    .line 24
    .line 25
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 28
    .line 29
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 30
    .line 31
    check-cast v5, Ljava/util/ArrayList;

    .line 32
    .line 33
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v9, 0x2

    .line 44
    if-ne v1, v9, :cond_12

    .line 45
    .line 46
    iget-object v1, v0, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 47
    .line 48
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_12

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    const/4 v10, 0x0

    .line 59
    const-string v11, "\'"

    .line 60
    .line 61
    sparse-switch v9, :sswitch_data_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :sswitch_0
    const-string v4, "authentication"

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_0

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_0
    invoke-virtual {v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readText()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const v4, -0x75663f85

    .line 85
    .line 86
    .line 87
    if-eq v1, v4, :cond_5

    .line 88
    .line 89
    const v4, -0x6d456eee

    .line 90
    .line 91
    .line 92
    if-eq v1, v4, :cond_3

    .line 93
    .line 94
    const v4, -0x19279bb8

    .line 95
    .line 96
    .line 97
    if-eq v1, v4, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "password-cleartext"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    sget-object v10, Lapp/k9mail/autodiscovery/api/AuthenticationType;->PasswordCleartext:Lapp/k9mail/autodiscovery/api/AuthenticationType;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const-string v1, "password-encrypted"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_4

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    sget-object v10, Lapp/k9mail/autodiscovery/api/AuthenticationType;->PasswordEncrypted:Lapp/k9mail/autodiscovery/api/AuthenticationType;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    const-string v1, "OAuth2"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_6

    .line 131
    .line 132
    :goto_0
    const-string v1, "Ignoring unknown \'authentication\' value \'"

    .line 133
    .line 134
    invoke-static {v1, v0, v11}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-array v1, v3, [Ljava/lang/Object;

    .line 139
    .line 140
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    sget-object v10, Lapp/k9mail/autodiscovery/api/AuthenticationType;->OAuth2:Lapp/k9mail/autodiscovery/api/AuthenticationType;

    .line 145
    .line 146
    :goto_1
    if-nez v10, :cond_7

    .line 147
    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :cond_7
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :sswitch_1
    const-string v3, "socketType"

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_8

    .line 162
    .line 163
    goto/16 :goto_5

    .line 164
    .line 165
    :cond_8
    invoke-virtual {v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readText()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "SSL"

    .line 170
    .line 171
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_9

    .line 176
    .line 177
    sget-object v0, Lapp/k9mail/autodiscovery/api/ConnectionSecurity;->TLS:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_9
    const-string v1, "STARTTLS"

    .line 181
    .line 182
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_a

    .line 187
    .line 188
    sget-object v0, Lapp/k9mail/autodiscovery/api/ConnectionSecurity;->StartTLS:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 189
    .line 190
    :goto_2
    iput-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 191
    .line 192
    goto/16 :goto_5

    .line 193
    .line 194
    :cond_a
    const-string v1, "Unknown \'socketType\' value: \'"

    .line 195
    .line 196
    invoke-static {v1, v0, v11}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v1, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 201
    .line 202
    invoke-direct {v1, v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    throw v1

    .line 206
    :sswitch_2
    const-string v3, "port"

    .line 207
    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_b

    .line 213
    .line 214
    goto/16 :goto_5

    .line 215
    .line 216
    :cond_b
    invoke-virtual {v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readText()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    if-eqz v1, :cond_d

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-ltz v3, :cond_c

    .line 231
    .line 232
    const/high16 v4, 0x10000

    .line 233
    .line 234
    if-ge v3, v4, :cond_c

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_c
    move-object v1, v10

    .line 238
    :goto_3
    if-eqz v1, :cond_d

    .line 239
    .line 240
    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_d
    const-string v1, "Invalid \'port\' value: \'"

    .line 244
    .line 245
    invoke-static {v1, v0, v11}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-instance v1, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 250
    .line 251
    invoke-direct {v1, v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    throw v1

    .line 255
    :sswitch_3
    const-string/jumbo v3, "username"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_e

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_e
    invoke-virtual {v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readText()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :sswitch_4
    const-string v3, "hostname"

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_f

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_f
    invoke-virtual {v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->readText()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {v0}, Lapp/k9mail/autodiscovery/autoconfig/ClientConfigParser;->isValidHostname(Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-eqz v3, :cond_10

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_10
    move-object v0, v10

    .line 301
    :goto_4
    if-eqz v0, :cond_11

    .line 302
    .line 303
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_11
    const-string v0, "Invalid \'hostname\' value: \'"

    .line 307
    .line 308
    invoke-static {v0, v1, v11}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    new-instance v1, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigParserException;

    .line 313
    .line 314
    invoke-direct {v1, v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    throw v1

    .line 318
    :cond_12
    :goto_5
    return-object v2

    .line 319
    :pswitch_0
    check-cast v0, [Landroidx/compose/ui/layout/Placeable;

    .line 320
    .line 321
    check-cast v8, Ljava/util/List;

    .line 322
    .line 323
    check-cast v7, Landroidx/compose/ui/layout/MeasureScope;

    .line 324
    .line 325
    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    .line 326
    .line 327
    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 328
    .line 329
    check-cast v4, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    .line 330
    .line 331
    move-object/from16 v9, p1

    .line 332
    .line 333
    check-cast v9, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 334
    .line 335
    array-length v1, v0

    .line 336
    move v10, v3

    .line 337
    :goto_6
    if-ge v3, v1, :cond_13

    .line 338
    .line 339
    aget-object v11, v0, v3

    .line 340
    .line 341
    add-int/lit8 v16, v10, 0x1

    .line 342
    .line 343
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 351
    .line 352
    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    iget v13, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 357
    .line 358
    iget v14, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 359
    .line 360
    iget-object v15, v4, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    .line 361
    .line 362
    move-object/from16 v17, v11

    .line 363
    .line 364
    move-object v11, v10

    .line 365
    move-object/from16 v10, v17

    .line 366
    .line 367
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/layout/BoxKt;->access$placeInBox(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/BiasAlignment;)V

    .line 368
    .line 369
    .line 370
    add-int/lit8 v3, v3, 0x1

    .line 371
    .line 372
    move/from16 v10, v16

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_13
    return-object v2

    .line 376
    nop

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :sswitch_data_0
    .sparse-switch
        -0x11dea3cd -> :sswitch_4
        -0xfd6772a -> :sswitch_3
        0x349881 -> :sswitch_2
        0x1dd314d -> :sswitch_1
        0x19a7e278 -> :sswitch_0
    .end sparse-switch
.end method
