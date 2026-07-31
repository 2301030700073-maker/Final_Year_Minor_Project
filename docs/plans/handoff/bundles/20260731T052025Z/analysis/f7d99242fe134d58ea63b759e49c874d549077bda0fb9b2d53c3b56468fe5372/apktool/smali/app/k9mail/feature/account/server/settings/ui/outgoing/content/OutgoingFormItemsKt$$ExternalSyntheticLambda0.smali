.class public final synthetic Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

.field public final synthetic f$1:Landroid/content/res/Resources;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Resources;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V
    .locals 0

    .line 13
    iput p4, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x7d

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 11
    .line 12
    const/16 v6, 0x10

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    iget-object v9, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iget-object v10, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Resources;

    .line 19
    .line 20
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/content/OutgoingFormItemsKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;

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
    move v1, v8

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v1, v7

    .line 51
    :goto_0
    and-int/lit8 v6, v12, 0x1

    .line 52
    .line 53
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {v11, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 62
    .line 63
    iget-object v14, v0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-static {v0, v10}, Lcom/fsck/k9/sasl/OAuthBearer;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :cond_1
    move-object/from16 v17, v3

    .line 74
    .line 75
    const v0, 0x7f120071

    .line 76
    .line 77
    .line 78
    invoke-static {v11, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    invoke-static {v11}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 83
    .line 84
    .line 85
    move-result-object v18

    .line 86
    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 87
    .line 88
    invoke-direct {v0, v7, v2}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(II)V

    .line 89
    .line 90
    .line 91
    sget-object v1, Landroidx/compose/ui/autofill/ContentType;->Companion:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    sget-object v1, Landroidx/compose/ui/autofill/ContentType$Companion;->Username:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 97
    .line 98
    sget-object v2, Landroidx/compose/ui/autofill/ContentType$Companion;->EmailAddress:Landroidx/compose/ui/autofill/AndroidContentType;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v1, v1, Landroidx/compose/ui/autofill/AndroidContentType;->androidAutofillHints:Ljava/util/Set;

    .line 107
    .line 108
    iget-object v2, v2, Landroidx/compose/ui/autofill/AndroidContentType;->androidAutofillHints:Ljava/util/Set;

    .line 109
    .line 110
    check-cast v2, Ljava/lang/Iterable;

    .line 111
    .line 112
    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Landroidx/compose/ui/autofill/AndroidContentType;

    .line 117
    .line 118
    invoke-direct {v2, v1}, Landroidx/compose/ui/autofill/AndroidContentType;-><init>(Ljava/util/Set;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-nez v1, :cond_2

    .line 130
    .line 131
    if-ne v3, v5, :cond_3

    .line 132
    .line 133
    :cond_2
    new-instance v3, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 134
    .line 135
    const/16 v1, 0x17

    .line 136
    .line 137
    invoke-direct {v3, v1, v9}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    move-object v12, v3

    .line 144
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 145
    .line 146
    const v24, 0x30006000

    .line 147
    .line 148
    .line 149
    const/16 v25, 0x182

    .line 150
    .line 151
    const/4 v13, 0x0

    .line 152
    const/16 v16, 0x1

    .line 153
    .line 154
    const/16 v19, 0x0

    .line 155
    .line 156
    const/16 v20, 0x0

    .line 157
    .line 158
    move-object/from16 v21, v0

    .line 159
    .line 160
    move-object/from16 v22, v2

    .line 161
    .line 162
    move-object/from16 v23, v11

    .line 163
    .line 164
    invoke-static/range {v12 .. v25}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    move-object/from16 v23, v11

    .line 169
    .line 170
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 171
    .line 172
    .line 173
    :goto_1
    return-object v4

    .line 174
    :pswitch_0
    move-object/from16 v1, p1

    .line 175
    .line 176
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 177
    .line 178
    move-object/from16 v2, p2

    .line 179
    .line 180
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 181
    .line 182
    move-object/from16 v3, p3

    .line 183
    .line 184
    check-cast v3, Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    and-int/lit8 v1, v3, 0x11

    .line 194
    .line 195
    if-eq v1, v6, :cond_5

    .line 196
    .line 197
    move v7, v8

    .line 198
    :cond_5
    and-int/lit8 v1, v3, 0x1

    .line 199
    .line 200
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 201
    .line 202
    invoke-virtual {v2, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 214
    .line 215
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    iget-object v12, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 220
    .line 221
    const v0, 0x7f120059

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v16

    .line 228
    invoke-static {v2}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 229
    .line 230
    .line 231
    move-result-object v17

    .line 232
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    if-nez v0, :cond_6

    .line 241
    .line 242
    if-ne v1, v5, :cond_7

    .line 243
    .line 244
    :cond_6
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 245
    .line 246
    const/16 v0, 0x1c

    .line 247
    .line 248
    invoke-direct {v1, v0, v9}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_7
    move-object v13, v1

    .line 255
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 256
    .line 257
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    if-nez v0, :cond_8

    .line 266
    .line 267
    if-ne v1, v5, :cond_9

    .line 268
    .line 269
    :cond_8
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 270
    .line 271
    const/4 v0, 0x3

    .line 272
    invoke-direct {v1, v0, v10}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_9
    move-object v15, v1

    .line 279
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 280
    .line 281
    const/16 v19, 0x0

    .line 282
    .line 283
    const/16 v20, 0x8

    .line 284
    .line 285
    const/4 v14, 0x0

    .line 286
    move-object/from16 v18, v2

    .line 287
    .line 288
    invoke-static/range {v11 .. v20}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_a
    move-object/from16 v18, v2

    .line 293
    .line 294
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 295
    .line 296
    .line 297
    :goto_2
    return-object v4

    .line 298
    :pswitch_1
    move-object/from16 v1, p1

    .line 299
    .line 300
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 301
    .line 302
    move-object/from16 v2, p2

    .line 303
    .line 304
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 305
    .line 306
    move-object/from16 v11, p3

    .line 307
    .line 308
    check-cast v11, Ljava/lang/Integer;

    .line 309
    .line 310
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    and-int/lit8 v1, v11, 0x11

    .line 318
    .line 319
    if-eq v1, v6, :cond_b

    .line 320
    .line 321
    move v7, v8

    .line 322
    :cond_b
    and-int/lit8 v1, v11, 0x1

    .line 323
    .line 324
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 325
    .line 326
    invoke-virtual {v2, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_f

    .line 331
    .line 332
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 333
    .line 334
    iget-object v13, v0, Lnet/thunderbird/core/validation/input/NumberInputField;->value:Ljava/lang/Long;

    .line 335
    .line 336
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/NumberInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 337
    .line 338
    if-eqz v0, :cond_c

    .line 339
    .line 340
    invoke-static {v0, v10}, Lcom/fsck/k9/sasl/OAuthBearer;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    :cond_c
    move-object/from16 v16, v3

    .line 345
    .line 346
    const v0, 0x7f12006d

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v14

    .line 353
    invoke-static {v2}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 354
    .line 355
    .line 356
    move-result-object v17

    .line 357
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    if-nez v0, :cond_d

    .line 366
    .line 367
    if-ne v1, v5, :cond_e

    .line 368
    .line 369
    :cond_d
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 370
    .line 371
    const/16 v0, 0x16

    .line 372
    .line 373
    invoke-direct {v1, v0, v9}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :cond_e
    move-object v11, v1

    .line 380
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 381
    .line 382
    const/16 v19, 0x6000

    .line 383
    .line 384
    const/16 v20, 0x2

    .line 385
    .line 386
    const/4 v12, 0x0

    .line 387
    const/4 v15, 0x1

    .line 388
    move-object/from16 v18, v2

    .line 389
    .line 390
    invoke-static/range {v11 .. v20}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->NumberInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 391
    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_f
    move-object/from16 v18, v2

    .line 395
    .line 396
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 397
    .line 398
    .line 399
    :goto_3
    return-object v4

    .line 400
    :pswitch_2
    move-object/from16 v1, p1

    .line 401
    .line 402
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 403
    .line 404
    move-object/from16 v2, p2

    .line 405
    .line 406
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 407
    .line 408
    move-object/from16 v3, p3

    .line 409
    .line 410
    check-cast v3, Ljava/lang/Integer;

    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    and-int/lit8 v1, v3, 0x11

    .line 420
    .line 421
    if-eq v1, v6, :cond_10

    .line 422
    .line 423
    move v7, v8

    .line 424
    :cond_10
    and-int/lit8 v1, v3, 0x1

    .line 425
    .line 426
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 427
    .line 428
    invoke-virtual {v2, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_15

    .line 433
    .line 434
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->Companion:Lcom/bumptech/glide/GlideBuilder$1;

    .line 435
    .line 436
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 440
    .line 441
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 442
    .line 443
    .line 444
    move-result-object v11

    .line 445
    iget-object v12, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 446
    .line 447
    const v0, 0x7f12006f

    .line 448
    .line 449
    .line 450
    invoke-static {v2, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v16

    .line 454
    invoke-static {v2}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 455
    .line 456
    .line 457
    move-result-object v17

    .line 458
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    if-nez v0, :cond_11

    .line 467
    .line 468
    if-ne v1, v5, :cond_12

    .line 469
    .line 470
    :cond_11
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 471
    .line 472
    const/16 v0, 0x1b

    .line 473
    .line 474
    invoke-direct {v1, v0, v9}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    :cond_12
    move-object v13, v1

    .line 481
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 482
    .line 483
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    if-nez v0, :cond_13

    .line 492
    .line 493
    if-ne v1, v5, :cond_14

    .line 494
    .line 495
    :cond_13
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 496
    .line 497
    const/4 v0, 0x4

    .line 498
    invoke-direct {v1, v0, v10}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :cond_14
    move-object v15, v1

    .line 505
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 506
    .line 507
    const/16 v19, 0x0

    .line 508
    .line 509
    const/16 v20, 0x8

    .line 510
    .line 511
    const/4 v14, 0x0

    .line 512
    move-object/from16 v18, v2

    .line 513
    .line 514
    invoke-static/range {v11 .. v20}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 515
    .line 516
    .line 517
    goto :goto_4

    .line 518
    :cond_15
    move-object/from16 v18, v2

    .line 519
    .line 520
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 521
    .line 522
    .line 523
    :goto_4
    return-object v4

    .line 524
    :pswitch_3
    move-object/from16 v1, p1

    .line 525
    .line 526
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 527
    .line 528
    move-object/from16 v11, p2

    .line 529
    .line 530
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 531
    .line 532
    move-object/from16 v12, p3

    .line 533
    .line 534
    check-cast v12, Ljava/lang/Integer;

    .line 535
    .line 536
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 537
    .line 538
    .line 539
    move-result v12

    .line 540
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    and-int/lit8 v1, v12, 0x11

    .line 544
    .line 545
    if-eq v1, v6, :cond_16

    .line 546
    .line 547
    move v1, v8

    .line 548
    goto :goto_5

    .line 549
    :cond_16
    move v1, v7

    .line 550
    :goto_5
    and-int/lit8 v6, v12, 0x1

    .line 551
    .line 552
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 553
    .line 554
    invoke-virtual {v11, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-eqz v1, :cond_1a

    .line 559
    .line 560
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 561
    .line 562
    iget-object v14, v0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 563
    .line 564
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 565
    .line 566
    if-eqz v0, :cond_17

    .line 567
    .line 568
    invoke-static {v0, v10}, Lcom/fsck/k9/sasl/OAuthBearer;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    :cond_17
    move-object/from16 v17, v3

    .line 573
    .line 574
    const v0, 0x7f120070

    .line 575
    .line 576
    .line 577
    invoke-static {v11, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v15

    .line 581
    invoke-static {v11}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 582
    .line 583
    .line 584
    move-result-object v18

    .line 585
    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 586
    .line 587
    invoke-direct {v0, v7, v2}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(II)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    if-nez v1, :cond_18

    .line 599
    .line 600
    if-ne v2, v5, :cond_19

    .line 601
    .line 602
    :cond_18
    new-instance v2, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 603
    .line 604
    const/16 v1, 0x18

    .line 605
    .line 606
    invoke-direct {v2, v1, v9}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    :cond_19
    move-object v12, v2

    .line 613
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 614
    .line 615
    const v24, 0x30006000

    .line 616
    .line 617
    .line 618
    const/16 v25, 0x582

    .line 619
    .line 620
    const/4 v13, 0x0

    .line 621
    const/16 v16, 0x1

    .line 622
    .line 623
    const/16 v19, 0x0

    .line 624
    .line 625
    const/16 v20, 0x0

    .line 626
    .line 627
    const/16 v22, 0x0

    .line 628
    .line 629
    move-object/from16 v21, v0

    .line 630
    .line 631
    move-object/from16 v23, v11

    .line 632
    .line 633
    invoke-static/range {v12 .. v25}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 634
    .line 635
    .line 636
    goto :goto_6

    .line 637
    :cond_1a
    move-object/from16 v23, v11

    .line 638
    .line 639
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 640
    .line 641
    .line 642
    :goto_6
    return-object v4

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
