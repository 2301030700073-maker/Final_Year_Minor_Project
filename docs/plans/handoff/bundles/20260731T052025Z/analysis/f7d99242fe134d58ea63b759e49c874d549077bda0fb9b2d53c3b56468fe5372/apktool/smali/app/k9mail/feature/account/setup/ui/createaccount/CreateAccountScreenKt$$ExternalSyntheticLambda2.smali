.class public final synthetic Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 12
    iput p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 14
    .line 15
    iget-object v8, v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/MutableState;

    .line 18
    .line 19
    const/4 v9, 0x2

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 26
    .line 27
    move-object/from16 v2, p2

    .line 28
    .line 29
    check-cast v2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    and-int/lit8 v10, v2, 0x3

    .line 36
    .line 37
    if-eq v10, v9, :cond_0

    .line 38
    .line 39
    move v9, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v9, v6

    .line 42
    :goto_0
    and-int/2addr v2, v5

    .line 43
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_6

    .line 50
    .line 51
    new-instance v15, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 52
    .line 53
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 58
    .line 59
    iget-boolean v2, v2, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isManualSetup:Z

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 68
    .line 69
    iget-boolean v0, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isLoading:Z

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v5, v6

    .line 75
    :goto_1
    const/16 v0, 0xd

    .line 76
    .line 77
    invoke-direct {v15, v0, v5, v6, v6}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;-><init>(IZZZ)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 81
    .line 82
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    if-ne v2, v7, :cond_3

    .line 97
    .line 98
    :cond_2
    new-instance v2, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 99
    .line 100
    const/16 v0, 0xe

    .line 101
    .line 102
    invoke-direct {v2, v0, v8}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    move-object v10, v2

    .line 109
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 110
    .line 111
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-nez v0, :cond_4

    .line 120
    .line 121
    if-ne v2, v7, :cond_5

    .line 122
    .line 123
    :cond_4
    new-instance v2, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 124
    .line 125
    const/16 v0, 0xf

    .line 126
    .line 127
    invoke-direct {v2, v0, v8}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    move-object v11, v2

    .line 134
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 135
    .line 136
    const/16 v17, 0x0

    .line 137
    .line 138
    const/16 v18, 0x18

    .line 139
    .line 140
    const/4 v13, 0x0

    .line 141
    const/4 v14, 0x0

    .line 142
    move-object/from16 v16, v1

    .line 143
    .line 144
    invoke-static/range {v10 .. v18}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    move-object/from16 v16, v1

    .line 149
    .line 150
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 151
    .line 152
    .line 153
    :goto_2
    return-object v4

    .line 154
    :pswitch_0
    move-object/from16 v1, p1

    .line 155
    .line 156
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 157
    .line 158
    move-object/from16 v3, p2

    .line 159
    .line 160
    check-cast v3, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    and-int/lit8 v10, v3, 0x3

    .line 167
    .line 168
    if-eq v10, v9, :cond_7

    .line 169
    .line 170
    move v10, v5

    .line 171
    goto :goto_3

    .line 172
    :cond_7
    move v10, v6

    .line 173
    :goto_3
    and-int/2addr v3, v5

    .line 174
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 175
    .line 176
    invoke-virtual {v1, v3, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_c

    .line 181
    .line 182
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-ne v3, v7, :cond_8

    .line 187
    .line 188
    new-instance v3, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 189
    .line 190
    invoke-direct {v3, v9}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_8
    move-object v11, v3

    .line 197
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 198
    .line 199
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    if-nez v3, :cond_9

    .line 208
    .line 209
    if-ne v9, v7, :cond_a

    .line 210
    .line 211
    :cond_9
    new-instance v9, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 212
    .line 213
    const/4 v3, 0x3

    .line 214
    invoke-direct {v9, v3, v8}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_a
    move-object v12, v9

    .line 221
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 222
    .line 223
    new-instance v3, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 224
    .line 225
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 230
    .line 231
    iget-object v0, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 232
    .line 233
    if-eqz v0, :cond_b

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_b
    move v5, v6

    .line 237
    :goto_4
    invoke-direct {v3, v2, v6, v5, v6}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;-><init>(IZZZ)V

    .line 238
    .line 239
    .line 240
    const/16 v18, 0x6

    .line 241
    .line 242
    const/16 v19, 0x1c

    .line 243
    .line 244
    const/4 v13, 0x0

    .line 245
    const/4 v14, 0x0

    .line 246
    const/4 v15, 0x0

    .line 247
    move-object/from16 v17, v1

    .line 248
    .line 249
    move-object/from16 v16, v3

    .line 250
    .line 251
    invoke-static/range {v11 .. v19}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_c
    move-object/from16 v17, v1

    .line 256
    .line 257
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 258
    .line 259
    .line 260
    :goto_5
    return-object v4

    .line 261
    :pswitch_1
    move-object/from16 v1, p1

    .line 262
    .line 263
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 264
    .line 265
    move-object/from16 v10, p2

    .line 266
    .line 267
    check-cast v10, Ljava/lang/Integer;

    .line 268
    .line 269
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 270
    .line 271
    .line 272
    move-result v10

    .line 273
    and-int/lit8 v11, v10, 0x3

    .line 274
    .line 275
    if-eq v11, v9, :cond_d

    .line 276
    .line 277
    move v11, v5

    .line 278
    goto :goto_6

    .line 279
    :cond_d
    move v11, v6

    .line 280
    :goto_6
    and-int/2addr v10, v5

    .line 281
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 282
    .line 283
    invoke-virtual {v1, v10, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 284
    .line 285
    .line 286
    move-result v10

    .line 287
    if-eqz v10, :cond_12

    .line 288
    .line 289
    new-instance v10, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 290
    .line 291
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 296
    .line 297
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->error:Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 298
    .line 299
    if-eqz v0, :cond_e

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_e
    move v5, v6

    .line 303
    :goto_7
    invoke-direct {v10, v2, v6, v5, v6}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;-><init>(IZZZ)V

    .line 304
    .line 305
    .line 306
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 307
    .line 308
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 309
    .line 310
    .line 311
    move-result-object v14

    .line 312
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    if-ne v0, v7, :cond_f

    .line 317
    .line 318
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 319
    .line 320
    invoke-direct {v0, v9}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_f
    move-object v12, v0

    .line 327
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 328
    .line 329
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    if-nez v0, :cond_10

    .line 338
    .line 339
    if-ne v2, v7, :cond_11

    .line 340
    .line 341
    :cond_10
    new-instance v2, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 342
    .line 343
    const/4 v0, 0x5

    .line 344
    invoke-direct {v2, v0, v8}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    :cond_11
    move-object v13, v2

    .line 351
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 352
    .line 353
    const/16 v19, 0x6

    .line 354
    .line 355
    const/16 v20, 0x18

    .line 356
    .line 357
    const/4 v15, 0x0

    .line 358
    const/16 v16, 0x0

    .line 359
    .line 360
    move-object/from16 v18, v1

    .line 361
    .line 362
    move-object/from16 v17, v10

    .line 363
    .line 364
    invoke-static/range {v12 .. v20}, Landroidx/core/util/DebugUtils;->WizardNavigationBar(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;Landroidx/compose/runtime/Composer;II)V

    .line 365
    .line 366
    .line 367
    goto :goto_8

    .line 368
    :cond_12
    move-object/from16 v18, v1

    .line 369
    .line 370
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 371
    .line 372
    .line 373
    :goto_8
    return-object v4

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
