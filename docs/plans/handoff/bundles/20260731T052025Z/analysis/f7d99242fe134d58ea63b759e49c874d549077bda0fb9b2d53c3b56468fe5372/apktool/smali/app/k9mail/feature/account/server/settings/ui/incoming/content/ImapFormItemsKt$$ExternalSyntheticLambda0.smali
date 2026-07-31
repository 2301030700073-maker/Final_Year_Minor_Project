.class public final synthetic Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 14
    .line 15
    const/16 v7, 0x10

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 23
    .line 24
    move-object/from16 v8, p2

    .line 25
    .line 26
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 27
    .line 28
    move-object/from16 v9, p3

    .line 29
    .line 30
    check-cast v9, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v1, v9, 0x11

    .line 40
    .line 41
    if-eq v1, v7, :cond_0

    .line 42
    .line 43
    move v4, v5

    .line 44
    :cond_0
    and-int/lit8 v1, v9, 0x1

    .line 45
    .line 46
    move-object v14, v8

    .line 47
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    invoke-virtual {v14, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    iget-object v9, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->clientCertificateAlias:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    if-ne v1, v3, :cond_2

    .line 68
    .line 69
    :cond_1
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 70
    .line 71
    invoke-direct {v1, v7, v6}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    move-object v10, v1

    .line 78
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    const v0, 0x7f12005d

    .line 81
    .line 82
    .line 83
    invoke-static {v14, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    invoke-static {v14}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    const/4 v15, 0x0

    .line 92
    const/4 v11, 0x0

    .line 93
    invoke-static/range {v9 .. v15}, Lorg/jsoup/helper/Validate;->ClientCertificateInput(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-object v2

    .line 101
    :pswitch_0
    move-object/from16 v1, p1

    .line 102
    .line 103
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 104
    .line 105
    move-object/from16 v8, p2

    .line 106
    .line 107
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    move-object/from16 v9, p3

    .line 110
    .line 111
    check-cast v9, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    and-int/lit8 v1, v9, 0x11

    .line 121
    .line 122
    if-eq v1, v7, :cond_4

    .line 123
    .line 124
    move v4, v5

    .line 125
    :cond_4
    and-int/lit8 v1, v9, 0x1

    .line 126
    .line 127
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 128
    .line 129
    invoke-virtual {v8, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->Companion:Lcom/bumptech/glide/load/Option$1;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 141
    .line 142
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    iget-object v10, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 147
    .line 148
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-nez v0, :cond_5

    .line 157
    .line 158
    if-ne v1, v3, :cond_6

    .line 159
    .line 160
    :cond_5
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 161
    .line 162
    const/16 v0, 0xf

    .line 163
    .line 164
    invoke-direct {v1, v0, v6}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    move-object v11, v1

    .line 171
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 172
    .line 173
    const v0, 0x7f12006e

    .line 174
    .line 175
    .line 176
    invoke-static {v8, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    invoke-static {v8}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 181
    .line 182
    .line 183
    move-result-object v15

    .line 184
    const/16 v17, 0x0

    .line 185
    .line 186
    const/16 v18, 0x18

    .line 187
    .line 188
    const/4 v12, 0x0

    .line 189
    const/4 v13, 0x0

    .line 190
    move-object/from16 v16, v8

    .line 191
    .line 192
    invoke-static/range {v9 .. v18}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_7
    move-object/from16 v16, v8

    .line 197
    .line 198
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 199
    .line 200
    .line 201
    :goto_1
    return-object v2

    .line 202
    :pswitch_1
    move-object/from16 v1, p1

    .line 203
    .line 204
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 205
    .line 206
    move-object/from16 v8, p2

    .line 207
    .line 208
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 209
    .line 210
    move-object/from16 v9, p3

    .line 211
    .line 212
    check-cast v9, Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    and-int/lit8 v1, v9, 0x11

    .line 222
    .line 223
    if-eq v1, v7, :cond_8

    .line 224
    .line 225
    move v4, v5

    .line 226
    :cond_8
    and-int/lit8 v1, v9, 0x1

    .line 227
    .line 228
    move-object v12, v8

    .line 229
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 230
    .line 231
    invoke-virtual {v12, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_b

    .line 236
    .line 237
    const v1, 0x7f120065

    .line 238
    .line 239
    .line 240
    invoke-static {v12, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v14

    .line 244
    iget-boolean v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapSendClientInfo:Z

    .line 245
    .line 246
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    if-nez v1, :cond_9

    .line 255
    .line 256
    if-ne v4, v3, :cond_a

    .line 257
    .line 258
    :cond_9
    new-instance v4, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 259
    .line 260
    const/16 v1, 0xa

    .line 261
    .line 262
    invoke-direct {v4, v1, v6}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_a
    move-object/from16 v16, v4

    .line 269
    .line 270
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 271
    .line 272
    invoke-static {v12}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    const/4 v9, 0x0

    .line 277
    const/16 v10, 0x18

    .line 278
    .line 279
    const/4 v13, 0x0

    .line 280
    const/4 v15, 0x0

    .line 281
    move/from16 v17, v0

    .line 282
    .line 283
    invoke-static/range {v9 .. v17}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->CheckboxInput(IILandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 288
    .line 289
    .line 290
    :goto_2
    return-object v2

    .line 291
    :pswitch_2
    move-object/from16 v1, p1

    .line 292
    .line 293
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 294
    .line 295
    move-object/from16 v8, p2

    .line 296
    .line 297
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 298
    .line 299
    move-object/from16 v9, p3

    .line 300
    .line 301
    check-cast v9, Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result v9

    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    and-int/lit8 v1, v9, 0x11

    .line 311
    .line 312
    if-eq v1, v7, :cond_c

    .line 313
    .line 314
    move v4, v5

    .line 315
    :cond_c
    and-int/lit8 v1, v9, 0x1

    .line 316
    .line 317
    move-object v12, v8

    .line 318
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 319
    .line 320
    invoke-virtual {v12, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_f

    .line 325
    .line 326
    const v1, 0x7f120062

    .line 327
    .line 328
    .line 329
    invoke-static {v12, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v14

    .line 333
    iget-boolean v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapUseCompression:Z

    .line 334
    .line 335
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    if-nez v1, :cond_d

    .line 344
    .line 345
    if-ne v4, v3, :cond_e

    .line 346
    .line 347
    :cond_d
    new-instance v4, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 348
    .line 349
    const/16 v1, 0x9

    .line 350
    .line 351
    invoke-direct {v4, v1, v6}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    :cond_e
    move-object/from16 v16, v4

    .line 358
    .line 359
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 360
    .line 361
    invoke-static {v12}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    const/4 v9, 0x0

    .line 366
    const/16 v10, 0x18

    .line 367
    .line 368
    const/4 v13, 0x0

    .line 369
    const/4 v15, 0x0

    .line 370
    move/from16 v17, v0

    .line 371
    .line 372
    invoke-static/range {v9 .. v17}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->CheckboxInput(IILandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    .line 373
    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 377
    .line 378
    .line 379
    :goto_3
    return-object v2

    .line 380
    :pswitch_3
    move-object/from16 v1, p1

    .line 381
    .line 382
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 383
    .line 384
    move-object/from16 v8, p2

    .line 385
    .line 386
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 387
    .line 388
    move-object/from16 v9, p3

    .line 389
    .line 390
    check-cast v9, Ljava/lang/Integer;

    .line 391
    .line 392
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    and-int/lit8 v1, v9, 0x11

    .line 400
    .line 401
    if-eq v1, v7, :cond_10

    .line 402
    .line 403
    move v4, v5

    .line 404
    :cond_10
    and-int/lit8 v1, v9, 0x1

    .line 405
    .line 406
    move-object v12, v8

    .line 407
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 408
    .line 409
    invoke-virtual {v12, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_13

    .line 414
    .line 415
    const v1, 0x7f120063

    .line 416
    .line 417
    .line 418
    invoke-static {v12, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v14

    .line 422
    iget-boolean v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 423
    .line 424
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    if-nez v1, :cond_11

    .line 433
    .line 434
    if-ne v4, v3, :cond_12

    .line 435
    .line 436
    :cond_11
    new-instance v4, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 437
    .line 438
    const/16 v1, 0xb

    .line 439
    .line 440
    invoke-direct {v4, v1, v6}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    :cond_12
    move-object/from16 v16, v4

    .line 447
    .line 448
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 449
    .line 450
    invoke-static {v12}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 451
    .line 452
    .line 453
    move-result-object v11

    .line 454
    const/4 v9, 0x0

    .line 455
    const/16 v10, 0x18

    .line 456
    .line 457
    const/4 v13, 0x0

    .line 458
    const/4 v15, 0x0

    .line 459
    move/from16 v17, v0

    .line 460
    .line 461
    invoke-static/range {v9 .. v17}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->CheckboxInput(IILandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    .line 462
    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 466
    .line 467
    .line 468
    :goto_4
    return-object v2

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
