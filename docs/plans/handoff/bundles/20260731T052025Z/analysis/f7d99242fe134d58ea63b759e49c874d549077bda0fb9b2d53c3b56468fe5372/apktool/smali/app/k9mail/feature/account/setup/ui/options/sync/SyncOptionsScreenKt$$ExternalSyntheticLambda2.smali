.class public final synthetic Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lnet/thunderbird/core/common/provider/BrandNameProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/core/common/provider/BrandNameProvider;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;->f$2:Lnet/thunderbird/core/common/provider/BrandNameProvider;

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

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
    const/16 v5, 0x12

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x4

    .line 14
    const/4 v8, 0x1

    .line 15
    iget-object v9, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;->f$2:Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 16
    .line 17
    iget-object v10, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    move-object/from16 v13, p1

    .line 25
    .line 26
    check-cast v13, Landroidx/compose/foundation/layout/PaddingValues;

    .line 27
    .line 28
    move-object/from16 v1, p2

    .line 29
    .line 30
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 31
    .line 32
    move-object/from16 v11, p3

    .line 33
    .line 34
    check-cast v11, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    and-int/lit8 v12, v11, 0x6

    .line 44
    .line 45
    if-nez v12, :cond_1

    .line 46
    .line 47
    move-object v12, v1

    .line 48
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    if-eqz v12, :cond_0

    .line 55
    .line 56
    move v6, v7

    .line 57
    :cond_0
    or-int/2addr v11, v6

    .line 58
    :cond_1
    and-int/lit8 v6, v11, 0x13

    .line 59
    .line 60
    if-eq v6, v5, :cond_2

    .line 61
    .line 62
    move v4, v8

    .line 63
    :cond_2
    and-int/lit8 v5, v11, 0x1

    .line 64
    .line 65
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 66
    .line 67
    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 78
    .line 79
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-nez v4, :cond_3

    .line 88
    .line 89
    if-ne v5, v3, :cond_4

    .line 90
    .line 91
    :cond_3
    new-instance v5, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/16 v3, 0x15

    .line 94
    .line 95
    invoke-direct {v5, v3, v10}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    move-object v12, v5

    .line 102
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    check-cast v9, Lapp/k9mail/provider/K9AppNameProvider;

    .line 105
    .line 106
    invoke-virtual {v9}, Lapp/k9mail/provider/K9AppNameProvider;->getBrandName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    shl-int/lit8 v3, v11, 0x6

    .line 111
    .line 112
    and-int/lit16 v3, v3, 0x380

    .line 113
    .line 114
    const/4 v15, 0x0

    .line 115
    move-object v11, v0

    .line 116
    move-object/from16 v16, v1

    .line 117
    .line 118
    move/from16 v17, v3

    .line 119
    .line 120
    invoke-static/range {v11 .. v17}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->SpecialFoldersContent(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    move-object/from16 v16, v1

    .line 125
    .line 126
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-object v2

    .line 130
    :pswitch_0
    move-object/from16 v1, p1

    .line 131
    .line 132
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 133
    .line 134
    move-object/from16 v11, p2

    .line 135
    .line 136
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 137
    .line 138
    move-object/from16 v12, p3

    .line 139
    .line 140
    check-cast v12, Ljava/lang/Integer;

    .line 141
    .line 142
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    and-int/lit8 v13, v12, 0x6

    .line 150
    .line 151
    if-nez v13, :cond_7

    .line 152
    .line 153
    move-object v13, v11

    .line 154
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 155
    .line 156
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    if-eqz v13, :cond_6

    .line 161
    .line 162
    move v6, v7

    .line 163
    :cond_6
    or-int/2addr v12, v6

    .line 164
    :cond_7
    and-int/lit8 v6, v12, 0x13

    .line 165
    .line 166
    if-eq v6, v5, :cond_8

    .line 167
    .line 168
    move v4, v8

    .line 169
    :cond_8
    and-int/lit8 v5, v12, 0x1

    .line 170
    .line 171
    move-object v8, v11

    .line 172
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 173
    .line 174
    invoke-virtual {v8, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_b

    .line 179
    .line 180
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 185
    .line 186
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-nez v4, :cond_9

    .line 195
    .line 196
    if-ne v5, v3, :cond_a

    .line 197
    .line 198
    :cond_9
    new-instance v5, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    const/16 v3, 0xb

    .line 201
    .line 202
    invoke-direct {v5, v3, v10}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_a
    move-object v4, v5

    .line 209
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 210
    .line 211
    check-cast v9, Lapp/k9mail/provider/K9AppNameProvider;

    .line 212
    .line 213
    invoke-virtual {v9}, Lapp/k9mail/provider/K9AppNameProvider;->getBrandName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    shl-int/lit8 v3, v12, 0x6

    .line 218
    .line 219
    and-int/lit16 v3, v3, 0x380

    .line 220
    .line 221
    const/16 v5, 0x8

    .line 222
    .line 223
    or-int v9, v5, v3

    .line 224
    .line 225
    const/4 v7, 0x0

    .line 226
    move-object v3, v0

    .line 227
    move-object v5, v1

    .line 228
    invoke-static/range {v3 .. v9}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsScreenKt;->DisplayOptionsContent(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 233
    .line 234
    .line 235
    :goto_1
    return-object v2

    .line 236
    :pswitch_1
    move-object/from16 v11, p1

    .line 237
    .line 238
    check-cast v11, Landroidx/compose/foundation/layout/PaddingValues;

    .line 239
    .line 240
    move-object/from16 v1, p2

    .line 241
    .line 242
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 243
    .line 244
    move-object/from16 v12, p3

    .line 245
    .line 246
    check-cast v12, Ljava/lang/Integer;

    .line 247
    .line 248
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    and-int/lit8 v13, v12, 0x6

    .line 256
    .line 257
    if-nez v13, :cond_d

    .line 258
    .line 259
    move-object v13, v1

    .line 260
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 261
    .line 262
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    if-eqz v13, :cond_c

    .line 267
    .line 268
    move v6, v7

    .line 269
    :cond_c
    or-int/2addr v12, v6

    .line 270
    :cond_d
    and-int/lit8 v6, v12, 0x13

    .line 271
    .line 272
    if-eq v6, v5, :cond_e

    .line 273
    .line 274
    move v4, v8

    .line 275
    :cond_e
    and-int/lit8 v5, v12, 0x1

    .line 276
    .line 277
    move-object v14, v1

    .line 278
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 279
    .line 280
    invoke-virtual {v14, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_11

    .line 285
    .line 286
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 291
    .line 292
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    if-nez v1, :cond_f

    .line 301
    .line 302
    if-ne v4, v3, :cond_10

    .line 303
    .line 304
    :cond_f
    new-instance v4, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 305
    .line 306
    const/16 v1, 0xf

    .line 307
    .line 308
    invoke-direct {v4, v1, v10}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :cond_10
    move-object v10, v4

    .line 315
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 316
    .line 317
    check-cast v9, Lapp/k9mail/provider/K9AppNameProvider;

    .line 318
    .line 319
    invoke-virtual {v9}, Lapp/k9mail/provider/K9AppNameProvider;->getBrandName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    shl-int/lit8 v3, v12, 0x6

    .line 324
    .line 325
    and-int/lit16 v15, v3, 0x380

    .line 326
    .line 327
    const/4 v13, 0x0

    .line 328
    move-object v9, v0

    .line 329
    move-object v12, v1

    .line 330
    invoke-static/range {v9 .. v15}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt;->SyncOptionsContent(Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 335
    .line 336
    .line 337
    :goto_2
    return-object v2

    .line 338
    nop

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
