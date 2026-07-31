.class public final synthetic Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

.field public final synthetic f$1:Landroid/content/res/Resources;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Resources;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V
    .locals 0

    .line 13
    iput p4, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Resources;

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
    iget v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    iget-object v8, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-object v9, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Resources;

    .line 18
    .line 19
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/ImapFormItemsKt$$ExternalSyntheticLambda1;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 20
    .line 21
    const/4 v10, 0x1

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
    move v1, v10

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
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

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
    invoke-static {v0, v9}, Lcom/fsck/k9/sasl/OAuthBearer;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

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
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    const/16 v1, 0x14

    .line 136
    .line 137
    invoke-direct {v3, v1, v8}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

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
    const/high16 v24, 0x30000000

    .line 147
    .line 148
    const/16 v25, 0x192

    .line 149
    .line 150
    const/4 v13, 0x0

    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    const/16 v19, 0x0

    .line 154
    .line 155
    const/16 v20, 0x0

    .line 156
    .line 157
    move-object/from16 v21, v0

    .line 158
    .line 159
    move-object/from16 v22, v2

    .line 160
    .line 161
    move-object/from16 v23, v11

    .line 162
    .line 163
    invoke-static/range {v12 .. v25}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    move-object/from16 v23, v11

    .line 168
    .line 169
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    :goto_1
    return-object v4

    .line 173
    :pswitch_0
    move-object/from16 v1, p1

    .line 174
    .line 175
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 176
    .line 177
    move-object/from16 v2, p2

    .line 178
    .line 179
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 180
    .line 181
    move-object/from16 v3, p3

    .line 182
    .line 183
    check-cast v3, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    and-int/lit8 v1, v3, 0x11

    .line 193
    .line 194
    if-eq v1, v6, :cond_5

    .line 195
    .line 196
    move v7, v10

    .line 197
    :cond_5
    and-int/lit8 v1, v3, 0x1

    .line 198
    .line 199
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 200
    .line 201
    invoke-virtual {v2, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_a

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 211
    .line 212
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getAllowedAuthenticationTypes(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    iget-object v11, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 221
    .line 222
    const v0, 0x7f120059

    .line 223
    .line 224
    .line 225
    invoke-static {v2, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    invoke-static {v2}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 230
    .line 231
    .line 232
    move-result-object v16

    .line 233
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-nez v0, :cond_6

    .line 242
    .line 243
    if-ne v1, v5, :cond_7

    .line 244
    .line 245
    :cond_6
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 246
    .line 247
    const/16 v0, 0x12

    .line 248
    .line 249
    invoke-direct {v1, v0, v8}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_7
    move-object v12, v1

    .line 256
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 257
    .line 258
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-nez v0, :cond_8

    .line 267
    .line 268
    if-ne v1, v5, :cond_9

    .line 269
    .line 270
    :cond_8
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 271
    .line 272
    const/4 v0, 0x2

    .line 273
    invoke-direct {v1, v0, v9}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_9
    move-object v14, v1

    .line 280
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 281
    .line 282
    const/16 v18, 0x0

    .line 283
    .line 284
    const/16 v19, 0x8

    .line 285
    .line 286
    const/4 v13, 0x0

    .line 287
    move-object/from16 v17, v2

    .line 288
    .line 289
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_a
    move-object/from16 v17, v2

    .line 294
    .line 295
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 296
    .line 297
    .line 298
    :goto_2
    return-object v4

    .line 299
    :pswitch_1
    move-object/from16 v1, p1

    .line 300
    .line 301
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 302
    .line 303
    move-object/from16 v2, p2

    .line 304
    .line 305
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 306
    .line 307
    move-object/from16 v11, p3

    .line 308
    .line 309
    check-cast v11, Ljava/lang/Integer;

    .line 310
    .line 311
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    and-int/lit8 v1, v11, 0x11

    .line 319
    .line 320
    if-eq v1, v6, :cond_b

    .line 321
    .line 322
    move v7, v10

    .line 323
    :cond_b
    and-int/lit8 v1, v11, 0x1

    .line 324
    .line 325
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 326
    .line 327
    invoke-virtual {v2, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_f

    .line 332
    .line 333
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 334
    .line 335
    iget-object v12, v0, Lnet/thunderbird/core/validation/input/NumberInputField;->value:Ljava/lang/Long;

    .line 336
    .line 337
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/NumberInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 338
    .line 339
    if-eqz v0, :cond_c

    .line 340
    .line 341
    invoke-static {v0, v9}, Lcom/fsck/k9/sasl/OAuthBearer;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    :cond_c
    move-object v15, v3

    .line 346
    const v0, 0x7f12006d

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v13

    .line 353
    invoke-static {v2}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    const/16 v0, 0xd

    .line 372
    .line 373
    invoke-direct {v1, v0, v8}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    :cond_e
    move-object v10, v1

    .line 380
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 381
    .line 382
    const/16 v18, 0x0

    .line 383
    .line 384
    const/16 v19, 0x12

    .line 385
    .line 386
    const/4 v11, 0x0

    .line 387
    const/4 v14, 0x0

    .line 388
    move-object/from16 v17, v2

    .line 389
    .line 390
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->NumberInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 391
    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_f
    move-object/from16 v17, v2

    .line 395
    .line 396
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

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
    move v7, v10

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
    iget-object v12, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->security:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

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
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    const/16 v0, 0xe

    .line 473
    .line 474
    invoke-direct {v1, v0, v8}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

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
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    invoke-direct {v1, v10, v9}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    :cond_14
    move-object v15, v1

    .line 504
    check-cast v15, Lkotlin/jvm/functions/Function1;

    .line 505
    .line 506
    const/16 v19, 0x0

    .line 507
    .line 508
    const/16 v20, 0x8

    .line 509
    .line 510
    const/4 v14, 0x0

    .line 511
    move-object/from16 v18, v2

    .line 512
    .line 513
    invoke-static/range {v11 .. v20}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 514
    .line 515
    .line 516
    goto :goto_4

    .line 517
    :cond_15
    move-object/from16 v18, v2

    .line 518
    .line 519
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 520
    .line 521
    .line 522
    :goto_4
    return-object v4

    .line 523
    :pswitch_3
    move-object/from16 v1, p1

    .line 524
    .line 525
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 526
    .line 527
    move-object/from16 v11, p2

    .line 528
    .line 529
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 530
    .line 531
    move-object/from16 v12, p3

    .line 532
    .line 533
    check-cast v12, Ljava/lang/Integer;

    .line 534
    .line 535
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 536
    .line 537
    .line 538
    move-result v12

    .line 539
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    and-int/lit8 v1, v12, 0x11

    .line 543
    .line 544
    if-eq v1, v6, :cond_16

    .line 545
    .line 546
    move v1, v10

    .line 547
    goto :goto_5

    .line 548
    :cond_16
    move v1, v7

    .line 549
    :goto_5
    and-int/lit8 v6, v12, 0x1

    .line 550
    .line 551
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 552
    .line 553
    invoke-virtual {v11, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    if-eqz v1, :cond_1a

    .line 558
    .line 559
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 560
    .line 561
    iget-object v14, v0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 562
    .line 563
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 564
    .line 565
    if-eqz v0, :cond_17

    .line 566
    .line 567
    invoke-static {v0, v9}, Lcom/fsck/k9/sasl/OAuthBearer;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    :cond_17
    move-object/from16 v17, v3

    .line 572
    .line 573
    const v0, 0x7f120070

    .line 574
    .line 575
    .line 576
    invoke-static {v11, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v15

    .line 580
    invoke-static {v11}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 581
    .line 582
    .line 583
    move-result-object v18

    .line 584
    new-instance v0, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 585
    .line 586
    invoke-direct {v0, v7, v2}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(II)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    if-nez v1, :cond_18

    .line 598
    .line 599
    if-ne v2, v5, :cond_19

    .line 600
    .line 601
    :cond_18
    new-instance v2, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 602
    .line 603
    const/16 v1, 0x11

    .line 604
    .line 605
    invoke-direct {v2, v1, v8}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    :cond_19
    move-object v12, v2

    .line 612
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 613
    .line 614
    const/high16 v24, 0x30000000

    .line 615
    .line 616
    const/16 v25, 0x592

    .line 617
    .line 618
    const/4 v13, 0x0

    .line 619
    const/16 v16, 0x0

    .line 620
    .line 621
    const/16 v19, 0x0

    .line 622
    .line 623
    const/16 v20, 0x0

    .line 624
    .line 625
    const/16 v22, 0x0

    .line 626
    .line 627
    move-object/from16 v21, v0

    .line 628
    .line 629
    move-object/from16 v23, v11

    .line 630
    .line 631
    invoke-static/range {v12 .. v25}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 632
    .line 633
    .line 634
    goto :goto_6

    .line 635
    :cond_1a
    move-object/from16 v23, v11

    .line 636
    .line 637
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 638
    .line 639
    .line 640
    :goto_6
    return-object v4

    .line 641
    :pswitch_4
    move-object/from16 v1, p1

    .line 642
    .line 643
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 644
    .line 645
    move-object/from16 v2, p2

    .line 646
    .line 647
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 648
    .line 649
    move-object/from16 v11, p3

    .line 650
    .line 651
    check-cast v11, Ljava/lang/Integer;

    .line 652
    .line 653
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 654
    .line 655
    .line 656
    move-result v11

    .line 657
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    and-int/lit8 v1, v11, 0x11

    .line 661
    .line 662
    if-eq v1, v6, :cond_1b

    .line 663
    .line 664
    move v1, v10

    .line 665
    goto :goto_7

    .line 666
    :cond_1b
    move v1, v7

    .line 667
    :goto_7
    and-int/lit8 v6, v11, 0x1

    .line 668
    .line 669
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 670
    .line 671
    invoke-virtual {v2, v6, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 672
    .line 673
    .line 674
    move-result v1

    .line 675
    if-eqz v1, :cond_21

    .line 676
    .line 677
    iget-boolean v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapAutodetectNamespaceEnabled:Z

    .line 678
    .line 679
    const v6, 0x7f120064

    .line 680
    .line 681
    .line 682
    if-eqz v1, :cond_1d

    .line 683
    .line 684
    const v0, -0x5e4804d4

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    if-ne v0, v5, :cond_1c

    .line 695
    .line 696
    new-instance v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 697
    .line 698
    const/4 v1, 0x6

    .line 699
    invoke-direct {v0, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    :cond_1c
    move-object v10, v0

    .line 706
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 707
    .line 708
    invoke-static {v2, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v13

    .line 712
    invoke-static {v2}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 713
    .line 714
    .line 715
    move-result-object v16

    .line 716
    const v22, 0x6000006

    .line 717
    .line 718
    .line 719
    const/16 v23, 0x6b6

    .line 720
    .line 721
    const/4 v11, 0x0

    .line 722
    const/4 v12, 0x0

    .line 723
    const/4 v14, 0x0

    .line 724
    const/4 v15, 0x0

    .line 725
    const/16 v17, 0x0

    .line 726
    .line 727
    const/16 v18, 0x0

    .line 728
    .line 729
    const/16 v19, 0x0

    .line 730
    .line 731
    const/16 v20, 0x0

    .line 732
    .line 733
    move-object/from16 v21, v2

    .line 734
    .line 735
    invoke-static/range {v10 .. v23}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 739
    .line 740
    .line 741
    goto :goto_8

    .line 742
    :cond_1d
    const v1, -0x5e4370e2

    .line 743
    .line 744
    .line 745
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 746
    .line 747
    .line 748
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 749
    .line 750
    iget-object v12, v0, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 751
    .line 752
    iget-object v0, v0, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 753
    .line 754
    if-eqz v0, :cond_1e

    .line 755
    .line 756
    invoke-static {v0, v9}, Lcom/fsck/k9/sasl/OAuthBearer;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    :cond_1e
    move-object v15, v3

    .line 761
    invoke-static {v2, v6}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v13

    .line 765
    invoke-static {v2}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 766
    .line 767
    .line 768
    move-result-object v16

    .line 769
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    if-nez v0, :cond_1f

    .line 778
    .line 779
    if-ne v1, v5, :cond_20

    .line 780
    .line 781
    :cond_1f
    new-instance v1, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 782
    .line 783
    const/16 v0, 0xc

    .line 784
    .line 785
    invoke-direct {v1, v0, v8}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    :cond_20
    move-object v10, v1

    .line 792
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 793
    .line 794
    const/16 v22, 0x0

    .line 795
    .line 796
    const/16 v23, 0x792

    .line 797
    .line 798
    const/4 v11, 0x0

    .line 799
    const/4 v14, 0x0

    .line 800
    const/16 v17, 0x0

    .line 801
    .line 802
    const/16 v18, 0x0

    .line 803
    .line 804
    const/16 v19, 0x0

    .line 805
    .line 806
    const/16 v20, 0x0

    .line 807
    .line 808
    move-object/from16 v21, v2

    .line 809
    .line 810
    invoke-static/range {v10 .. v23}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->TextInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/autofill/ContentType;Landroidx/compose/runtime/Composer;II)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 814
    .line 815
    .line 816
    goto :goto_8

    .line 817
    :cond_21
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 818
    .line 819
    .line 820
    :goto_8
    return-object v4

    .line 821
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
