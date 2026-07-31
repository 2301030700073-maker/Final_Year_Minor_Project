.class public final synthetic Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

.field public final synthetic f$1:Landroid/content/res/Resources;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;->f$0:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;->f$1:Landroid/content/res/Resources;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v6, 0x10

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    iget-object v9, v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iget-object v10, v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;->f$1:Landroid/content/res/Resources;

    .line 19
    .line 20
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContentKt$$ExternalSyntheticLambda4;->f$0:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 28
    .line 29
    move-object/from16 v11, p2

    .line 30
    .line 31
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 32
    .line 33
    move-object/from16 v12, p3

    .line 34
    .line 35
    check-cast v12, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    and-int/lit8 v1, v12, 0x11

    .line 45
    .line 46
    if-eq v1, v6, :cond_0

    .line 47
    .line 48
    move v7, v8

    .line 49
    :cond_0
    and-int/lit8 v1, v12, 0x1

    .line 50
    .line 51
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-virtual {v11, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 60
    .line 61
    iget-object v14, v0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-static {v0, v10}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    :cond_1
    move-object/from16 v17, v5

    .line 72
    .line 73
    const v0, 0x7f120190

    .line 74
    .line 75
    .line 76
    invoke-static {v11, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    invoke-static {v11}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 81
    .line 82
    .line 83
    move-result-object v18

    .line 84
    const-string v0, "account_setup_display_options_signature_input"

    .line 85
    .line 86
    invoke-static {v4, v0}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    if-ne v1, v3, :cond_3

    .line 101
    .line 102
    :cond_2
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    const/16 v0, 0x8

    .line 105
    .line 106
    invoke-direct {v1, v0, v9}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    move-object v12, v1

    .line 113
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    const v24, 0xc00030

    .line 116
    .line 117
    .line 118
    const/16 v25, 0x710

    .line 119
    .line 120
    const/16 v16, 0x0

    .line 121
    .line 122
    const/16 v19, 0x0

    .line 123
    .line 124
    const/16 v20, 0x0

    .line 125
    .line 126
    const/16 v21, 0x0

    .line 127
    .line 128
    const/16 v22, 0x0

    .line 129
    .line 130
    move-object/from16 v23, v11

    .line 131
    .line 132
    invoke-static/range {v12 .. v25}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    move-object/from16 v23, v11

    .line 137
    .line 138
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 139
    .line 140
    .line 141
    :goto_0
    return-object v2

    .line 142
    :pswitch_0
    move-object/from16 v1, p1

    .line 143
    .line 144
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 145
    .line 146
    move-object/from16 v11, p2

    .line 147
    .line 148
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 149
    .line 150
    move-object/from16 v12, p3

    .line 151
    .line 152
    check-cast v12, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    and-int/lit8 v1, v12, 0x11

    .line 162
    .line 163
    if-eq v1, v6, :cond_5

    .line 164
    .line 165
    move v7, v8

    .line 166
    :cond_5
    and-int/lit8 v1, v12, 0x1

    .line 167
    .line 168
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 169
    .line 170
    invoke-virtual {v11, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_9

    .line 175
    .line 176
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 177
    .line 178
    iget-object v14, v0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 181
    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    invoke-static {v0, v10}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    :cond_6
    move-object/from16 v17, v5

    .line 189
    .line 190
    const v0, 0x7f1201a9

    .line 191
    .line 192
    .line 193
    invoke-static {v11, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    invoke-static {v11}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v18

    .line 201
    const-string v0, "account_setup_display_options_display_name_input"

    .line 202
    .line 203
    invoke-static {v4, v0}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-nez v0, :cond_7

    .line 216
    .line 217
    if-ne v1, v3, :cond_8

    .line 218
    .line 219
    :cond_7
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    const/16 v0, 0xa

    .line 222
    .line 223
    invoke-direct {v1, v0, v9}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_8
    move-object v12, v1

    .line 230
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 231
    .line 232
    const/16 v24, 0x6030

    .line 233
    .line 234
    const/16 v25, 0x780

    .line 235
    .line 236
    const/16 v16, 0x1

    .line 237
    .line 238
    const/16 v19, 0x0

    .line 239
    .line 240
    const/16 v20, 0x0

    .line 241
    .line 242
    const/16 v21, 0x0

    .line 243
    .line 244
    const/16 v22, 0x0

    .line 245
    .line 246
    move-object/from16 v23, v11

    .line 247
    .line 248
    invoke-static/range {v12 .. v25}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_9
    move-object/from16 v23, v11

    .line 253
    .line 254
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 255
    .line 256
    .line 257
    :goto_1
    return-object v2

    .line 258
    :pswitch_1
    move-object/from16 v1, p1

    .line 259
    .line 260
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 261
    .line 262
    move-object/from16 v11, p2

    .line 263
    .line 264
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 265
    .line 266
    move-object/from16 v12, p3

    .line 267
    .line 268
    check-cast v12, Ljava/lang/Integer;

    .line 269
    .line 270
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    and-int/lit8 v1, v12, 0x11

    .line 278
    .line 279
    if-eq v1, v6, :cond_a

    .line 280
    .line 281
    move v7, v8

    .line 282
    :cond_a
    and-int/lit8 v1, v12, 0x1

    .line 283
    .line 284
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 285
    .line 286
    invoke-virtual {v11, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_e

    .line 291
    .line 292
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 293
    .line 294
    iget-object v14, v0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 295
    .line 296
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 297
    .line 298
    if-eqz v0, :cond_b

    .line 299
    .line 300
    invoke-static {v0, v10}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    :cond_b
    move-object/from16 v17, v5

    .line 305
    .line 306
    const v0, 0x7f12018c

    .line 307
    .line 308
    .line 309
    invoke-static {v11, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v15

    .line 313
    invoke-static {v11}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 314
    .line 315
    .line 316
    move-result-object v18

    .line 317
    const-string v0, "account_setup_display_options_account_name_input"

    .line 318
    .line 319
    invoke-static {v4, v0}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 320
    .line 321
    .line 322
    move-result-object v13

    .line 323
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    if-nez v0, :cond_c

    .line 332
    .line 333
    if-ne v1, v3, :cond_d

    .line 334
    .line 335
    :cond_c
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 336
    .line 337
    const/16 v0, 0x9

    .line 338
    .line 339
    invoke-direct {v1, v0, v9}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    :cond_d
    move-object v12, v1

    .line 346
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 347
    .line 348
    const/16 v24, 0x30

    .line 349
    .line 350
    const/16 v25, 0x790

    .line 351
    .line 352
    const/16 v16, 0x0

    .line 353
    .line 354
    const/16 v19, 0x0

    .line 355
    .line 356
    const/16 v20, 0x0

    .line 357
    .line 358
    const/16 v21, 0x0

    .line 359
    .line 360
    const/16 v22, 0x0

    .line 361
    .line 362
    move-object/from16 v23, v11

    .line 363
    .line 364
    invoke-static/range {v12 .. v25}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_e
    move-object/from16 v23, v11

    .line 369
    .line 370
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 371
    .line 372
    .line 373
    :goto_2
    return-object v2

    .line 374
    nop

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
