.class public final synthetic Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;->f$0:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;->f$2:Landroid/content/res/Resources;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 10
    .line 11
    iget-object v6, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;->f$2:Landroid/content/res/Resources;

    .line 12
    .line 13
    iget-object v7, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormContentKt$$ExternalSyntheticLambda2;->f$0:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 16
    .line 17
    const/16 v8, 0x10

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 25
    .line 26
    move-object/from16 v9, p2

    .line 27
    .line 28
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 29
    .line 30
    move-object/from16 v10, p3

    .line 31
    .line 32
    check-cast v10, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    and-int/lit8 v1, v10, 0x11

    .line 42
    .line 43
    if-eq v1, v8, :cond_0

    .line 44
    .line 45
    move v3, v4

    .line 46
    :cond_0
    and-int/lit8 v1, v10, 0x1

    .line 47
    .line 48
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    invoke-virtual {v9, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    iget-object v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->trashSpecialFolderOptions:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    iget-object v11, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedTrashSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 63
    .line 64
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    if-ne v1, v5, :cond_2

    .line 75
    .line 76
    :cond_1
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {v1, v8, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    move-object v12, v1

    .line 85
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 86
    .line 87
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    if-ne v1, v5, :cond_4

    .line 98
    .line 99
    :cond_3
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 100
    .line 101
    const/4 v0, 0x7

    .line 102
    invoke-direct {v1, v0, v6}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    move-object v14, v1

    .line 109
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 110
    .line 111
    const v0, 0x7f1201be

    .line 112
    .line 113
    .line 114
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    invoke-static {v9}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 119
    .line 120
    .line 121
    move-result-object v16

    .line 122
    const/16 v18, 0x0

    .line 123
    .line 124
    const/16 v19, 0x8

    .line 125
    .line 126
    const/4 v13, 0x0

    .line 127
    move-object/from16 v17, v9

    .line 128
    .line 129
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    move-object/from16 v17, v9

    .line 134
    .line 135
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 136
    .line 137
    .line 138
    :goto_0
    return-object v2

    .line 139
    :pswitch_0
    move-object/from16 v1, p1

    .line 140
    .line 141
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 142
    .line 143
    move-object/from16 v9, p2

    .line 144
    .line 145
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 146
    .line 147
    move-object/from16 v10, p3

    .line 148
    .line 149
    check-cast v10, Ljava/lang/Integer;

    .line 150
    .line 151
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    and-int/lit8 v1, v10, 0x11

    .line 159
    .line 160
    if-eq v1, v8, :cond_6

    .line 161
    .line 162
    move v3, v4

    .line 163
    :cond_6
    and-int/lit8 v1, v10, 0x1

    .line 164
    .line 165
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 166
    .line 167
    invoke-virtual {v9, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_b

    .line 172
    .line 173
    iget-object v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->spamSpecialFolderOptions:Ljava/util/List;

    .line 174
    .line 175
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    iget-object v11, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedSpamSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 180
    .line 181
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-nez v0, :cond_7

    .line 190
    .line 191
    if-ne v1, v5, :cond_8

    .line 192
    .line 193
    :cond_7
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    const/16 v0, 0x13

    .line 196
    .line 197
    invoke-direct {v1, v0, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_8
    move-object v12, v1

    .line 204
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 205
    .line 206
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-nez v0, :cond_9

    .line 215
    .line 216
    if-ne v1, v5, :cond_a

    .line 217
    .line 218
    :cond_9
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 219
    .line 220
    const/16 v0, 0xa

    .line 221
    .line 222
    invoke-direct {v1, v0, v6}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_a
    move-object v14, v1

    .line 229
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 230
    .line 231
    const v0, 0x7f1201bc

    .line 232
    .line 233
    .line 234
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    invoke-static {v9}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 239
    .line 240
    .line 241
    move-result-object v16

    .line 242
    const/16 v18, 0x0

    .line 243
    .line 244
    const/16 v19, 0x8

    .line 245
    .line 246
    const/4 v13, 0x0

    .line 247
    move-object/from16 v17, v9

    .line 248
    .line 249
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_b
    move-object/from16 v17, v9

    .line 254
    .line 255
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 256
    .line 257
    .line 258
    :goto_1
    return-object v2

    .line 259
    :pswitch_1
    move-object/from16 v1, p1

    .line 260
    .line 261
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 262
    .line 263
    move-object/from16 v9, p2

    .line 264
    .line 265
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 266
    .line 267
    move-object/from16 v10, p3

    .line 268
    .line 269
    check-cast v10, Ljava/lang/Integer;

    .line 270
    .line 271
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    and-int/lit8 v1, v10, 0x11

    .line 279
    .line 280
    if-eq v1, v8, :cond_c

    .line 281
    .line 282
    move v3, v4

    .line 283
    :cond_c
    and-int/lit8 v1, v10, 0x1

    .line 284
    .line 285
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 286
    .line 287
    invoke-virtual {v9, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_11

    .line 292
    .line 293
    iget-object v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->sentSpecialFolderOptions:Ljava/util/List;

    .line 294
    .line 295
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    iget-object v11, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedSentSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 300
    .line 301
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    if-nez v0, :cond_d

    .line 310
    .line 311
    if-ne v1, v5, :cond_e

    .line 312
    .line 313
    :cond_d
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 314
    .line 315
    const/16 v0, 0x11

    .line 316
    .line 317
    invoke-direct {v1, v0, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :cond_e
    move-object v12, v1

    .line 324
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 325
    .line 326
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    if-nez v0, :cond_f

    .line 335
    .line 336
    if-ne v1, v5, :cond_10

    .line 337
    .line 338
    :cond_f
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 339
    .line 340
    const/16 v0, 0x8

    .line 341
    .line 342
    invoke-direct {v1, v0, v6}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_10
    move-object v14, v1

    .line 349
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 350
    .line 351
    const v0, 0x7f1201bb

    .line 352
    .line 353
    .line 354
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v15

    .line 358
    invoke-static {v9}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 359
    .line 360
    .line 361
    move-result-object v16

    .line 362
    const/16 v18, 0x0

    .line 363
    .line 364
    const/16 v19, 0x8

    .line 365
    .line 366
    const/4 v13, 0x0

    .line 367
    move-object/from16 v17, v9

    .line 368
    .line 369
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 370
    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_11
    move-object/from16 v17, v9

    .line 374
    .line 375
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 376
    .line 377
    .line 378
    :goto_2
    return-object v2

    .line 379
    :pswitch_2
    move-object/from16 v1, p1

    .line 380
    .line 381
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 382
    .line 383
    move-object/from16 v9, p2

    .line 384
    .line 385
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 386
    .line 387
    move-object/from16 v10, p3

    .line 388
    .line 389
    check-cast v10, Ljava/lang/Integer;

    .line 390
    .line 391
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 392
    .line 393
    .line 394
    move-result v10

    .line 395
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    and-int/lit8 v1, v10, 0x11

    .line 399
    .line 400
    if-eq v1, v8, :cond_12

    .line 401
    .line 402
    move v3, v4

    .line 403
    :cond_12
    and-int/lit8 v1, v10, 0x1

    .line 404
    .line 405
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 406
    .line 407
    invoke-virtual {v9, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_17

    .line 412
    .line 413
    iget-object v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->draftsSpecialFolderOptions:Ljava/util/List;

    .line 414
    .line 415
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    iget-object v11, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedDraftsSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 420
    .line 421
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    if-nez v0, :cond_13

    .line 430
    .line 431
    if-ne v1, v5, :cond_14

    .line 432
    .line 433
    :cond_13
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 434
    .line 435
    const/16 v0, 0x14

    .line 436
    .line 437
    invoke-direct {v1, v0, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    :cond_14
    move-object v12, v1

    .line 444
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 445
    .line 446
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    if-nez v0, :cond_15

    .line 455
    .line 456
    if-ne v1, v5, :cond_16

    .line 457
    .line 458
    :cond_15
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 459
    .line 460
    const/4 v0, 0x6

    .line 461
    invoke-direct {v1, v0, v6}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    :cond_16
    move-object v14, v1

    .line 468
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 469
    .line 470
    const v0, 0x7f1201b4

    .line 471
    .line 472
    .line 473
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v15

    .line 477
    invoke-static {v9}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 478
    .line 479
    .line 480
    move-result-object v16

    .line 481
    const/16 v18, 0x0

    .line 482
    .line 483
    const/16 v19, 0x8

    .line 484
    .line 485
    const/4 v13, 0x0

    .line 486
    move-object/from16 v17, v9

    .line 487
    .line 488
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 489
    .line 490
    .line 491
    goto :goto_3

    .line 492
    :cond_17
    move-object/from16 v17, v9

    .line 493
    .line 494
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 495
    .line 496
    .line 497
    :goto_3
    return-object v2

    .line 498
    :pswitch_3
    move-object/from16 v1, p1

    .line 499
    .line 500
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 501
    .line 502
    move-object/from16 v9, p2

    .line 503
    .line 504
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 505
    .line 506
    move-object/from16 v10, p3

    .line 507
    .line 508
    check-cast v10, Ljava/lang/Integer;

    .line 509
    .line 510
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 511
    .line 512
    .line 513
    move-result v10

    .line 514
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    and-int/lit8 v1, v10, 0x11

    .line 518
    .line 519
    if-eq v1, v8, :cond_18

    .line 520
    .line 521
    move v3, v4

    .line 522
    :cond_18
    and-int/lit8 v1, v10, 0x1

    .line 523
    .line 524
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 525
    .line 526
    invoke-virtual {v9, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_1d

    .line 531
    .line 532
    iget-object v1, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->archiveSpecialFolderOptions:Ljava/util/List;

    .line 533
    .line 534
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 535
    .line 536
    .line 537
    move-result-object v10

    .line 538
    iget-object v11, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->selectedArchiveSpecialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 539
    .line 540
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    if-nez v0, :cond_19

    .line 549
    .line 550
    if-ne v1, v5, :cond_1a

    .line 551
    .line 552
    :cond_19
    new-instance v1, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 553
    .line 554
    const/16 v0, 0x12

    .line 555
    .line 556
    invoke-direct {v1, v0, v7}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    :cond_1a
    move-object v12, v1

    .line 563
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 564
    .line 565
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    if-nez v0, :cond_1b

    .line 574
    .line 575
    if-ne v1, v5, :cond_1c

    .line 576
    .line 577
    :cond_1b
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;

    .line 578
    .line 579
    const/16 v0, 0x9

    .line 580
    .line 581
    invoke-direct {v1, v0, v6}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;-><init>(ILandroid/content/res/Resources;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    :cond_1c
    move-object v14, v1

    .line 588
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 589
    .line 590
    const v0, 0x7f1201b3

    .line 591
    .line 592
    .line 593
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v15

    .line 597
    invoke-static {v9}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 598
    .line 599
    .line 600
    move-result-object v16

    .line 601
    const/16 v18, 0x0

    .line 602
    .line 603
    const/16 v19, 0x8

    .line 604
    .line 605
    const/4 v13, 0x0

    .line 606
    move-object/from16 v17, v9

    .line 607
    .line 608
    invoke-static/range {v10 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->SelectInput(Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 609
    .line 610
    .line 611
    goto :goto_4

    .line 612
    :cond_1d
    move-object/from16 v17, v9

    .line 613
    .line 614
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 615
    .line 616
    .line 617
    :goto_4
    return-object v2

    .line 618
    nop

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
