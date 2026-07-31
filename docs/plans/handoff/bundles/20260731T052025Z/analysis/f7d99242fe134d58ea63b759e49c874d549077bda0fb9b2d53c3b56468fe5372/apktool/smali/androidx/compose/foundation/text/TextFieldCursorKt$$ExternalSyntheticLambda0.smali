.class public final synthetic Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/16 v5, 0x10

    .line 8
    .line 9
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 10
    .line 11
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 12
    .line 13
    const/high16 v9, 0x41000000    # 8.0f

    .line 14
    .line 15
    const/16 v10, 0x12

    .line 16
    .line 17
    const/4 v11, 0x4

    .line 18
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    const/4 v14, 0x0

    .line 21
    iget-object v15, v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v12, v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v7, v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/compose/foundation/text/TextFieldCursorKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    packed-switch v1, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    check-cast v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 34
    .line 35
    check-cast v7, Landroidx/compose/ui/focus/FocusRequester;

    .line 36
    .line 37
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 38
    .line 39
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 40
    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 44
    .line 45
    move-object/from16 v4, p2

    .line 46
    .line 47
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 48
    .line 49
    move-object/from16 v10, p3

    .line 50
    .line 51
    check-cast v10, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    and-int/lit8 v1, v10, 0x11

    .line 61
    .line 62
    if-eq v1, v5, :cond_0

    .line 63
    .line 64
    move v1, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v1, v14

    .line 67
    :goto_0
    and-int/2addr v3, v10

    .line 68
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 69
    .line 70
    invoke-virtual {v4, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    iget-object v1, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->description:Lkotlin/jvm/functions/Function0;

    .line 77
    .line 78
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    move-object/from16 v16, v1

    .line 83
    .line 84
    check-cast v16, Ljava/lang/String;

    .line 85
    .line 86
    if-nez v16, :cond_1

    .line 87
    .line 88
    const v1, -0x54e1cdab

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const v1, -0x54e1cdaa

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 102
    .line 103
    .line 104
    const/16 v24, 0x0

    .line 105
    .line 106
    const/16 v25, 0x7e

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const-wide/16 v18, 0x0

    .line 111
    .line 112
    const/16 v20, 0x0

    .line 113
    .line 114
    const/16 v21, 0x0

    .line 115
    .line 116
    const/16 v22, 0x0

    .line 117
    .line 118
    move-object/from16 v23, v4

    .line 119
    .line 120
    invoke-static/range {v16 .. v25}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 121
    .line 122
    .line 123
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 124
    .line 125
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    move-object/from16 v18, v1

    .line 149
    .line 150
    check-cast v18, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 151
    .line 152
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    move-object/from16 v19, v1

    .line 157
    .line 158
    check-cast v19, Ljava/lang/String;

    .line 159
    .line 160
    const/4 v1, 0x3

    .line 161
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 162
    .line 163
    .line 164
    move-result-object v20

    .line 165
    invoke-static {v6, v7}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    .line 166
    .line 167
    .line 168
    move-result-object v17

    .line 169
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    or-int/2addr v1, v2

    .line 178
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-nez v1, :cond_2

    .line 183
    .line 184
    if-ne v2, v8, :cond_3

    .line 185
    .line 186
    :cond_2
    new-instance v2, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;

    .line 187
    .line 188
    invoke-direct {v2, v11, v0, v12}, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    :cond_3
    move-object/from16 v16, v2

    .line 195
    .line 196
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 197
    .line 198
    const/16 v23, 0x0

    .line 199
    .line 200
    const/high16 v25, 0x180000

    .line 201
    .line 202
    const/16 v21, 0x0

    .line 203
    .line 204
    const/16 v22, 0x0

    .line 205
    .line 206
    move-object/from16 v24, v4

    .line 207
    .line 208
    invoke-static/range {v16 .. v25}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->AdvancedTextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/runtime/Composer;I)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 213
    .line 214
    .line 215
    :goto_2
    return-object v13

    .line 216
    :pswitch_0
    move-object v6, v0

    .line 217
    check-cast v6, Lkotlinx/collections/immutable/ImmutableList;

    .line 218
    .line 219
    check-cast v7, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 220
    .line 221
    move-object v8, v12

    .line 222
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 223
    .line 224
    move-object v9, v15

    .line 225
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 226
    .line 227
    move-object/from16 v0, p1

    .line 228
    .line 229
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 230
    .line 231
    move-object/from16 v1, p2

    .line 232
    .line 233
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 234
    .line 235
    move-object/from16 v2, p3

    .line 236
    .line 237
    check-cast v2, Ljava/lang/Integer;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    and-int/lit8 v5, v2, 0x6

    .line 247
    .line 248
    if-nez v5, :cond_6

    .line 249
    .line 250
    move-object v5, v1

    .line 251
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 252
    .line 253
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_5

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_5
    const/4 v11, 0x2

    .line 261
    :goto_3
    or-int/2addr v2, v11

    .line 262
    :cond_6
    and-int/lit8 v5, v2, 0x13

    .line 263
    .line 264
    if-eq v5, v10, :cond_7

    .line 265
    .line 266
    move v14, v3

    .line 267
    :cond_7
    and-int/2addr v2, v3

    .line 268
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 269
    .line 270
    invoke-virtual {v1, v2, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_8

    .line 275
    .line 276
    new-instance v5, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarKt$$ExternalSyntheticLambda0;

    .line 277
    .line 278
    const/4 v11, 0x5

    .line 279
    move-object v10, v0

    .line 280
    invoke-direct/range {v5 .. v11}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 281
    .line 282
    .line 283
    const v0, -0x158211d

    .line 284
    .line 285
    .line 286
    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    const/16 v2, 0x30

    .line 291
    .line 292
    invoke-static {v4, v0, v1, v2, v3}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 297
    .line 298
    .line 299
    :goto_4
    return-object v13

    .line 300
    :pswitch_1
    move-object v5, v0

    .line 301
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 302
    .line 303
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 304
    .line 305
    check-cast v12, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 306
    .line 307
    check-cast v15, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;

    .line 308
    .line 309
    move-object/from16 v0, p1

    .line 310
    .line 311
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 312
    .line 313
    move-object/from16 v1, p2

    .line 314
    .line 315
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 316
    .line 317
    move-object/from16 v2, p3

    .line 318
    .line 319
    check-cast v2, Ljava/lang/Integer;

    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    and-int/lit8 v4, v2, 0x6

    .line 329
    .line 330
    if-nez v4, :cond_a

    .line 331
    .line 332
    move-object v4, v1

    .line 333
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 334
    .line 335
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-eqz v4, :cond_9

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_9
    const/4 v11, 0x2

    .line 343
    :goto_5
    or-int/2addr v2, v11

    .line 344
    :cond_a
    and-int/lit8 v4, v2, 0x13

    .line 345
    .line 346
    if-eq v4, v10, :cond_b

    .line 347
    .line 348
    move v14, v3

    .line 349
    :cond_b
    and-int/2addr v2, v3

    .line 350
    move-object v9, v1

    .line 351
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 352
    .line 353
    invoke-virtual {v9, v2, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_c

    .line 358
    .line 359
    check-cast v12, Lapp/k9mail/provider/K9AppNameProvider;

    .line 360
    .line 361
    invoke-virtual {v12}, Lapp/k9mail/provider/K9AppNameProvider;->getAppName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    const/4 v10, 0x0

    .line 373
    move-object v6, v7

    .line 374
    move-object v7, v1

    .line 375
    invoke-static/range {v5 .. v10}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeScreenKt;->WelcomeContent(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 376
    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_c
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 380
    .line 381
    .line 382
    :goto_6
    return-object v13

    .line 383
    :pswitch_2
    move-object v1, v0

    .line 384
    check-cast v1, Ljava/lang/String;

    .line 385
    .line 386
    move-object v2, v7

    .line 387
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 388
    .line 389
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 390
    .line 391
    move-object v4, v15

    .line 392
    check-cast v4, Landroid/content/res/Resources;

    .line 393
    .line 394
    move-object/from16 v6, p1

    .line 395
    .line 396
    check-cast v6, Landroidx/compose/foundation/layout/PaddingValues;

    .line 397
    .line 398
    move-object/from16 v0, p2

    .line 399
    .line 400
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 401
    .line 402
    move-object/from16 v5, p3

    .line 403
    .line 404
    check-cast v5, Ljava/lang/Integer;

    .line 405
    .line 406
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    and-int/lit8 v7, v5, 0x6

    .line 414
    .line 415
    if-nez v7, :cond_e

    .line 416
    .line 417
    move-object v7, v0

    .line 418
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 419
    .line 420
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    if-eqz v7, :cond_d

    .line 425
    .line 426
    goto :goto_7

    .line 427
    :cond_d
    const/4 v11, 0x2

    .line 428
    :goto_7
    or-int/2addr v5, v11

    .line 429
    :cond_e
    move v7, v5

    .line 430
    and-int/lit8 v5, v7, 0x13

    .line 431
    .line 432
    if-eq v5, v10, :cond_f

    .line 433
    .line 434
    move v14, v3

    .line 435
    :cond_f
    and-int/lit8 v5, v7, 0x1

    .line 436
    .line 437
    move-object v10, v0

    .line 438
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 439
    .line 440
    invoke-virtual {v10, v5, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_12

    .line 445
    .line 446
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 447
    .line 448
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 449
    .line 450
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 451
    .line 452
    .line 453
    move-result-object v27

    .line 454
    sget-object v26, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 455
    .line 456
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 457
    .line 458
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 463
    .line 464
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    new-instance v11, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 468
    .line 469
    new-instance v0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 470
    .line 471
    const/4 v5, 0x7

    .line 472
    invoke-direct {v0, v5}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 473
    .line 474
    .line 475
    invoke-direct {v11, v9, v3, v0}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v3

    .line 486
    or-int/2addr v0, v3

    .line 487
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    or-int/2addr v0, v3

    .line 492
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    or-int/2addr v0, v3

    .line 497
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    if-nez v0, :cond_10

    .line 502
    .line 503
    if-ne v3, v8, :cond_11

    .line 504
    .line 505
    :cond_10
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;

    .line 506
    .line 507
    const/16 v5, 0xb

    .line 508
    .line 509
    move-object v3, v12

    .line 510
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    move-object v3, v0

    .line 517
    :cond_11
    move-object/from16 v28, v3

    .line 518
    .line 519
    check-cast v28, Lkotlin/jvm/functions/Function1;

    .line 520
    .line 521
    shl-int/lit8 v0, v7, 0x6

    .line 522
    .line 523
    and-int/lit16 v0, v0, 0x380

    .line 524
    .line 525
    const/high16 v1, 0x30000

    .line 526
    .line 527
    or-int v18, v0, v1

    .line 528
    .line 529
    const/16 v19, 0x1ca

    .line 530
    .line 531
    const/16 v20, 0x0

    .line 532
    .line 533
    const/16 v21, 0x0

    .line 534
    .line 535
    const/16 v24, 0x0

    .line 536
    .line 537
    const/16 v29, 0x0

    .line 538
    .line 539
    move-object/from16 v23, v6

    .line 540
    .line 541
    move-object/from16 v25, v10

    .line 542
    .line 543
    move-object/from16 v22, v11

    .line 544
    .line 545
    invoke-static/range {v18 .. v29}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 546
    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_12
    move-object/from16 v25, v10

    .line 550
    .line 551
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 552
    .line 553
    .line 554
    :goto_8
    return-object v13

    .line 555
    :pswitch_3
    move-object v1, v0

    .line 556
    check-cast v1, Ljava/lang/String;

    .line 557
    .line 558
    move-object v2, v7

    .line 559
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 560
    .line 561
    check-cast v12, Landroid/content/res/Resources;

    .line 562
    .line 563
    move-object v4, v15

    .line 564
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 565
    .line 566
    move-object/from16 v6, p1

    .line 567
    .line 568
    check-cast v6, Landroidx/compose/foundation/layout/PaddingValues;

    .line 569
    .line 570
    move-object/from16 v0, p2

    .line 571
    .line 572
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 573
    .line 574
    move-object/from16 v5, p3

    .line 575
    .line 576
    check-cast v5, Ljava/lang/Integer;

    .line 577
    .line 578
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result v5

    .line 582
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    and-int/lit8 v7, v5, 0x6

    .line 586
    .line 587
    if-nez v7, :cond_14

    .line 588
    .line 589
    move-object v7, v0

    .line 590
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 591
    .line 592
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v7

    .line 596
    if-eqz v7, :cond_13

    .line 597
    .line 598
    goto :goto_9

    .line 599
    :cond_13
    const/4 v11, 0x2

    .line 600
    :goto_9
    or-int/2addr v5, v11

    .line 601
    :cond_14
    move v7, v5

    .line 602
    and-int/lit8 v5, v7, 0x13

    .line 603
    .line 604
    if-eq v5, v10, :cond_15

    .line 605
    .line 606
    move v14, v3

    .line 607
    :cond_15
    and-int/lit8 v5, v7, 0x1

    .line 608
    .line 609
    move-object v10, v0

    .line 610
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 611
    .line 612
    invoke-virtual {v10, v5, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    if-eqz v0, :cond_18

    .line 617
    .line 618
    sget-object v27, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 619
    .line 620
    sget-object v26, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 621
    .line 622
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 623
    .line 624
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 631
    .line 632
    .line 633
    new-instance v11, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 634
    .line 635
    new-instance v0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 636
    .line 637
    const/4 v5, 0x7

    .line 638
    invoke-direct {v0, v5}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 639
    .line 640
    .line 641
    invoke-direct {v11, v9, v3, v0}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    or-int/2addr v0, v3

    .line 653
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    or-int/2addr v0, v3

    .line 658
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v3

    .line 662
    or-int/2addr v0, v3

    .line 663
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    if-nez v0, :cond_16

    .line 668
    .line 669
    if-ne v3, v8, :cond_17

    .line 670
    .line 671
    :cond_16
    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;

    .line 672
    .line 673
    const/16 v5, 0xa

    .line 674
    .line 675
    move-object v3, v12

    .line 676
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    move-object v3, v0

    .line 683
    :cond_17
    move-object/from16 v28, v3

    .line 684
    .line 685
    check-cast v28, Lkotlin/jvm/functions/Function1;

    .line 686
    .line 687
    shl-int/lit8 v0, v7, 0x6

    .line 688
    .line 689
    and-int/lit16 v0, v0, 0x380

    .line 690
    .line 691
    const v1, 0x30006

    .line 692
    .line 693
    .line 694
    or-int v18, v0, v1

    .line 695
    .line 696
    const/16 v19, 0x1ca

    .line 697
    .line 698
    const/16 v20, 0x0

    .line 699
    .line 700
    const/16 v21, 0x0

    .line 701
    .line 702
    const/16 v24, 0x0

    .line 703
    .line 704
    const/16 v29, 0x0

    .line 705
    .line 706
    move-object/from16 v23, v6

    .line 707
    .line 708
    move-object/from16 v25, v10

    .line 709
    .line 710
    move-object/from16 v22, v11

    .line 711
    .line 712
    invoke-static/range {v18 .. v29}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 713
    .line 714
    .line 715
    goto :goto_a

    .line 716
    :cond_18
    move-object/from16 v25, v10

    .line 717
    .line 718
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 719
    .line 720
    .line 721
    :goto_a
    return-object v13

    .line 722
    :pswitch_4
    check-cast v0, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 723
    .line 724
    iget-wide v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;->contentColor:J

    .line 725
    .line 726
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 727
    .line 728
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 729
    .line 730
    check-cast v15, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 731
    .line 732
    move-object/from16 v2, p1

    .line 733
    .line 734
    check-cast v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 735
    .line 736
    move-object/from16 v4, p2

    .line 737
    .line 738
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 739
    .line 740
    move-object/from16 v8, p3

    .line 741
    .line 742
    check-cast v8, Ljava/lang/Integer;

    .line 743
    .line 744
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 745
    .line 746
    .line 747
    move-result v8

    .line 748
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    and-int/lit8 v2, v8, 0x11

    .line 752
    .line 753
    if-eq v2, v5, :cond_19

    .line 754
    .line 755
    move v2, v3

    .line 756
    goto :goto_b

    .line 757
    :cond_19
    move v2, v14

    .line 758
    :goto_b
    and-int/lit8 v5, v8, 0x1

    .line 759
    .line 760
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 761
    .line 762
    invoke-virtual {v4, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 763
    .line 764
    .line 765
    move-result v2

    .line 766
    if-eqz v2, :cond_1d

    .line 767
    .line 768
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 769
    .line 770
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v5

    .line 774
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 775
    .line 776
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    const/high16 v5, 0x41400000    # 12.0f

    .line 780
    .line 781
    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 782
    .line 783
    .line 784
    move-result-object v5

    .line 785
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v8

    .line 789
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 790
    .line 791
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    .line 793
    .line 794
    new-instance v8, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 795
    .line 796
    new-instance v10, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 797
    .line 798
    const/4 v11, 0x7

    .line 799
    invoke-direct {v10, v11}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 800
    .line 801
    .line 802
    invoke-direct {v8, v9, v3, v10}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 803
    .line 804
    .line 805
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 806
    .line 807
    invoke-static {v8, v10, v4, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 808
    .line 809
    .line 810
    move-result-object v8

    .line 811
    iget-wide v10, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 812
    .line 813
    const/16 v16, 0x20

    .line 814
    .line 815
    ushr-long v19, v10, v16

    .line 816
    .line 817
    xor-long v10, v10, v19

    .line 818
    .line 819
    long-to-int v10, v10

    .line 820
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 821
    .line 822
    .line 823
    move-result-object v11

    .line 824
    invoke-static {v4, v5}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 825
    .line 826
    .line 827
    move-result-object v5

    .line 828
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 829
    .line 830
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 834
    .line 835
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 836
    .line 837
    .line 838
    iget-boolean v3, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 839
    .line 840
    if-eqz v3, :cond_1a

    .line 841
    .line 842
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 843
    .line 844
    .line 845
    goto :goto_c

    .line 846
    :cond_1a
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 847
    .line 848
    .line 849
    :goto_c
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 850
    .line 851
    invoke-static {v4, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 852
    .line 853
    .line 854
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 855
    .line 856
    invoke-static {v4, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 857
    .line 858
    .line 859
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 860
    .line 861
    .line 862
    move-result-object v10

    .line 863
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 864
    .line 865
    invoke-static {v4, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 866
    .line 867
    .line 868
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 869
    .line 870
    invoke-static {v4, v10}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 871
    .line 872
    .line 873
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 874
    .line 875
    invoke-static {v4, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v5

    .line 882
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 883
    .line 884
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    .line 886
    .line 887
    new-instance v5, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 888
    .line 889
    move-object/from16 v21, v13

    .line 890
    .line 891
    new-instance v13, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 892
    .line 893
    move-object/from16 v22, v15

    .line 894
    .line 895
    const/4 v15, 0x7

    .line 896
    invoke-direct {v13, v15}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 897
    .line 898
    .line 899
    move-object/from16 p1, v2

    .line 900
    .line 901
    const/4 v2, 0x1

    .line 902
    const/high16 v15, 0x41000000    # 8.0f

    .line 903
    .line 904
    invoke-direct {v5, v15, v2, v13}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 905
    .line 906
    .line 907
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 908
    .line 909
    const/4 v13, 0x0

    .line 910
    invoke-static {v5, v2, v4, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    move-object/from16 v17, v12

    .line 915
    .line 916
    iget-wide v12, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 917
    .line 918
    ushr-long v23, v12, v16

    .line 919
    .line 920
    xor-long v12, v12, v23

    .line 921
    .line 922
    long-to-int v5, v12

    .line 923
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 924
    .line 925
    .line 926
    move-result-object v12

    .line 927
    invoke-static {v4, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 928
    .line 929
    .line 930
    move-result-object v6

    .line 931
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 932
    .line 933
    .line 934
    iget-boolean v13, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 935
    .line 936
    if-eqz v13, :cond_1b

    .line 937
    .line 938
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 939
    .line 940
    .line 941
    goto :goto_d

    .line 942
    :cond_1b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 943
    .line 944
    .line 945
    :goto_d
    invoke-static {v4, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 946
    .line 947
    .line 948
    invoke-static {v4, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 949
    .line 950
    .line 951
    invoke-static {v5, v4, v11, v4, v10}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 952
    .line 953
    .line 954
    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 955
    .line 956
    .line 957
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 958
    .line 959
    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 960
    .line 961
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 962
    .line 963
    invoke-direct {v5, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    new-instance v6, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 971
    .line 972
    const/16 v12, 0x14

    .line 973
    .line 974
    move-object/from16 v13, v17

    .line 975
    .line 976
    invoke-direct {v6, v12, v7, v13}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 977
    .line 978
    .line 979
    const v7, -0x7198c527

    .line 980
    .line 981
    .line 982
    invoke-static {v7, v6, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 983
    .line 984
    .line 985
    move-result-object v6

    .line 986
    const/16 v7, 0x38

    .line 987
    .line 988
    invoke-static {v5, v6, v4, v7}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 989
    .line 990
    .line 991
    const/4 v5, 0x1

    .line 992
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 993
    .line 994
    .line 995
    move-object/from16 v6, p1

    .line 996
    .line 997
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v6

    .line 1001
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 1002
    .line 1003
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    .line 1005
    .line 1006
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 1007
    .line 1008
    new-instance v12, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 1009
    .line 1010
    new-instance v13, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 1011
    .line 1012
    const/16 v15, 0x9

    .line 1013
    .line 1014
    invoke-direct {v13, v15, v6}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1015
    .line 1016
    .line 1017
    const/high16 v15, 0x41000000    # 8.0f

    .line 1018
    .line 1019
    invoke-direct {v12, v15, v5, v13}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 1020
    .line 1021
    .line 1022
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1023
    .line 1024
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 1025
    .line 1026
    const-string v13, "banner_inline_card_action_row"

    .line 1027
    .line 1028
    invoke-static {v6, v13}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v6

    .line 1032
    const/16 v13, 0x30

    .line 1033
    .line 1034
    invoke-static {v12, v5, v4, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v5

    .line 1038
    iget-wide v12, v4, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1039
    .line 1040
    ushr-long v15, v12, v16

    .line 1041
    .line 1042
    xor-long/2addr v12, v15

    .line 1043
    long-to-int v12, v12

    .line 1044
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v13

    .line 1048
    invoke-static {v4, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v6

    .line 1052
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1053
    .line 1054
    .line 1055
    iget-boolean v15, v4, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1056
    .line 1057
    if-eqz v15, :cond_1c

    .line 1058
    .line 1059
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1060
    .line 1061
    .line 1062
    goto :goto_e

    .line 1063
    :cond_1c
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1064
    .line 1065
    .line 1066
    :goto_e
    invoke-static {v4, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-static {v4, v13, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-static {v12, v4, v11, v4, v10}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-static {v4, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1076
    .line 1077
    .line 1078
    new-instance v3, Landroidx/compose/ui/graphics/Color;

    .line 1079
    .line 1080
    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    new-instance v1, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;

    .line 1088
    .line 1089
    const/4 v2, 0x5

    .line 1090
    move-object/from16 v15, v22

    .line 1091
    .line 1092
    invoke-direct {v1, v15, v2}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 1093
    .line 1094
    .line 1095
    const v2, -0x54f370fe

    .line 1096
    .line 1097
    .line 1098
    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    invoke-static {v0, v1, v4, v7}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1103
    .line 1104
    .line 1105
    const/4 v2, 0x1

    .line 1106
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_f

    .line 1113
    :cond_1d
    move-object/from16 v21, v13

    .line 1114
    .line 1115
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1116
    .line 1117
    .line 1118
    :goto_f
    return-object v21

    .line 1119
    :pswitch_5
    move-object/from16 v21, v13

    .line 1120
    .line 1121
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1122
    .line 1123
    check-cast v7, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 1124
    .line 1125
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1126
    .line 1127
    check-cast v15, Lkotlin/jvm/functions/Function2;

    .line 1128
    .line 1129
    move-object/from16 v1, p1

    .line 1130
    .line 1131
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 1132
    .line 1133
    move-object/from16 v3, p2

    .line 1134
    .line 1135
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 1136
    .line 1137
    move-object/from16 v4, p3

    .line 1138
    .line 1139
    check-cast v4, Ljava/lang/Integer;

    .line 1140
    .line 1141
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1142
    .line 1143
    .line 1144
    move-result v4

    .line 1145
    const/16 v19, 0x0

    .line 1146
    .line 1147
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v6

    .line 1151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1152
    .line 1153
    .line 1154
    and-int/lit8 v1, v4, 0x11

    .line 1155
    .line 1156
    if-eq v1, v5, :cond_1e

    .line 1157
    .line 1158
    const/4 v1, 0x1

    .line 1159
    :goto_10
    const/4 v5, 0x1

    .line 1160
    goto :goto_11

    .line 1161
    :cond_1e
    const/4 v1, 0x0

    .line 1162
    goto :goto_10

    .line 1163
    :goto_11
    and-int/2addr v4, v5

    .line 1164
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1165
    .line 1166
    invoke-virtual {v3, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v1

    .line 1170
    if-eqz v1, :cond_21

    .line 1171
    .line 1172
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 1173
    .line 1174
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1175
    .line 1176
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v4

    .line 1180
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 1181
    .line 1182
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1183
    .line 1184
    .line 1185
    const/high16 v4, 0x42400000    # 48.0f

    .line 1186
    .line 1187
    const/4 v5, 0x2

    .line 1188
    invoke-static {v1, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1193
    .line 1194
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v8

    .line 1198
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 1199
    .line 1200
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    const/high16 v8, 0x41000000    # 8.0f

    .line 1204
    .line 1205
    invoke-static {v1, v8, v2, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1210
    .line 1211
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v4

    .line 1215
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 1216
    .line 1217
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1218
    .line 1219
    .line 1220
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 1221
    .line 1222
    new-instance v5, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 1223
    .line 1224
    const/4 v11, 0x7

    .line 1225
    invoke-direct {v5, v11}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1226
    .line 1227
    .line 1228
    const/4 v9, 0x1

    .line 1229
    invoke-direct {v4, v8, v9, v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 1230
    .line 1231
    .line 1232
    const/16 v13, 0x30

    .line 1233
    .line 1234
    invoke-static {v4, v2, v3, v13}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v2

    .line 1238
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1239
    .line 1240
    const/16 v8, 0x20

    .line 1241
    .line 1242
    ushr-long v9, v4, v8

    .line 1243
    .line 1244
    xor-long/2addr v4, v9

    .line 1245
    long-to-int v4, v4

    .line 1246
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v5

    .line 1250
    invoke-static {v3, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v1

    .line 1254
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1255
    .line 1256
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1257
    .line 1258
    .line 1259
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1260
    .line 1261
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1262
    .line 1263
    .line 1264
    iget-boolean v10, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1265
    .line 1266
    if-eqz v10, :cond_1f

    .line 1267
    .line 1268
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_12

    .line 1272
    :cond_1f
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1273
    .line 1274
    .line 1275
    :goto_12
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1276
    .line 1277
    invoke-static {v3, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1278
    .line 1279
    .line 1280
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1281
    .line 1282
    invoke-static {v3, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v4

    .line 1289
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1290
    .line 1291
    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1292
    .line 1293
    .line 1294
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1295
    .line 1296
    invoke-static {v3, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1297
    .line 1298
    .line 1299
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1300
    .line 1301
    invoke-static {v3, v1, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v0, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    new-instance v0, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 1308
    .line 1309
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1310
    .line 1311
    const/4 v13, 0x1

    .line 1312
    invoke-direct {v0, v1, v13}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 1313
    .line 1314
    .line 1315
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1316
    .line 1317
    const/4 v13, 0x0

    .line 1318
    invoke-static {v1, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v1

    .line 1322
    iget-wide v13, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1323
    .line 1324
    ushr-long v16, v13, v8

    .line 1325
    .line 1326
    xor-long v13, v13, v16

    .line 1327
    .line 1328
    long-to-int v8, v13

    .line 1329
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v13

    .line 1333
    invoke-static {v3, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1338
    .line 1339
    .line 1340
    iget-boolean v14, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1341
    .line 1342
    if-eqz v14, :cond_20

    .line 1343
    .line 1344
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1345
    .line 1346
    .line 1347
    goto :goto_13

    .line 1348
    :cond_20
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1349
    .line 1350
    .line 1351
    :goto_13
    invoke-static {v3, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1352
    .line 1353
    .line 1354
    invoke-static {v3, v13, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-static {v8, v3, v5, v3, v4}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-static {v3, v0, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v12, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    const/4 v2, 0x1

    .line 1367
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1368
    .line 1369
    .line 1370
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1371
    .line 1372
    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1373
    .line 1374
    iget-wide v4, v7, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;->contentColor:J

    .line 1375
    .line 1376
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 1377
    .line 1378
    invoke-direct {v1, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0

    .line 1385
    new-instance v1, Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;

    .line 1386
    .line 1387
    invoke-direct {v1, v2, v15}, Landroidx/compose/runtime/saveable/ListSaverKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 1388
    .line 1389
    .line 1390
    const v4, 0x6f3fbde

    .line 1391
    .line 1392
    .line 1393
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v1

    .line 1397
    const/16 v4, 0x38

    .line 1398
    .line 1399
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1403
    .line 1404
    .line 1405
    goto :goto_14

    .line 1406
    :cond_21
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1407
    .line 1408
    .line 1409
    :goto_14
    return-object v21

    .line 1410
    :pswitch_6
    move-object/from16 v21, v13

    .line 1411
    .line 1412
    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    .line 1413
    .line 1414
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 1415
    .line 1416
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 1417
    .line 1418
    move-object/from16 v1, p1

    .line 1419
    .line 1420
    check-cast v1, Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;

    .line 1421
    .line 1422
    move-object/from16 v2, p2

    .line 1423
    .line 1424
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1425
    .line 1426
    move-object/from16 v3, p3

    .line 1427
    .line 1428
    check-cast v3, Ljava/lang/Integer;

    .line 1429
    .line 1430
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1431
    .line 1432
    .line 1433
    move-result v3

    .line 1434
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1435
    .line 1436
    .line 1437
    and-int/lit8 v5, v3, 0x6

    .line 1438
    .line 1439
    if-nez v5, :cond_23

    .line 1440
    .line 1441
    move-object v5, v2

    .line 1442
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 1443
    .line 1444
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v5

    .line 1448
    if-eqz v5, :cond_22

    .line 1449
    .line 1450
    goto :goto_15

    .line 1451
    :cond_22
    const/4 v11, 0x2

    .line 1452
    :goto_15
    or-int/2addr v3, v11

    .line 1453
    :cond_23
    and-int/lit8 v5, v3, 0x13

    .line 1454
    .line 1455
    if-eq v5, v10, :cond_24

    .line 1456
    .line 1457
    const/4 v5, 0x1

    .line 1458
    goto :goto_16

    .line 1459
    :cond_24
    const/4 v5, 0x0

    .line 1460
    :goto_16
    and-int/lit8 v6, v3, 0x1

    .line 1461
    .line 1462
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1463
    .line 1464
    invoke-virtual {v2, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1465
    .line 1466
    .line 1467
    move-result v5

    .line 1468
    if-eqz v5, :cond_2b

    .line 1469
    .line 1470
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v5

    .line 1474
    const/4 v14, 0x0

    .line 1475
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1476
    .line 1477
    .line 1478
    move-result v6

    .line 1479
    if-eqz v6, :cond_2c

    .line 1480
    .line 1481
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v6

    .line 1485
    add-int/lit8 v9, v14, 0x1

    .line 1486
    .line 1487
    if-ltz v14, :cond_2a

    .line 1488
    .line 1489
    sget-object v10, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 1490
    .line 1491
    move-object v10, v0

    .line 1492
    check-cast v10, Lkotlin/collections/AbstractCollection;

    .line 1493
    .line 1494
    invoke-virtual {v10}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 1495
    .line 1496
    .line 1497
    move-result v10

    .line 1498
    sget-object v11, Landroidx/compose/material3/tokens/ListTokens;->Shape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 1499
    .line 1500
    invoke-static {v11, v2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v11

    .line 1504
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1505
    .line 1506
    .line 1507
    move-object/from16 v22, v11

    .line 1508
    .line 1509
    check-cast v22, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1510
    .line 1511
    const/4 v13, 0x1

    .line 1512
    if-ne v10, v13, :cond_25

    .line 1513
    .line 1514
    :goto_18
    move-object/from16 v25, v22

    .line 1515
    .line 1516
    goto :goto_1a

    .line 1517
    :cond_25
    if-nez v14, :cond_26

    .line 1518
    .line 1519
    sget-object v24, Landroidx/compose/material3/ShapeDefaults;->CornerNone:Landroidx/compose/foundation/shape/DpCornerSize;

    .line 1520
    .line 1521
    const/16 v26, 0x0

    .line 1522
    .line 1523
    const/16 v27, 0x9

    .line 1524
    .line 1525
    const/16 v23, 0x0

    .line 1526
    .line 1527
    move-object/from16 v25, v24

    .line 1528
    .line 1529
    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/shape/RoundedCornerShape;->copy$default(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v10

    .line 1533
    :goto_19
    move-object/from16 v22, v10

    .line 1534
    .line 1535
    goto :goto_18

    .line 1536
    :cond_26
    add-int/lit8 v10, v10, -0x1

    .line 1537
    .line 1538
    if-ne v14, v10, :cond_27

    .line 1539
    .line 1540
    sget-object v23, Landroidx/compose/material3/ShapeDefaults;->CornerNone:Landroidx/compose/foundation/shape/DpCornerSize;

    .line 1541
    .line 1542
    const/16 v25, 0x0

    .line 1543
    .line 1544
    const/16 v27, 0x6

    .line 1545
    .line 1546
    const/16 v24, 0x0

    .line 1547
    .line 1548
    move-object/from16 v26, v23

    .line 1549
    .line 1550
    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/shape/RoundedCornerShape;->copy$default(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v10

    .line 1554
    goto :goto_19

    .line 1555
    :cond_27
    sget-object v10, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 1556
    .line 1557
    goto :goto_19

    .line 1558
    :goto_1a
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1559
    .line 1560
    .line 1561
    move-result v23

    .line 1562
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    move-result v10

    .line 1566
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v11

    .line 1570
    or-int/2addr v10, v11

    .line 1571
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v11

    .line 1575
    if-nez v10, :cond_29

    .line 1576
    .line 1577
    if-ne v11, v8, :cond_28

    .line 1578
    .line 1579
    goto :goto_1b

    .line 1580
    :cond_28
    const/4 v13, 0x2

    .line 1581
    goto :goto_1c

    .line 1582
    :cond_29
    :goto_1b
    new-instance v11, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda1;

    .line 1583
    .line 1584
    const/4 v13, 0x2

    .line 1585
    invoke-direct {v11, v13, v6, v12}, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1589
    .line 1590
    .line 1591
    :goto_1c
    move-object/from16 v24, v11

    .line 1592
    .line 1593
    check-cast v24, Lkotlin/jvm/functions/Function0;

    .line 1594
    .line 1595
    new-instance v10, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda6;

    .line 1596
    .line 1597
    const/4 v14, 0x1

    .line 1598
    invoke-direct {v10, v14, v6, v15}, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 1599
    .line 1600
    .line 1601
    const v6, 0x7c33cec6    # 3.73446E36f

    .line 1602
    .line 1603
    .line 1604
    invoke-static {v6, v10, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v32

    .line 1608
    and-int/lit8 v34, v3, 0xe

    .line 1609
    .line 1610
    const/16 v26, 0x0

    .line 1611
    .line 1612
    const/16 v27, 0x0

    .line 1613
    .line 1614
    const/16 v28, 0x0

    .line 1615
    .line 1616
    const/16 v29, 0x0

    .line 1617
    .line 1618
    const/16 v30, 0x0

    .line 1619
    .line 1620
    const/16 v31, 0x0

    .line 1621
    .line 1622
    move-object/from16 v22, v1

    .line 1623
    .line 1624
    move-object/from16 v33, v2

    .line 1625
    .line 1626
    invoke-static/range {v22 .. v34}, Landroidx/compose/material3/CardKt;->SegmentedButton(Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1627
    .line 1628
    .line 1629
    move v14, v9

    .line 1630
    goto/16 :goto_17

    .line 1631
    .line 1632
    :cond_2a
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 1633
    .line 1634
    .line 1635
    throw v4

    .line 1636
    :cond_2b
    move-object/from16 v33, v2

    .line 1637
    .line 1638
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1639
    .line 1640
    .line 1641
    :cond_2c
    return-object v21

    .line 1642
    :pswitch_7
    move v14, v3

    .line 1643
    move-object/from16 v21, v13

    .line 1644
    .line 1645
    const/4 v13, 0x2

    .line 1646
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1647
    .line 1648
    check-cast v7, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    .line 1649
    .line 1650
    move-object/from16 v26, v12

    .line 1651
    .line 1652
    check-cast v26, Lkotlin/jvm/functions/Function3;

    .line 1653
    .line 1654
    move-object/from16 v27, v15

    .line 1655
    .line 1656
    check-cast v27, Lkotlin/jvm/functions/Function0;

    .line 1657
    .line 1658
    move-object/from16 v1, p1

    .line 1659
    .line 1660
    check-cast v1, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 1661
    .line 1662
    move-object/from16 v2, p2

    .line 1663
    .line 1664
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1665
    .line 1666
    move-object/from16 v3, p3

    .line 1667
    .line 1668
    check-cast v3, Ljava/lang/Integer;

    .line 1669
    .line 1670
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1671
    .line 1672
    .line 1673
    move-result v3

    .line 1674
    and-int/lit8 v4, v3, 0x6

    .line 1675
    .line 1676
    if-nez v4, :cond_2e

    .line 1677
    .line 1678
    move-object v4, v2

    .line 1679
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 1680
    .line 1681
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v4

    .line 1685
    if-eqz v4, :cond_2d

    .line 1686
    .line 1687
    goto :goto_1d

    .line 1688
    :cond_2d
    move v11, v13

    .line 1689
    :goto_1d
    or-int/2addr v3, v11

    .line 1690
    :cond_2e
    and-int/lit8 v4, v3, 0x13

    .line 1691
    .line 1692
    if-eq v4, v10, :cond_2f

    .line 1693
    .line 1694
    goto :goto_1e

    .line 1695
    :cond_2f
    const/4 v14, 0x0

    .line 1696
    :goto_1e
    and-int/lit8 v4, v3, 0x1

    .line 1697
    .line 1698
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1699
    .line 1700
    invoke-virtual {v2, v4, v14}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v4

    .line 1704
    if-eqz v4, :cond_31

    .line 1705
    .line 1706
    const/16 v19, 0x0

    .line 1707
    .line 1708
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v4

    .line 1712
    invoke-interface {v0, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v0

    .line 1716
    move-object/from16 v23, v0

    .line 1717
    .line 1718
    check-cast v23, Ljava/lang/String;

    .line 1719
    .line 1720
    invoke-static/range {v23 .. v23}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1721
    .line 1722
    .line 1723
    move-result v0

    .line 1724
    if-eqz v0, :cond_30

    .line 1725
    .line 1726
    const-string v0, "Label must not be blank"

    .line 1727
    .line 1728
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1729
    .line 1730
    .line 1731
    :cond_30
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1732
    .line 1733
    .line 1734
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1735
    .line 1736
    shl-int/lit8 v0, v3, 0x9

    .line 1737
    .line 1738
    and-int/lit16 v0, v0, 0x1c00

    .line 1739
    .line 1740
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v29

    .line 1744
    sget-object v22, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProviderKt;->lambda$-1571120048:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1745
    .line 1746
    move-object/from16 v25, v1

    .line 1747
    .line 1748
    move-object/from16 v28, v2

    .line 1749
    .line 1750
    invoke-virtual/range {v22 .. v29}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;Ljava/lang/Integer;)Ljava/lang/Object;

    .line 1751
    .line 1752
    .line 1753
    goto :goto_1f

    .line 1754
    :cond_31
    move-object/from16 v28, v2

    .line 1755
    .line 1756
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1757
    .line 1758
    .line 1759
    :goto_1f
    return-object v21

    .line 1760
    :pswitch_8
    move v14, v3

    .line 1761
    move-object v5, v0

    .line 1762
    check-cast v5, Landroidx/compose/ui/graphics/SolidColor;

    .line 1763
    .line 1764
    check-cast v7, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1765
    .line 1766
    move-object v3, v12

    .line 1767
    check-cast v3, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1768
    .line 1769
    move-object v2, v15

    .line 1770
    check-cast v2, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1771
    .line 1772
    move-object/from16 v9, p1

    .line 1773
    .line 1774
    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 1775
    .line 1776
    move-object/from16 v0, p2

    .line 1777
    .line 1778
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1779
    .line 1780
    move-object/from16 v1, p3

    .line 1781
    .line 1782
    check-cast v1, Ljava/lang/Integer;

    .line 1783
    .line 1784
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1785
    .line 1786
    .line 1787
    move-object v10, v0

    .line 1788
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 1789
    .line 1790
    const v0, -0x5097aed    # -6.4000205E35f

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1794
    .line 1795
    .line 1796
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalCursorBlinkEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1797
    .line 1798
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v0

    .line 1802
    check-cast v0, Ljava/lang/Boolean;

    .line 1803
    .line 1804
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1805
    .line 1806
    .line 1807
    move-result v0

    .line 1808
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 1809
    .line 1810
    .line 1811
    move-result v1

    .line 1812
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v11

    .line 1816
    if-nez v1, :cond_32

    .line 1817
    .line 1818
    if-ne v11, v8, :cond_33

    .line 1819
    .line 1820
    :cond_32
    new-instance v11, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 1821
    .line 1822
    invoke-direct {v11, v0}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;-><init>(Z)V

    .line 1823
    .line 1824
    .line 1825
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1826
    .line 1827
    .line 1828
    :cond_33
    move-object v1, v11

    .line 1829
    check-cast v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 1830
    .line 1831
    iget-wide v11, v5, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 1832
    .line 1833
    const-wide/16 v15, 0x10

    .line 1834
    .line 1835
    cmp-long v0, v11, v15

    .line 1836
    .line 1837
    if-nez v0, :cond_34

    .line 1838
    .line 1839
    const/4 v14, 0x0

    .line 1840
    :cond_34
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalWindowInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1841
    .line 1842
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v0

    .line 1846
    check-cast v0, Landroidx/compose/ui/platform/WindowInfo;

    .line 1847
    .line 1848
    check-cast v0, Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 1849
    .line 1850
    iget-object v0, v0, Landroidx/compose/ui/platform/LazyWindowInfo;->isWindowFocused$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1851
    .line 1852
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v0

    .line 1856
    check-cast v0, Ljava/lang/Boolean;

    .line 1857
    .line 1858
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1859
    .line 1860
    .line 1861
    move-result v0

    .line 1862
    if-eqz v0, :cond_39

    .line 1863
    .line 1864
    invoke-virtual {v7}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 1865
    .line 1866
    .line 1867
    move-result v0

    .line 1868
    if-eqz v0, :cond_39

    .line 1869
    .line 1870
    iget-wide v11, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 1871
    .line 1872
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 1873
    .line 1874
    .line 1875
    move-result v0

    .line 1876
    if-eqz v0, :cond_39

    .line 1877
    .line 1878
    if-eqz v14, :cond_39

    .line 1879
    .line 1880
    const v0, -0x2a2b68da

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1884
    .line 1885
    .line 1886
    iget-object v0, v3, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 1887
    .line 1888
    iget-wide v11, v3, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 1889
    .line 1890
    new-instance v6, Landroidx/compose/ui/text/TextRange;

    .line 1891
    .line 1892
    invoke-direct {v6, v11, v12}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 1893
    .line 1894
    .line 1895
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1896
    .line 1897
    .line 1898
    move-result v11

    .line 1899
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v12

    .line 1903
    if-nez v11, :cond_35

    .line 1904
    .line 1905
    if-ne v12, v8, :cond_36

    .line 1906
    .line 1907
    :cond_35
    new-instance v12, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 1908
    .line 1909
    const/16 v11, 0x15

    .line 1910
    .line 1911
    invoke-direct {v12, v1, v4, v11}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1912
    .line 1913
    .line 1914
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1915
    .line 1916
    .line 1917
    :cond_36
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 1918
    .line 1919
    invoke-static {v0, v6, v12, v10}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1923
    .line 1924
    .line 1925
    move-result v0

    .line 1926
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1927
    .line 1928
    .line 1929
    move-result v4

    .line 1930
    or-int/2addr v0, v4

    .line 1931
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1932
    .line 1933
    .line 1934
    move-result v4

    .line 1935
    or-int/2addr v0, v4

    .line 1936
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1937
    .line 1938
    .line 1939
    move-result v4

    .line 1940
    or-int/2addr v0, v4

    .line 1941
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1942
    .line 1943
    .line 1944
    move-result v4

    .line 1945
    or-int/2addr v0, v4

    .line 1946
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v4

    .line 1950
    if-nez v0, :cond_37

    .line 1951
    .line 1952
    if-ne v4, v8, :cond_38

    .line 1953
    .line 1954
    :cond_37
    new-instance v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;

    .line 1955
    .line 1956
    const/4 v6, 0x3

    .line 1957
    move-object v4, v7

    .line 1958
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1959
    .line 1960
    .line 1961
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1962
    .line 1963
    .line 1964
    move-object v4, v0

    .line 1965
    :cond_38
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1966
    .line 1967
    invoke-static {v9, v4}, Landroidx/compose/ui/draw/ClipKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v6

    .line 1971
    const/4 v13, 0x0

    .line 1972
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1973
    .line 1974
    .line 1975
    goto :goto_20

    .line 1976
    :cond_39
    const/4 v13, 0x0

    .line 1977
    const v0, -0x2a0caad9

    .line 1978
    .line 1979
    .line 1980
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1981
    .line 1982
    .line 1983
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1984
    .line 1985
    .line 1986
    :goto_20
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1987
    .line 1988
    .line 1989
    return-object v6

    .line 1990
    nop

    .line 1991
    :pswitch_data_0
    .packed-switch 0x0
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
