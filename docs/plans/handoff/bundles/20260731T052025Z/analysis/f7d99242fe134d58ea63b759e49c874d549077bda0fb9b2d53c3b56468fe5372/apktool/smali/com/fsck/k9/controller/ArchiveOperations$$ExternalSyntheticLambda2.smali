.class public final synthetic Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lkotlin/Function;I)V
    .locals 0

    .line 13
    iput p4, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 13
    .line 14
    const/16 v7, 0x12

    .line 15
    .line 16
    const/4 v8, 0x4

    .line 17
    const/4 v9, 0x2

    .line 18
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    const/4 v11, 0x1

    .line 21
    const/4 v12, 0x0

    .line 22
    iget-object v13, v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v14, v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    packed-switch v1, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;

    .line 32
    .line 33
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    check-cast v13, Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 40
    .line 41
    move-object/from16 v2, p2

    .line 42
    .line 43
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 44
    .line 45
    move-object/from16 v5, p3

    .line 46
    .line 47
    check-cast v5, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    and-int/lit8 v1, v5, 0x11

    .line 57
    .line 58
    if-eq v1, v4, :cond_0

    .line 59
    .line 60
    move v1, v11

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v1, v12

    .line 63
    :goto_0
    and-int/lit8 v4, v5, 0x1

    .line 64
    .line 65
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 66
    .line 67
    invoke-virtual {v2, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->description:Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object v15, v0

    .line 80
    check-cast v15, Ljava/lang/String;

    .line 81
    .line 82
    if-nez v15, :cond_1

    .line 83
    .line 84
    const v0, 0x32eb4304

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const v0, 0x32eb4305

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 98
    .line 99
    .line 100
    const/16 v23, 0x0

    .line 101
    .line 102
    const/16 v24, 0x7e

    .line 103
    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const-wide/16 v17, 0x0

    .line 107
    .line 108
    const/16 v19, 0x0

    .line 109
    .line 110
    const/16 v20, 0x0

    .line 111
    .line 112
    const/16 v21, 0x0

    .line 113
    .line 114
    move-object/from16 v22, v2

    .line 115
    .line 116
    invoke-static/range {v15 .. v24}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const/high16 v0, 0x41000000    # 8.0f

    .line 131
    .line 132
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-ne v0, v6, :cond_2

    .line 147
    .line 148
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    const/16 v1, 0xb

    .line 151
    .line 152
    invoke-direct {v0, v14, v1}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    move-object v15, v0

    .line 159
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 160
    .line 161
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    move-object/from16 v16, v0

    .line 166
    .line 167
    check-cast v16, Lkotlinx/collections/immutable/ImmutableList;

    .line 168
    .line 169
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-ne v0, v6, :cond_3

    .line 174
    .line 175
    new-instance v0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    const/16 v1, 0x1b

    .line 178
    .line 179
    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    move-object/from16 v17, v0

    .line 186
    .line 187
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 188
    .line 189
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move-object/from16 v19, v0

    .line 194
    .line 195
    check-cast v19, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 196
    .line 197
    const/16 v21, 0x186

    .line 198
    .line 199
    const/16 v22, 0x8

    .line 200
    .line 201
    const/16 v18, 0x0

    .line 202
    .line 203
    move-object/from16 v20, v2

    .line 204
    .line 205
    invoke-static/range {v15 .. v22}, Landroidx/work/Data$Companion;->RadioGroup(Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/runtime/Composer;II)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 210
    .line 211
    .line 212
    :goto_2
    return-object v10

    .line 213
    :pswitch_0
    check-cast v14, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 214
    .line 215
    check-cast v13, Lkotlinx/coroutines/selects/SelectImplementation;

    .line 216
    .line 217
    move-object/from16 v1, p1

    .line 218
    .line 219
    check-cast v1, Ljava/lang/Throwable;

    .line 220
    .line 221
    move-object/from16 v1, p3

    .line 222
    .line 223
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 224
    .line 225
    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 226
    .line 227
    if-eq v0, v1, :cond_5

    .line 228
    .line 229
    iget-object v1, v14, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 230
    .line 231
    iget-object v2, v13, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    .line 232
    .line 233
    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/internal/InlineList;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 234
    .line 235
    .line 236
    :cond_5
    return-object v10

    .line 237
    :pswitch_1
    move-object v3, v0

    .line 238
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 239
    .line 240
    move-object v4, v14

    .line 241
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 242
    .line 243
    move-object v5, v13

    .line 244
    check-cast v5, Lcom/skydoves/landscapist/ImageOptions;

    .line 245
    .line 246
    move-object/from16 v6, p1

    .line 247
    .line 248
    check-cast v6, Landroidx/compose/ui/unit/IntSize;

    .line 249
    .line 250
    move-object/from16 v7, p2

    .line 251
    .line 252
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 253
    .line 254
    move-object/from16 v0, p3

    .line 255
    .line 256
    check-cast v0, Ljava/lang/Integer;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    invoke-static/range {v3 .. v8}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$JYP4x3Pvb3i4EmLhbiTBMr762YY(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lcom/skydoves/landscapist/ImageOptions;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    return-object v0

    .line 267
    :pswitch_2
    move-object v1, v0

    .line 268
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;

    .line 269
    .line 270
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 271
    .line 272
    move-object v3, v13

    .line 273
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 274
    .line 275
    move-object/from16 v4, p1

    .line 276
    .line 277
    check-cast v4, Landroidx/compose/foundation/layout/PaddingValues;

    .line 278
    .line 279
    move-object/from16 v0, p2

    .line 280
    .line 281
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 282
    .line 283
    move-object/from16 v5, p3

    .line 284
    .line 285
    check-cast v5, Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    and-int/lit8 v6, v5, 0x6

    .line 295
    .line 296
    if-nez v6, :cond_7

    .line 297
    .line 298
    move-object v6, v0

    .line 299
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 300
    .line 301
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    if-eqz v6, :cond_6

    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_6
    move v8, v9

    .line 309
    :goto_3
    or-int/2addr v5, v8

    .line 310
    :cond_7
    and-int/lit8 v6, v5, 0x13

    .line 311
    .line 312
    if-eq v6, v7, :cond_8

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_8
    move v11, v12

    .line 316
    :goto_4
    and-int/lit8 v6, v5, 0x1

    .line 317
    .line 318
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 319
    .line 320
    invoke-virtual {v0, v6, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-eqz v6, :cond_9

    .line 325
    .line 326
    shl-int/lit8 v2, v5, 0x9

    .line 327
    .line 328
    and-int/lit16 v6, v2, 0x1c00

    .line 329
    .line 330
    move-object v5, v0

    .line 331
    move-object v2, v14

    .line 332
    invoke-static/range {v1 .. v6}, Landroidx/work/Data$Companion;->SettingsImportContent(Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_9
    move-object v5, v0

    .line 337
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 338
    .line 339
    .line 340
    :goto_5
    return-object v10

    .line 341
    :pswitch_3
    check-cast v14, Ljava/lang/String;

    .line 342
    .line 343
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 344
    .line 345
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 346
    .line 347
    move-object/from16 v1, p1

    .line 348
    .line 349
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 350
    .line 351
    move-object/from16 v3, p2

    .line 352
    .line 353
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 354
    .line 355
    move-object/from16 v4, p3

    .line 356
    .line 357
    check-cast v4, Ljava/lang/Integer;

    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    and-int/lit8 v15, v4, 0x6

    .line 367
    .line 368
    if-nez v15, :cond_b

    .line 369
    .line 370
    move-object v15, v3

    .line 371
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 372
    .line 373
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v15

    .line 377
    if-eqz v15, :cond_a

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_a
    move v8, v9

    .line 381
    :goto_6
    or-int/2addr v4, v8

    .line 382
    :cond_b
    and-int/lit8 v8, v4, 0x13

    .line 383
    .line 384
    if-eq v8, v7, :cond_c

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_c
    move v11, v12

    .line 388
    :goto_7
    and-int/lit8 v7, v4, 0x1

    .line 389
    .line 390
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 391
    .line 392
    invoke-virtual {v3, v7, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    if-eqz v7, :cond_e

    .line 397
    .line 398
    sget-object v15, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 399
    .line 400
    sget-object v18, Landroidx/compose/foundation/layout/OffsetKt;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 401
    .line 402
    new-instance v7, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    .line 403
    .line 404
    invoke-direct {v7, v14, v2}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    const v2, 0x52bbcc0e

    .line 408
    .line 409
    .line 410
    invoke-static {v2, v7, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 411
    .line 412
    .line 413
    move-result-object v20

    .line 414
    new-instance v2, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 415
    .line 416
    invoke-direct {v2, v5, v0, v13}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    const v0, 0x3e4bce2d

    .line 420
    .line 421
    .line 422
    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 423
    .line 424
    .line 425
    move-result-object v21

    .line 426
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    if-ne v0, v6, :cond_d

    .line 431
    .line 432
    new-instance v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 433
    .line 434
    const/16 v2, 0x11

    .line 435
    .line 436
    invoke-direct {v0, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    :cond_d
    move-object/from16 v22, v0

    .line 443
    .line 444
    check-cast v22, Lkotlin/jvm/functions/Function1;

    .line 445
    .line 446
    shl-int/lit8 v0, v4, 0x6

    .line 447
    .line 448
    and-int/lit16 v0, v0, 0x380

    .line 449
    .line 450
    const v2, 0xdb0c06

    .line 451
    .line 452
    .line 453
    or-int v24, v0, v2

    .line 454
    .line 455
    const/16 v16, 0x0

    .line 456
    .line 457
    const/16 v19, 0x0

    .line 458
    .line 459
    move-object/from16 v17, v1

    .line 460
    .line 461
    move-object/from16 v23, v3

    .line 462
    .line 463
    invoke-static/range {v15 .. v24}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->LazyColumnWithHeaderFooter(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 464
    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_e
    move-object/from16 v23, v3

    .line 468
    .line 469
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 470
    .line 471
    .line 472
    :goto_8
    return-object v10

    .line 473
    :pswitch_4
    check-cast v14, Ljava/lang/String;

    .line 474
    .line 475
    move-object v15, v0

    .line 476
    check-cast v15, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 477
    .line 478
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 479
    .line 480
    move-object/from16 v0, p1

    .line 481
    .line 482
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 483
    .line 484
    move-object/from16 v1, p2

    .line 485
    .line 486
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 487
    .line 488
    move-object/from16 v2, p3

    .line 489
    .line 490
    check-cast v2, Ljava/lang/Integer;

    .line 491
    .line 492
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    and-int/lit8 v4, v2, 0x6

    .line 500
    .line 501
    if-nez v4, :cond_10

    .line 502
    .line 503
    move-object v4, v1

    .line 504
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 505
    .line 506
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-eqz v4, :cond_f

    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_f
    move v8, v9

    .line 514
    :goto_9
    or-int/2addr v2, v8

    .line 515
    :cond_10
    and-int/lit8 v4, v2, 0x13

    .line 516
    .line 517
    if-eq v4, v7, :cond_11

    .line 518
    .line 519
    move v4, v11

    .line 520
    goto :goto_a

    .line 521
    :cond_11
    move v4, v12

    .line 522
    :goto_a
    and-int/2addr v2, v11

    .line 523
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 524
    .line 525
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    if-eqz v2, :cond_13

    .line 530
    .line 531
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 536
    .line 537
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 538
    .line 539
    invoke-static {v2, v3, v1, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    iget-wide v3, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 544
    .line 545
    const/16 v6, 0x20

    .line 546
    .line 547
    ushr-long v6, v3, v6

    .line 548
    .line 549
    xor-long/2addr v3, v6

    .line 550
    long-to-int v3, v3

    .line 551
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    invoke-static {v1, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 560
    .line 561
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 565
    .line 566
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 567
    .line 568
    .line 569
    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 570
    .line 571
    if-eqz v7, :cond_12

    .line 572
    .line 573
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 574
    .line 575
    .line 576
    goto :goto_b

    .line 577
    :cond_12
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 578
    .line 579
    .line 580
    :goto_b
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 581
    .line 582
    invoke-static {v1, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 583
    .line 584
    .line 585
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 586
    .line 587
    invoke-static {v1, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 588
    .line 589
    .line 590
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 595
    .line 596
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 597
    .line 598
    .line 599
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 600
    .line 601
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 602
    .line 603
    .line 604
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 605
    .line 606
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 607
    .line 608
    .line 609
    const/4 v0, 0x0

    .line 610
    invoke-static {v14, v0, v1, v12, v9}, Landroidx/room/util/DBUtil;->AppTitleTopHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 611
    .line 612
    .line 613
    sget-object v16, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->lambda$-314538883:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 614
    .line 615
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;

    .line 616
    .line 617
    invoke-direct {v0, v9, v13}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 618
    .line 619
    .line 620
    const v2, 0x66e7c1ea

    .line 621
    .line 622
    .line 623
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 624
    .line 625
    .line 626
    move-result-object v17

    .line 627
    sget-object v18, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 628
    .line 629
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;

    .line 630
    .line 631
    invoke-direct {v0, v5, v13}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 632
    .line 633
    .line 634
    const v2, -0x333293ba

    .line 635
    .line 636
    .line 637
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 638
    .line 639
    .line 640
    move-result-object v20

    .line 641
    const v22, 0x30db0

    .line 642
    .line 643
    .line 644
    const/16 v19, 0x0

    .line 645
    .line 646
    move-object/from16 v21, v1

    .line 647
    .line 648
    invoke-static/range {v15 .. v22}, Lcom/fsck/k9/sasl/OAuthBearer;->ContentLoadingErrorView(Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 652
    .line 653
    .line 654
    goto :goto_c

    .line 655
    :cond_13
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 656
    .line 657
    .line 658
    :goto_c
    return-object v10

    .line 659
    :pswitch_5
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;

    .line 660
    .line 661
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 662
    .line 663
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 664
    .line 665
    move-object/from16 v1, p1

    .line 666
    .line 667
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 668
    .line 669
    move-object/from16 v2, p2

    .line 670
    .line 671
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 672
    .line 673
    move-object/from16 v3, p3

    .line 674
    .line 675
    check-cast v3, Ljava/lang/Integer;

    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 682
    .line 683
    .line 684
    and-int/lit8 v4, v3, 0x6

    .line 685
    .line 686
    if-nez v4, :cond_15

    .line 687
    .line 688
    move-object v4, v2

    .line 689
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 690
    .line 691
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    if-eqz v4, :cond_14

    .line 696
    .line 697
    goto :goto_d

    .line 698
    :cond_14
    move v8, v9

    .line 699
    :goto_d
    or-int/2addr v3, v8

    .line 700
    :cond_15
    and-int/lit8 v4, v3, 0x13

    .line 701
    .line 702
    if-eq v4, v7, :cond_16

    .line 703
    .line 704
    move v12, v11

    .line 705
    :cond_16
    and-int/2addr v3, v11

    .line 706
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 707
    .line 708
    invoke-virtual {v2, v3, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    if-eqz v3, :cond_19

    .line 713
    .line 714
    iget-object v15, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsViewModel;->mode:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 715
    .line 716
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    move-object/from16 v16, v0

    .line 721
    .line 722
    check-cast v16, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 723
    .line 724
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v0

    .line 728
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    if-nez v0, :cond_17

    .line 733
    .line 734
    if-ne v3, v6, :cond_18

    .line 735
    .line 736
    :cond_17
    new-instance v3, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 737
    .line 738
    const/16 v0, 0x15

    .line 739
    .line 740
    invoke-direct {v3, v0, v13}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 744
    .line 745
    .line 746
    :cond_18
    move-object/from16 v17, v3

    .line 747
    .line 748
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 749
    .line 750
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 751
    .line 752
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 761
    .line 762
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 763
    .line 764
    .line 765
    move-result-object v18

    .line 766
    const/16 v20, 0x40

    .line 767
    .line 768
    move-object/from16 v19, v2

    .line 769
    .line 770
    invoke-static/range {v15 .. v20}, Lkotlin/math/MathKt;->OutgoingServerSettingsContent(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 771
    .line 772
    .line 773
    goto :goto_e

    .line 774
    :cond_19
    move-object/from16 v19, v2

    .line 775
    .line 776
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 777
    .line 778
    .line 779
    :goto_e
    return-object v10

    .line 780
    :pswitch_6
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;

    .line 781
    .line 782
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 783
    .line 784
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 785
    .line 786
    move-object/from16 v1, p1

    .line 787
    .line 788
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 789
    .line 790
    move-object/from16 v2, p2

    .line 791
    .line 792
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 793
    .line 794
    move-object/from16 v3, p3

    .line 795
    .line 796
    check-cast v3, Ljava/lang/Integer;

    .line 797
    .line 798
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 803
    .line 804
    .line 805
    and-int/lit8 v4, v3, 0x6

    .line 806
    .line 807
    if-nez v4, :cond_1b

    .line 808
    .line 809
    move-object v4, v2

    .line 810
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 811
    .line 812
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    if-eqz v4, :cond_1a

    .line 817
    .line 818
    goto :goto_f

    .line 819
    :cond_1a
    move v8, v9

    .line 820
    :goto_f
    or-int/2addr v3, v8

    .line 821
    :cond_1b
    and-int/lit8 v4, v3, 0x13

    .line 822
    .line 823
    if-eq v4, v7, :cond_1c

    .line 824
    .line 825
    move v12, v11

    .line 826
    :cond_1c
    and-int/2addr v3, v11

    .line 827
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 828
    .line 829
    invoke-virtual {v2, v3, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    if-eqz v3, :cond_1f

    .line 834
    .line 835
    iget-object v15, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;->mode:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 836
    .line 837
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    move-object/from16 v16, v0

    .line 842
    .line 843
    check-cast v16, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 844
    .line 845
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 846
    .line 847
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 856
    .line 857
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 858
    .line 859
    .line 860
    move-result-object v18

    .line 861
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v0

    .line 865
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    if-nez v0, :cond_1d

    .line 870
    .line 871
    if-ne v1, v6, :cond_1e

    .line 872
    .line 873
    :cond_1d
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 874
    .line 875
    const/16 v0, 0x8

    .line 876
    .line 877
    invoke-direct {v1, v0, v13}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 881
    .line 882
    .line 883
    :cond_1e
    move-object/from16 v17, v1

    .line 884
    .line 885
    check-cast v17, Lkotlin/jvm/functions/Function1;

    .line 886
    .line 887
    const/16 v20, 0x40

    .line 888
    .line 889
    move-object/from16 v19, v2

    .line 890
    .line 891
    invoke-static/range {v15 .. v20}, Landroidx/appcompat/app/ActionBar;->IncomingServerSettingsContent(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 892
    .line 893
    .line 894
    goto :goto_10

    .line 895
    :cond_1f
    move-object/from16 v19, v2

    .line 896
    .line 897
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 898
    .line 899
    .line 900
    :goto_10
    return-object v10

    .line 901
    :pswitch_7
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 902
    .line 903
    move-object v1, v14

    .line 904
    check-cast v1, Ljava/lang/String;

    .line 905
    .line 906
    check-cast v13, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;

    .line 907
    .line 908
    move-object/from16 v2, p1

    .line 909
    .line 910
    check-cast v2, Landroidx/compose/foundation/layout/RowScope;

    .line 911
    .line 912
    move-object/from16 v3, p2

    .line 913
    .line 914
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 915
    .line 916
    move-object/from16 v4, p3

    .line 917
    .line 918
    check-cast v4, Ljava/lang/Integer;

    .line 919
    .line 920
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 921
    .line 922
    .line 923
    move-result v4

    .line 924
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    and-int/lit8 v6, v4, 0x6

    .line 928
    .line 929
    if-nez v6, :cond_21

    .line 930
    .line 931
    move-object v6, v3

    .line 932
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 933
    .line 934
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v6

    .line 938
    if-eqz v6, :cond_20

    .line 939
    .line 940
    goto :goto_11

    .line 941
    :cond_20
    move v8, v9

    .line 942
    :goto_11
    or-int/2addr v4, v8

    .line 943
    :cond_21
    and-int/lit8 v6, v4, 0x13

    .line 944
    .line 945
    if-eq v6, v7, :cond_22

    .line 946
    .line 947
    move v6, v11

    .line 948
    goto :goto_12

    .line 949
    :cond_22
    move v6, v12

    .line 950
    :goto_12
    and-int/2addr v4, v11

    .line 951
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 952
    .line 953
    invoke-virtual {v3, v4, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 954
    .line 955
    .line 956
    move-result v4

    .line 957
    if-eqz v4, :cond_24

    .line 958
    .line 959
    if-nez v0, :cond_23

    .line 960
    .line 961
    const v0, 0x53935802

    .line 962
    .line 963
    .line 964
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 968
    .line 969
    .line 970
    goto :goto_13

    .line 971
    :cond_23
    const v4, 0x53935803

    .line 972
    .line 973
    .line 974
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 975
    .line 976
    .line 977
    invoke-interface {v2}, Landroidx/compose/foundation/layout/RowScope;->alignByBaseline()Landroidx/compose/ui/Modifier;

    .line 978
    .line 979
    .line 980
    move-result-object v14

    .line 981
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 982
    .line 983
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v2

    .line 987
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 988
    .line 989
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    .line 991
    .line 992
    const/16 v18, 0x0

    .line 993
    .line 994
    const/16 v19, 0xb

    .line 995
    .line 996
    const/4 v15, 0x0

    .line 997
    const/16 v16, 0x0

    .line 998
    .line 999
    const/high16 v17, 0x41000000    # 8.0f

    .line 1000
    .line 1001
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v14

    .line 1005
    iget-wide v6, v13, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;->iconColor:J

    .line 1006
    .line 1007
    new-instance v15, Landroidx/compose/ui/graphics/Color;

    .line 1008
    .line 1009
    invoke-direct {v15, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1010
    .line 1011
    .line 1012
    const/16 v17, 0x180

    .line 1013
    .line 1014
    const/16 v18, 0x0

    .line 1015
    .line 1016
    move-object v13, v0

    .line 1017
    move-object/from16 v16, v3

    .line 1018
    .line 1019
    invoke-static/range {v13 .. v18}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1023
    .line 1024
    .line 1025
    :goto_13
    new-instance v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 1026
    .line 1027
    invoke-direct {v0, v5}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 1028
    .line 1029
    .line 1030
    const/16 v34, 0x0

    .line 1031
    .line 1032
    const v35, 0x3fbfe

    .line 1033
    .line 1034
    .line 1035
    const/16 v16, 0x0

    .line 1036
    .line 1037
    const-wide/16 v17, 0x0

    .line 1038
    .line 1039
    const-wide/16 v19, 0x0

    .line 1040
    .line 1041
    const-wide/16 v21, 0x0

    .line 1042
    .line 1043
    const-wide/16 v24, 0x0

    .line 1044
    .line 1045
    const/16 v26, 0x0

    .line 1046
    .line 1047
    const/16 v27, 0x0

    .line 1048
    .line 1049
    const/16 v28, 0x0

    .line 1050
    .line 1051
    const/16 v29, 0x0

    .line 1052
    .line 1053
    const/16 v30, 0x0

    .line 1054
    .line 1055
    const/16 v31, 0x0

    .line 1056
    .line 1057
    const/16 v33, 0x0

    .line 1058
    .line 1059
    move-object/from16 v23, v0

    .line 1060
    .line 1061
    move-object v15, v1

    .line 1062
    move-object/from16 v32, v3

    .line 1063
    .line 1064
    invoke-static/range {v15 .. v35}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 1065
    .line 1066
    .line 1067
    goto :goto_14

    .line 1068
    :cond_24
    move-object/from16 v16, v3

    .line 1069
    .line 1070
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1071
    .line 1072
    .line 1073
    :goto_14
    return-object v10

    .line 1074
    :pswitch_8
    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    .line 1075
    .line 1076
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 1077
    .line 1078
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 1079
    .line 1080
    move-object/from16 v1, p1

    .line 1081
    .line 1082
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 1083
    .line 1084
    move-object/from16 v2, p2

    .line 1085
    .line 1086
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1087
    .line 1088
    move-object/from16 v3, p3

    .line 1089
    .line 1090
    check-cast v3, Ljava/lang/Integer;

    .line 1091
    .line 1092
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1093
    .line 1094
    .line 1095
    move-result v3

    .line 1096
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1097
    .line 1098
    .line 1099
    and-int/lit8 v1, v3, 0x11

    .line 1100
    .line 1101
    if-eq v1, v4, :cond_25

    .line 1102
    .line 1103
    move v1, v11

    .line 1104
    goto :goto_15

    .line 1105
    :cond_25
    move v1, v12

    .line 1106
    :goto_15
    and-int/2addr v3, v11

    .line 1107
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1108
    .line 1109
    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    if-eqz v1, :cond_28

    .line 1114
    .line 1115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1120
    .line 1121
    .line 1122
    move-result v1

    .line 1123
    if-eqz v1, :cond_29

    .line 1124
    .line 1125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v1

    .line 1129
    new-instance v3, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda6;

    .line 1130
    .line 1131
    invoke-direct {v3, v12, v1, v13}, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 1132
    .line 1133
    .line 1134
    const v4, 0x7287c6b3

    .line 1135
    .line 1136
    .line 1137
    invoke-static {v4, v3, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v15

    .line 1141
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v3

    .line 1145
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v4

    .line 1149
    or-int/2addr v3, v4

    .line 1150
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v4

    .line 1154
    if-nez v3, :cond_26

    .line 1155
    .line 1156
    if-ne v4, v6, :cond_27

    .line 1157
    .line 1158
    :cond_26
    new-instance v4, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda1;

    .line 1159
    .line 1160
    invoke-direct {v4, v11, v1, v14}, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1164
    .line 1165
    .line 1166
    :cond_27
    move-object/from16 v16, v4

    .line 1167
    .line 1168
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 1169
    .line 1170
    sget-object v20, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->ItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 1171
    .line 1172
    const/16 v22, 0x6

    .line 1173
    .line 1174
    const/16 v17, 0x0

    .line 1175
    .line 1176
    const/16 v18, 0x0

    .line 1177
    .line 1178
    const/16 v19, 0x0

    .line 1179
    .line 1180
    move-object/from16 v21, v2

    .line 1181
    .line 1182
    invoke-static/range {v15 .. v22}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 1183
    .line 1184
    .line 1185
    goto :goto_16

    .line 1186
    :cond_28
    move-object/from16 v21, v2

    .line 1187
    .line 1188
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1189
    .line 1190
    .line 1191
    :cond_29
    return-object v10

    .line 1192
    :pswitch_9
    check-cast v0, Lcom/beetstra/jutf7/Base64Util;

    .line 1193
    .line 1194
    check-cast v14, Ljava/lang/String;

    .line 1195
    .line 1196
    move-object v2, v13

    .line 1197
    check-cast v2, Lkotlin/jvm/functions/Function4;

    .line 1198
    .line 1199
    move-object/from16 v3, p1

    .line 1200
    .line 1201
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1202
    .line 1203
    move-object/from16 v1, p2

    .line 1204
    .line 1205
    check-cast v1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 1206
    .line 1207
    move-object/from16 v6, p3

    .line 1208
    .line 1209
    check-cast v6, Ljava/util/List;

    .line 1210
    .line 1211
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    iget-wide v4, v1, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 1221
    .line 1222
    invoke-virtual {v3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getArchiveFolderId()Ljava/lang/Long;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v7

    .line 1226
    if-nez v7, :cond_2a

    .line 1227
    .line 1228
    new-array v0, v11, [Ljava/lang/Object;

    .line 1229
    .line 1230
    aput-object v3, v0, v12

    .line 1231
    .line 1232
    const-string v1, "No archive folder configured for account %s"

    .line 1233
    .line 1234
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    .line 1236
    .line 1237
    goto :goto_17

    .line 1238
    :cond_2a
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 1239
    .line 1240
    .line 1241
    move-result-wide v8

    .line 1242
    cmp-long v1, v8, v4

    .line 1243
    .line 1244
    if-nez v1, :cond_2b

    .line 1245
    .line 1246
    const-string v0, "Skipping messages already in archive folder"

    .line 1247
    .line 1248
    new-array v1, v12, [Ljava/lang/Object;

    .line 1249
    .line 1250
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    .line 1252
    .line 1253
    goto :goto_17

    .line 1254
    :cond_2b
    invoke-static {v3, v6}, Lcom/fsck/k9/controller/MessagingController;->suppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)V

    .line 1255
    .line 1256
    .line 1257
    iget-object v0, v0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 1258
    .line 1259
    check-cast v0, Lcom/fsck/k9/controller/MessagingController;

    .line 1260
    .line 1261
    new-instance v1, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;

    .line 1262
    .line 1263
    const/4 v8, 0x0

    .line 1264
    invoke-direct/range {v1 .. v8}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;I)V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v0, v14, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1268
    .line 1269
    .line 1270
    :goto_17
    return-object v10

    .line 1271
    :pswitch_data_0
    .packed-switch 0x0
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
