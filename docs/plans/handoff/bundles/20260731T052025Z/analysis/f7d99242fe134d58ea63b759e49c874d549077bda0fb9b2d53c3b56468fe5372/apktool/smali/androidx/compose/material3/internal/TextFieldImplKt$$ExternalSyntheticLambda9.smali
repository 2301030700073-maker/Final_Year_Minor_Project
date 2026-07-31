.class public final synthetic Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 4
    .line 5
    const v2, 0x7f1204cf

    .line 6
    .line 7
    .line 8
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 9
    .line 10
    const/16 v4, 0x10

    .line 11
    .line 12
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, 0x0

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 22
    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 26
    .line 27
    move-object/from16 v8, p3

    .line 28
    .line 29
    check-cast v8, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    and-int/lit8 v1, v8, 0x11

    .line 39
    .line 40
    if-eq v1, v4, :cond_0

    .line 41
    .line 42
    move v7, v6

    .line 43
    :cond_0
    and-int/lit8 v1, v8, 0x1

    .line 44
    .line 45
    move-object v11, v2

    .line 46
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 47
    .line 48
    invoke-virtual {v11, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    sget-object v1, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->banner_inline_notification_open_notifications$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 55
    .line 56
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lorg/jetbrains/compose/resources/StringResource;

    .line 61
    .line 62
    invoke-static {v1, v11}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const-string v1, "check_notifications_action"

    .line 67
    .line 68
    invoke-static {v3, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const/16 v12, 0x180

    .line 73
    .line 74
    const/16 v13, 0x8

    .line 75
    .line 76
    iget-object v9, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 77
    .line 78
    invoke-static/range {v8 .. v13}, Landroidx/work/Data$Companion;->NotificationActionButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-object v5

    .line 86
    :pswitch_0
    move-object/from16 v1, p1

    .line 87
    .line 88
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 89
    .line 90
    move-object/from16 v3, p2

    .line 91
    .line 92
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 93
    .line 94
    move-object/from16 v8, p3

    .line 95
    .line 96
    check-cast v8, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    and-int/lit8 v1, v8, 0x11

    .line 106
    .line 107
    if-eq v1, v4, :cond_2

    .line 108
    .line 109
    move v7, v6

    .line 110
    :cond_2
    and-int/lit8 v1, v8, 0x1

    .line 111
    .line 112
    move-object v13, v3

    .line 113
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 114
    .line 115
    invoke-virtual {v13, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    invoke-static {v13, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    sget-object v10, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Settings:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 126
    .line 127
    const/4 v14, 0x0

    .line 128
    const/16 v15, 0x18

    .line 129
    .line 130
    iget-object v9, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 131
    .line 132
    const/4 v11, 0x0

    .line 133
    const/4 v12, 0x0

    .line 134
    invoke-static/range {v8 .. v15}, Lokhttp3/Cookie$Companion;->SettingListItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-object v5

    .line 142
    :pswitch_1
    move-object/from16 v1, p1

    .line 143
    .line 144
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 145
    .line 146
    move-object/from16 v2, p2

    .line 147
    .line 148
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 149
    .line 150
    move-object/from16 v3, p3

    .line 151
    .line 152
    check-cast v3, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    and-int/lit8 v1, v3, 0x11

    .line 162
    .line 163
    if-eq v1, v4, :cond_4

    .line 164
    .line 165
    move v7, v6

    .line 166
    :cond_4
    and-int/lit8 v1, v3, 0x1

    .line 167
    .line 168
    move-object v13, v2

    .line 169
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 170
    .line 171
    invoke-virtual {v13, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    const v1, 0x7f1204ce

    .line 178
    .line 179
    .line 180
    invoke-static {v13, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    sget-object v10, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->FolderManaged:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 185
    .line 186
    const/4 v14, 0x0

    .line 187
    const/16 v15, 0x18

    .line 188
    .line 189
    iget-object v9, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 190
    .line 191
    const/4 v11, 0x0

    .line 192
    const/4 v12, 0x0

    .line 193
    invoke-static/range {v8 .. v15}, Lokhttp3/Cookie$Companion;->SettingListItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 198
    .line 199
    .line 200
    :goto_2
    return-object v5

    .line 201
    :pswitch_2
    move-object/from16 v1, p1

    .line 202
    .line 203
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 204
    .line 205
    move-object/from16 v3, p2

    .line 206
    .line 207
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 208
    .line 209
    move-object/from16 v8, p3

    .line 210
    .line 211
    check-cast v8, Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    and-int/lit8 v1, v8, 0x11

    .line 221
    .line 222
    if-eq v1, v4, :cond_6

    .line 223
    .line 224
    move v7, v6

    .line 225
    :cond_6
    and-int/lit8 v1, v8, 0x1

    .line 226
    .line 227
    move-object v13, v3

    .line 228
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 229
    .line 230
    invoke-virtual {v13, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_7

    .line 235
    .line 236
    invoke-static {v13, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    sget-object v10, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Settings:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 241
    .line 242
    const/4 v14, 0x0

    .line 243
    const/16 v15, 0x18

    .line 244
    .line 245
    iget-object v9, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 246
    .line 247
    const/4 v11, 0x0

    .line 248
    const/4 v12, 0x0

    .line 249
    invoke-static/range {v8 .. v15}, Lokhttp3/Cookie$Companion;->SettingListItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 254
    .line 255
    .line 256
    :goto_3
    return-object v5

    .line 257
    :pswitch_3
    move-object/from16 v1, p1

    .line 258
    .line 259
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 260
    .line 261
    move-object/from16 v2, p2

    .line 262
    .line 263
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 264
    .line 265
    move-object/from16 v3, p3

    .line 266
    .line 267
    check-cast v3, Ljava/lang/Integer;

    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    and-int/lit8 v1, v3, 0x11

    .line 277
    .line 278
    if-eq v1, v4, :cond_8

    .line 279
    .line 280
    move v7, v6

    .line 281
    :cond_8
    and-int/lit8 v1, v3, 0x1

    .line 282
    .line 283
    move-object v13, v2

    .line 284
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 285
    .line 286
    invoke-virtual {v13, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_9

    .line 291
    .line 292
    const v1, 0x7f1204cd

    .line 293
    .line 294
    .line 295
    invoke-static {v13, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    sget-object v10, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Add:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 300
    .line 301
    const/4 v14, 0x0

    .line 302
    const/16 v15, 0x18

    .line 303
    .line 304
    iget-object v9, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 305
    .line 306
    const/4 v11, 0x0

    .line 307
    const/4 v12, 0x0

    .line 308
    invoke-static/range {v8 .. v15}, Lokhttp3/Cookie$Companion;->SettingListItem(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 313
    .line 314
    .line 315
    :goto_4
    return-object v5

    .line 316
    :pswitch_4
    move-object/from16 v1, p1

    .line 317
    .line 318
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 319
    .line 320
    move-object/from16 v2, p2

    .line 321
    .line 322
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 323
    .line 324
    move-object/from16 v4, p3

    .line 325
    .line 326
    check-cast v4, Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    and-int/lit8 v8, v4, 0x6

    .line 336
    .line 337
    if-nez v8, :cond_b

    .line 338
    .line 339
    move-object v8, v2

    .line 340
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 341
    .line 342
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    if-eqz v8, :cond_a

    .line 347
    .line 348
    const/4 v8, 0x4

    .line 349
    goto :goto_5

    .line 350
    :cond_a
    const/4 v8, 0x2

    .line 351
    :goto_5
    or-int/2addr v4, v8

    .line 352
    :cond_b
    and-int/lit8 v8, v4, 0x13

    .line 353
    .line 354
    const/16 v9, 0x12

    .line 355
    .line 356
    if-eq v8, v9, :cond_c

    .line 357
    .line 358
    move v7, v6

    .line 359
    :cond_c
    and-int/2addr v4, v6

    .line 360
    move-object v15, v2

    .line 361
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 362
    .line 363
    invoke-virtual {v15, v4, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_e

    .line 368
    .line 369
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 370
    .line 371
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    .line 372
    .line 373
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 374
    .line 375
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    const/high16 v8, 0x41800000    # 16.0f

    .line 385
    .line 386
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 395
    .line 396
    const/4 v9, 0x6

    .line 397
    invoke-static {v2, v4, v15, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    iget-wide v9, v15, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 402
    .line 403
    const/16 v4, 0x20

    .line 404
    .line 405
    ushr-long v11, v9, v4

    .line 406
    .line 407
    xor-long/2addr v9, v11

    .line 408
    long-to-int v4, v9

    .line 409
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    invoke-static {v15, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 418
    .line 419
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 423
    .line 424
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 425
    .line 426
    .line 427
    iget-boolean v11, v15, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 428
    .line 429
    if-eqz v11, :cond_d

    .line 430
    .line 431
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 432
    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 436
    .line 437
    .line 438
    :goto_6
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 439
    .line 440
    invoke-static {v15, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 441
    .line 442
    .line 443
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 444
    .line 445
    invoke-static {v15, v9, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 446
    .line 447
    .line 448
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 453
    .line 454
    invoke-static {v15, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 455
    .line 456
    .line 457
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 458
    .line 459
    invoke-static {v15, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 460
    .line 461
    .line 462
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 463
    .line 464
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 465
    .line 466
    .line 467
    const v1, 0x7f12047a

    .line 468
    .line 469
    .line 470
    invoke-static {v15, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    const/16 v16, 0x0

    .line 475
    .line 476
    const/16 v17, 0x3e

    .line 477
    .line 478
    const/4 v9, 0x0

    .line 479
    const-wide/16 v10, 0x0

    .line 480
    .line 481
    const/4 v12, 0x0

    .line 482
    const/4 v13, 0x0

    .line 483
    const/4 v14, 0x0

    .line 484
    move/from16 v18, v8

    .line 485
    .line 486
    move-object v8, v1

    .line 487
    move/from16 v1, v18

    .line 488
    .line 489
    invoke-static/range {v8 .. v17}, Landroidx/room/util/DBUtil;->TextTitleLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 497
    .line 498
    invoke-static {v2, v3, v1, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 499
    .line 500
    .line 501
    const v1, 0x7f120479

    .line 502
    .line 503
    .line 504
    invoke-static {v15, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    invoke-static/range {v8 .. v17}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 516
    .line 517
    const/high16 v2, 0x41c00000    # 24.0f

    .line 518
    .line 519
    invoke-static {v1, v3, v2, v15}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 520
    .line 521
    .line 522
    const v1, 0x7f120478

    .line 523
    .line 524
    .line 525
    invoke-static {v15, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 530
    .line 531
    new-instance v2, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 532
    .line 533
    invoke-direct {v2, v1}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 534
    .line 535
    .line 536
    const-string v1, "GoToSettingsButton"

    .line 537
    .line 538
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 539
    .line 540
    .line 541
    move-result-object v10

    .line 542
    const/16 v17, 0xf8

    .line 543
    .line 544
    iget-object v9, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 545
    .line 546
    const/4 v11, 0x0

    .line 547
    const/4 v13, 0x0

    .line 548
    const/4 v14, 0x0

    .line 549
    invoke-static/range {v8 .. v17}, Landroidx/compose/ui/unit/IntOffsetKt;->ButtonFilled(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 553
    .line 554
    .line 555
    goto :goto_7

    .line 556
    :cond_e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 557
    .line 558
    .line 559
    :goto_7
    return-object v5

    .line 560
    :pswitch_5
    move-object/from16 v1, p1

    .line 561
    .line 562
    check-cast v1, Landroidx/compose/ui/layout/MeasureScope;

    .line 563
    .line 564
    move-object/from16 v2, p2

    .line 565
    .line 566
    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 567
    .line 568
    move-object/from16 v3, p3

    .line 569
    .line 570
    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    .line 571
    .line 572
    iget-object v0, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 573
    .line 574
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 579
    .line 580
    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 581
    .line 582
    iget-wide v4, v3, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 583
    .line 584
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 585
    .line 586
    invoke-static {v0, v6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    if-nez v6, :cond_f

    .line 591
    .line 592
    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 593
    .line 594
    .line 595
    move-result v7

    .line 596
    :cond_f
    invoke-static {v7, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    .line 597
    .line 598
    .line 599
    move-result v12

    .line 600
    iget-wide v8, v3, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 601
    .line 602
    const/4 v13, 0x0

    .line 603
    const/16 v14, 0xb

    .line 604
    .line 605
    const/4 v10, 0x0

    .line 606
    const/4 v11, 0x0

    .line 607
    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    .line 608
    .line 609
    .line 610
    move-result-wide v3

    .line 611
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 616
    .line 617
    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 618
    .line 619
    new-instance v4, Landroidx/compose/foundation/layout/FillNode$$ExternalSyntheticLambda0;

    .line 620
    .line 621
    const/16 v5, 0xa

    .line 622
    .line 623
    invoke-direct {v4, v0, v5}, Landroidx/compose/foundation/layout/FillNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 624
    .line 625
    .line 626
    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 627
    .line 628
    invoke-interface {v1, v2, v3, v0, v4}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    return-object v0

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
