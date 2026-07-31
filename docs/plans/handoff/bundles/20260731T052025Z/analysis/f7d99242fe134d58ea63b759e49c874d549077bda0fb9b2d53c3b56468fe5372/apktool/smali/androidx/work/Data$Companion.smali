.class public abstract Landroidx/work/Data$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static _check:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _sync:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final AutoDiscoveryResultView(Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v11, p3

    .line 9
    .line 10
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, 0x3b9c2ae0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int v0, p4, v0

    .line 28
    .line 29
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/16 v5, 0x20

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    move v4, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v4, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v0, v4

    .line 42
    or-int/lit16 v0, v0, 0x180

    .line 43
    .line 44
    and-int/lit16 v4, v0, 0x93

    .line 45
    .line 46
    const/16 v6, 0x92

    .line 47
    .line 48
    const/4 v14, 0x1

    .line 49
    const/4 v7, 0x0

    .line 50
    if-eq v4, v6, :cond_2

    .line 51
    .line 52
    move v4, v14

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v4, v7

    .line 55
    :goto_2
    and-int/lit8 v6, v0, 0x1

    .line 56
    .line 57
    invoke-virtual {v11, v6, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_10

    .line 62
    .line 63
    new-array v4, v7, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 74
    .line 75
    if-nez v6, :cond_3

    .line 76
    .line 77
    if-ne v8, v9, :cond_4

    .line 78
    .line 79
    :cond_3
    new-instance v8, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    const/16 v6, 0x19

    .line 82
    .line 83
    invoke-direct {v8, v6, v1}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    invoke-static {v4, v8, v11, v7}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 96
    .line 97
    if-nez v1, :cond_5

    .line 98
    .line 99
    sget-object v6, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->NoSettings:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    iget-boolean v6, v1, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->isTrusted:Z

    .line 103
    .line 104
    if-eqz v6, :cond_6

    .line 105
    .line 106
    sget-object v6, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->Trusted:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    sget-object v6, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->Untrusted:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 110
    .line 111
    :goto_3
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 112
    .line 113
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 114
    .line 115
    invoke-static {v8, v10, v11, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iget-wide v12, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 120
    .line 121
    ushr-long v15, v12, v5

    .line 122
    .line 123
    xor-long/2addr v12, v15

    .line 124
    long-to-int v10, v12

    .line 125
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 130
    .line 131
    invoke-static {v11, v15}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 136
    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 141
    .line 142
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 143
    .line 144
    .line 145
    iget-boolean v5, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 146
    .line 147
    if-eqz v5, :cond_7

    .line 148
    .line 149
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 154
    .line 155
    .line 156
    :goto_4
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 157
    .line 158
    invoke-static {v11, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 162
    .line 163
    invoke-static {v11, v12, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 171
    .line 172
    invoke-static {v11, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 173
    .line 174
    .line 175
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 176
    .line 177
    invoke-static {v11, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 178
    .line 179
    .line 180
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 181
    .line 182
    invoke-static {v11, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 183
    .line 184
    .line 185
    sget-object v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapesKt;->LocalThemeShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 186
    .line 187
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 192
    .line 193
    iget-object v5, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->small:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 194
    .line 195
    const v8, 0x71a3f194

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 199
    .line 200
    .line 201
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Gray:J

    .line 202
    .line 203
    const/high16 v8, 0x3f000000    # 0.5f

    .line 204
    .line 205
    invoke-static {v8, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 206
    .line 207
    .line 208
    move-result-wide v12

    .line 209
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 214
    .line 215
    iget-object v3, v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->small:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 216
    .line 217
    const/high16 v8, 0x3f800000    # 1.0f

    .line 218
    .line 219
    invoke-static {v15, v8, v12, v13, v3}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    iget-boolean v8, v6, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->isExpandable:Z

    .line 224
    .line 225
    const/16 v10, 0xe

    .line 226
    .line 227
    const/4 v12, 0x0

    .line 228
    if-eqz v8, :cond_a

    .line 229
    .line 230
    const v0, -0x2a9958fa

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    if-nez v0, :cond_8

    .line 245
    .line 246
    if-ne v8, v9, :cond_9

    .line 247
    .line 248
    :cond_8
    new-instance v8, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 249
    .line 250
    const/16 v0, 0xc

    .line 251
    .line 252
    invoke-direct {v8, v4, v0}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_9
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 259
    .line 260
    invoke-static {v3, v14, v12, v8, v10}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 265
    .line 266
    .line 267
    :goto_5
    move-object v3, v0

    .line 268
    goto :goto_7

    .line 269
    :cond_a
    sget-object v8, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->NoSettings:Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;

    .line 270
    .line 271
    if-ne v6, v8, :cond_e

    .line 272
    .line 273
    const v8, -0x2a966234

    .line 274
    .line 275
    .line 276
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 277
    .line 278
    .line 279
    and-int/lit8 v0, v0, 0x70

    .line 280
    .line 281
    const/16 v8, 0x20

    .line 282
    .line 283
    if-ne v0, v8, :cond_b

    .line 284
    .line 285
    move v0, v14

    .line 286
    goto :goto_6

    .line 287
    :cond_b
    move v0, v7

    .line 288
    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    if-nez v0, :cond_c

    .line 293
    .line 294
    if-ne v8, v9, :cond_d

    .line 295
    .line 296
    :cond_c
    new-instance v8, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    const/4 v0, 0x5

    .line 299
    invoke-direct {v8, v0, v2}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_d
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 306
    .line 307
    invoke-static {v3, v14, v12, v8, v10}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_e
    const v0, -0x2a94af99

    .line 316
    .line 317
    .line 318
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-ne v0, v9, :cond_f

    .line 326
    .line 327
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 328
    .line 329
    const/4 v8, 0x2

    .line 330
    invoke-direct {v0, v8}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    :cond_f
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 337
    .line 338
    invoke-static {v3, v7, v12, v0, v10}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :goto_7
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 347
    .line 348
    .line 349
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 350
    .line 351
    invoke-direct {v0, v6, v4, v1, v2}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;Landroidx/compose/runtime/MutableState;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lkotlin/jvm/functions/Function0;)V

    .line 352
    .line 353
    .line 354
    const v4, 0xe0667f3

    .line 355
    .line 356
    .line 357
    invoke-static {v4, v0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    const/high16 v12, 0x30000

    .line 362
    .line 363
    const/16 v13, 0x1c

    .line 364
    .line 365
    move-object v4, v5

    .line 366
    const-wide/16 v5, 0x0

    .line 367
    .line 368
    const-wide/16 v7, 0x0

    .line 369
    .line 370
    const/4 v9, 0x0

    .line 371
    invoke-static/range {v3 .. v13}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 375
    .line 376
    .line 377
    move-object v3, v15

    .line 378
    goto :goto_8

    .line 379
    :cond_10
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 380
    .line 381
    .line 382
    move-object/from16 v3, p2

    .line 383
    .line 384
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    if-eqz v6, :cond_11

    .line 389
    .line 390
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4;

    .line 391
    .line 392
    const/4 v5, 0x0

    .line 393
    move/from16 v4, p4

    .line 394
    .line 395
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4;-><init>(Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V

    .line 396
    .line 397
    .line 398
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 399
    .line 400
    :cond_11
    return-void
.end method

.method public static final Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 10
    .line 11
    new-instance v1, Landroidx/compose/ui/unit/DensityWithConverter;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    new-instance v2, Landroidx/compose/ui/unit/LinearFontScaleConverter;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Landroidx/compose/ui/unit/LinearFontScaleConverter;-><init>(F)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {v1, p0, v0, v2}, Landroidx/compose/ui/unit/DensityWithConverter;-><init>(FFLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public static final EditOutgoingServerSettingsNavHost(Ljava/lang/String;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v9, p3

    .line 8
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, -0x359b905f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x4

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int v0, p4, v0

    .line 27
    .line 28
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/16 v5, 0x20

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    move v4, v5

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v4, 0x10

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v4

    .line 41
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const/16 v7, 0x100

    .line 46
    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    move v6, v7

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v6, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v6

    .line 54
    and-int/lit16 v6, v0, 0x93

    .line 55
    .line 56
    const/16 v8, 0x92

    .line 57
    .line 58
    const/4 v10, 0x1

    .line 59
    const/4 v11, 0x0

    .line 60
    if-eq v6, v8, :cond_3

    .line 61
    .line 62
    move v6, v10

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move v6, v11

    .line 65
    :goto_3
    and-int/lit8 v8, v0, 0x1

    .line 66
    .line 67
    invoke-virtual {v9, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_9

    .line 72
    .line 73
    new-array v6, v11, [Landroidx/navigation/Navigator;

    .line 74
    .line 75
    invoke-static {v6, v9}, Landroidx/appcompat/app/ActionBar;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    and-int/lit8 v8, v0, 0xe

    .line 80
    .line 81
    if-ne v8, v1, :cond_4

    .line 82
    .line 83
    move v1, v10

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    move v1, v11

    .line 86
    :goto_4
    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    or-int/2addr v1, v8

    .line 91
    and-int/lit16 v8, v0, 0x380

    .line 92
    .line 93
    if-ne v8, v7, :cond_5

    .line 94
    .line 95
    move v7, v10

    .line 96
    goto :goto_5

    .line 97
    :cond_5
    move v7, v11

    .line 98
    :goto_5
    or-int/2addr v1, v7

    .line 99
    and-int/lit8 v0, v0, 0x70

    .line 100
    .line 101
    if-ne v0, v5, :cond_6

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_6
    move v10, v11

    .line 105
    :goto_6
    or-int v0, v1, v10

    .line 106
    .line 107
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-nez v0, :cond_8

    .line 112
    .line 113
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 114
    .line 115
    if-ne v1, v0, :cond_7

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_7
    move-object v0, v6

    .line 119
    goto :goto_8

    .line 120
    :cond_8
    :goto_7
    new-instance v1, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;

    .line 121
    .line 122
    move-object v0, v6

    .line 123
    const/4 v6, 0x1

    .line 124
    move-object v2, p0

    .line 125
    move-object v5, p1

    .line 126
    move-object v4, p2

    .line 127
    move-object v3, v0

    .line 128
    invoke-direct/range {v1 .. v6}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_8
    move-object v8, v1

    .line 135
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 136
    .line 137
    const/16 v10, 0x30

    .line 138
    .line 139
    const-string v1, "modify"

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-static/range {v0 .. v10}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 148
    .line 149
    .line 150
    goto :goto_9

    .line 151
    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 152
    .line 153
    .line 154
    :goto_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    new-instance v1, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda13;

    .line 161
    .line 162
    const/4 v6, 0x1

    .line 163
    move-object v2, p0

    .line 164
    move-object v3, p1

    .line 165
    move-object v4, p2

    .line 166
    move/from16 v5, p4

    .line 167
    .line 168
    invoke-direct/range {v1 .. v6}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function0;II)V

    .line 169
    .line 170
    .line 171
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    :cond_a
    return-void
.end method

.method public static final LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v11, p11

    .line 4
    .line 5
    move/from16 v12, p12

    .line 6
    .line 7
    move-object/from16 v0, p10

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v2, -0x7b81c7d6

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v2, v11, 0x6

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v3

    .line 31
    :goto_0
    or-int/2addr v2, v11

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v2, v11

    .line 34
    :goto_1
    and-int/lit8 v5, v11, 0x30

    .line 35
    .line 36
    move-object/from16 v13, p1

    .line 37
    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    const/16 v5, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v5, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v2, v5

    .line 52
    :cond_3
    and-int/lit16 v5, v11, 0x180

    .line 53
    .line 54
    if-nez v5, :cond_6

    .line 55
    .line 56
    and-int/lit8 v5, v12, 0x4

    .line 57
    .line 58
    if-nez v5, :cond_4

    .line 59
    .line 60
    move-object/from16 v5, p2

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    const/16 v7, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    move-object/from16 v5, p2

    .line 72
    .line 73
    :cond_5
    const/16 v7, 0x80

    .line 74
    .line 75
    :goto_3
    or-int/2addr v2, v7

    .line 76
    goto :goto_4

    .line 77
    :cond_6
    move-object/from16 v5, p2

    .line 78
    .line 79
    :goto_4
    or-int/lit16 v2, v2, 0x6c00

    .line 80
    .line 81
    const/high16 v7, 0x30000

    .line 82
    .line 83
    and-int v8, v11, v7

    .line 84
    .line 85
    if-nez v8, :cond_9

    .line 86
    .line 87
    and-int/lit8 v8, v12, 0x20

    .line 88
    .line 89
    if-nez v8, :cond_7

    .line 90
    .line 91
    move-object/from16 v8, p4

    .line 92
    .line 93
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_8

    .line 98
    .line 99
    const/high16 v9, 0x20000

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_7
    move-object/from16 v8, p4

    .line 103
    .line 104
    :cond_8
    const/high16 v9, 0x10000

    .line 105
    .line 106
    :goto_5
    or-int/2addr v2, v9

    .line 107
    goto :goto_6

    .line 108
    :cond_9
    move-object/from16 v8, p4

    .line 109
    .line 110
    :goto_6
    and-int/lit8 v9, v12, 0x40

    .line 111
    .line 112
    const/high16 v10, 0x180000

    .line 113
    .line 114
    if-eqz v9, :cond_b

    .line 115
    .line 116
    or-int/2addr v2, v10

    .line 117
    :cond_a
    move-object/from16 v10, p5

    .line 118
    .line 119
    goto :goto_8

    .line 120
    :cond_b
    and-int/2addr v10, v11

    .line 121
    if-nez v10, :cond_a

    .line 122
    .line 123
    move-object/from16 v10, p5

    .line 124
    .line 125
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-eqz v14, :cond_c

    .line 130
    .line 131
    const/high16 v14, 0x100000

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_c
    const/high16 v14, 0x80000

    .line 135
    .line 136
    :goto_7
    or-int/2addr v2, v14

    .line 137
    :goto_8
    const/high16 v14, 0xc00000

    .line 138
    .line 139
    and-int/2addr v14, v11

    .line 140
    if-nez v14, :cond_d

    .line 141
    .line 142
    const/high16 v14, 0x400000

    .line 143
    .line 144
    or-int/2addr v2, v14

    .line 145
    :cond_d
    and-int/lit16 v14, v12, 0x100

    .line 146
    .line 147
    const/high16 v15, 0x6000000

    .line 148
    .line 149
    if-eqz v14, :cond_f

    .line 150
    .line 151
    or-int/2addr v2, v15

    .line 152
    :cond_e
    move/from16 v15, p7

    .line 153
    .line 154
    goto :goto_a

    .line 155
    :cond_f
    and-int/2addr v15, v11

    .line 156
    if-nez v15, :cond_e

    .line 157
    .line 158
    move/from16 v15, p7

    .line 159
    .line 160
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-eqz v16, :cond_10

    .line 165
    .line 166
    const/high16 v16, 0x4000000

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_10
    const/high16 v16, 0x2000000

    .line 170
    .line 171
    :goto_9
    or-int v2, v2, v16

    .line 172
    .line 173
    :goto_a
    const/high16 v16, 0x30000000

    .line 174
    .line 175
    and-int v16, v11, v16

    .line 176
    .line 177
    if-nez v16, :cond_11

    .line 178
    .line 179
    const/high16 v16, 0x10000000

    .line 180
    .line 181
    or-int v2, v2, v16

    .line 182
    .line 183
    :cond_11
    move/from16 p10, v7

    .line 184
    .line 185
    move-object/from16 v7, p9

    .line 186
    .line 187
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v16

    .line 191
    if-eqz v16, :cond_12

    .line 192
    .line 193
    const/16 v16, 0x4

    .line 194
    .line 195
    goto :goto_b

    .line 196
    :cond_12
    move/from16 v16, v3

    .line 197
    .line 198
    :goto_b
    const v17, 0x12492493

    .line 199
    .line 200
    .line 201
    and-int v6, v2, v17

    .line 202
    .line 203
    const v4, 0x12492492

    .line 204
    .line 205
    .line 206
    const/16 v19, 0x1

    .line 207
    .line 208
    const/16 v20, 0x0

    .line 209
    .line 210
    if-ne v6, v4, :cond_14

    .line 211
    .line 212
    and-int/lit8 v4, v16, 0x3

    .line 213
    .line 214
    if-eq v4, v3, :cond_13

    .line 215
    .line 216
    goto :goto_c

    .line 217
    :cond_13
    move/from16 v3, v20

    .line 218
    .line 219
    goto :goto_d

    .line 220
    :cond_14
    :goto_c
    move/from16 v3, v19

    .line 221
    .line 222
    :goto_d
    and-int/lit8 v4, v2, 0x1

    .line 223
    .line 224
    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_27

    .line 229
    .line 230
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 231
    .line 232
    .line 233
    and-int/lit8 v3, v11, 0x1

    .line 234
    .line 235
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 236
    .line 237
    const v6, -0x71c00001

    .line 238
    .line 239
    .line 240
    const v21, -0x70001

    .line 241
    .line 242
    .line 243
    if-eqz v3, :cond_18

    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_15

    .line 250
    .line 251
    goto :goto_f

    .line 252
    :cond_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 253
    .line 254
    .line 255
    and-int/lit8 v3, v12, 0x4

    .line 256
    .line 257
    if-eqz v3, :cond_16

    .line 258
    .line 259
    and-int/lit16 v2, v2, -0x381

    .line 260
    .line 261
    :cond_16
    and-int/lit8 v3, v12, 0x20

    .line 262
    .line 263
    if-eqz v3, :cond_17

    .line 264
    .line 265
    and-int v2, v2, v21

    .line 266
    .line 267
    :cond_17
    and-int/2addr v2, v6

    .line 268
    move-object v14, v5

    .line 269
    move/from16 v3, v16

    .line 270
    .line 271
    move/from16 v5, v19

    .line 272
    .line 273
    move/from16 v9, v20

    .line 274
    .line 275
    move-object/from16 v16, p3

    .line 276
    .line 277
    move-object/from16 v19, p8

    .line 278
    .line 279
    move-object/from16 v20, v8

    .line 280
    .line 281
    move-object v8, v10

    .line 282
    move v10, v2

    .line 283
    move-object/from16 v2, p6

    .line 284
    .line 285
    :goto_e
    move/from16 v18, v15

    .line 286
    .line 287
    const/16 v6, 0x20

    .line 288
    .line 289
    goto :goto_13

    .line 290
    :cond_18
    :goto_f
    and-int/lit8 v3, v12, 0x4

    .line 291
    .line 292
    if-eqz v3, :cond_19

    .line 293
    .line 294
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    and-int/lit16 v2, v2, -0x381

    .line 299
    .line 300
    goto :goto_10

    .line 301
    :cond_19
    move-object v3, v5

    .line 302
    :goto_10
    new-instance v5, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 303
    .line 304
    move/from16 v22, v6

    .line 305
    .line 306
    const/4 v6, 0x0

    .line 307
    invoke-direct {v5, v6, v6, v6, v6}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 308
    .line 309
    .line 310
    and-int/lit8 v6, v12, 0x20

    .line 311
    .line 312
    if-eqz v6, :cond_1a

    .line 313
    .line 314
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 315
    .line 316
    and-int v2, v2, v21

    .line 317
    .line 318
    goto :goto_11

    .line 319
    :cond_1a
    move-object v6, v8

    .line 320
    :goto_11
    if-eqz v9, :cond_1b

    .line 321
    .line 322
    sget-object v8, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 323
    .line 324
    goto :goto_12

    .line 325
    :cond_1b
    move-object v8, v10

    .line 326
    :goto_12
    invoke-static {v0}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 327
    .line 328
    .line 329
    move-result-object v9

    .line 330
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v10

    .line 334
    move/from16 p2, v2

    .line 335
    .line 336
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    if-nez v10, :cond_1c

    .line 341
    .line 342
    if-ne v2, v4, :cond_1d

    .line 343
    .line 344
    :cond_1c
    new-instance v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 345
    .line 346
    invoke-direct {v2, v9}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    :cond_1d
    check-cast v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 353
    .line 354
    if-eqz v14, :cond_1e

    .line 355
    .line 356
    move/from16 v15, v19

    .line 357
    .line 358
    :cond_1e
    invoke-static {v0}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    and-int v10, p2, v22

    .line 363
    .line 364
    move-object v14, v3

    .line 365
    move/from16 v3, v16

    .line 366
    .line 367
    move-object/from16 v16, v5

    .line 368
    .line 369
    move/from16 v5, v19

    .line 370
    .line 371
    move-object/from16 v19, v9

    .line 372
    .line 373
    move/from16 v9, v20

    .line 374
    .line 375
    move-object/from16 v20, v6

    .line 376
    .line 377
    goto :goto_e

    .line 378
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 379
    .line 380
    .line 381
    and-int/lit8 v15, v10, 0xe

    .line 382
    .line 383
    shr-int/lit8 v21, v10, 0xf

    .line 384
    .line 385
    and-int/lit8 v21, v21, 0x70

    .line 386
    .line 387
    or-int v15, v15, v21

    .line 388
    .line 389
    and-int/lit8 v21, v15, 0xe

    .line 390
    .line 391
    xor-int/lit8 v5, v21, 0x6

    .line 392
    .line 393
    const/4 v6, 0x4

    .line 394
    if-le v5, v6, :cond_1f

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    if-nez v5, :cond_20

    .line 401
    .line 402
    :cond_1f
    and-int/lit8 v5, v15, 0x6

    .line 403
    .line 404
    if-ne v5, v6, :cond_21

    .line 405
    .line 406
    :cond_20
    const/4 v5, 0x1

    .line 407
    goto :goto_14

    .line 408
    :cond_21
    move v5, v9

    .line 409
    :goto_14
    and-int/lit8 v6, v15, 0x70

    .line 410
    .line 411
    xor-int/lit8 v6, v6, 0x30

    .line 412
    .line 413
    const/16 v9, 0x20

    .line 414
    .line 415
    if-le v6, v9, :cond_22

    .line 416
    .line 417
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    if-nez v6, :cond_23

    .line 422
    .line 423
    :cond_22
    and-int/lit8 v6, v15, 0x30

    .line 424
    .line 425
    if-ne v6, v9, :cond_24

    .line 426
    .line 427
    :cond_23
    const/4 v6, 0x1

    .line 428
    goto :goto_15

    .line 429
    :cond_24
    const/4 v6, 0x0

    .line 430
    :goto_15
    or-int/2addr v5, v6

    .line 431
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    if-nez v5, :cond_25

    .line 436
    .line 437
    if-ne v6, v4, :cond_26

    .line 438
    .line 439
    :cond_25
    new-instance v6, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    .line 440
    .line 441
    new-instance v4, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 442
    .line 443
    const/4 v5, 0x4

    .line 444
    invoke-direct {v4, v5, v1, v8}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    invoke-direct {v6, v4}, Landroidx/compose/foundation/lazy/grid/GridSlotCache;-><init>(Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    :cond_26
    move-object v15, v6

    .line 454
    check-cast v15, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    .line 455
    .line 456
    shr-int/lit8 v4, v10, 0x3

    .line 457
    .line 458
    and-int/lit8 v5, v4, 0xe

    .line 459
    .line 460
    or-int v5, v5, p10

    .line 461
    .line 462
    and-int/lit8 v6, v4, 0x70

    .line 463
    .line 464
    or-int/2addr v5, v6

    .line 465
    and-int/lit16 v6, v10, 0x1c00

    .line 466
    .line 467
    or-int/2addr v5, v6

    .line 468
    const v6, 0xe000

    .line 469
    .line 470
    .line 471
    and-int/2addr v6, v10

    .line 472
    or-int/2addr v5, v6

    .line 473
    const/high16 v6, 0x1c00000

    .line 474
    .line 475
    and-int/2addr v4, v6

    .line 476
    or-int/2addr v4, v5

    .line 477
    shl-int/lit8 v5, v10, 0xc

    .line 478
    .line 479
    const/high16 v6, 0x70000000

    .line 480
    .line 481
    and-int/2addr v5, v6

    .line 482
    or-int v24, v4, v5

    .line 483
    .line 484
    shr-int/lit8 v4, v10, 0x12

    .line 485
    .line 486
    and-int/lit8 v4, v4, 0xe

    .line 487
    .line 488
    shl-int/lit8 v3, v3, 0x3

    .line 489
    .line 490
    and-int/lit8 v3, v3, 0x70

    .line 491
    .line 492
    or-int v25, v4, v3

    .line 493
    .line 494
    move-object/from16 v23, v0

    .line 495
    .line 496
    move-object/from16 v17, v2

    .line 497
    .line 498
    move-object/from16 v22, v7

    .line 499
    .line 500
    move-object/from16 v21, v8

    .line 501
    .line 502
    invoke-static/range {v13 .. v25}, Lkotlin/math/MathKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 503
    .line 504
    .line 505
    move-object v3, v14

    .line 506
    move-object/from16 v4, v16

    .line 507
    .line 508
    move-object/from16 v7, v17

    .line 509
    .line 510
    move/from16 v8, v18

    .line 511
    .line 512
    move-object/from16 v9, v19

    .line 513
    .line 514
    move-object/from16 v5, v20

    .line 515
    .line 516
    move-object/from16 v6, v21

    .line 517
    .line 518
    goto :goto_16

    .line 519
    :cond_27
    move-object/from16 v23, v0

    .line 520
    .line 521
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 522
    .line 523
    .line 524
    move-object/from16 v4, p3

    .line 525
    .line 526
    move-object/from16 v7, p6

    .line 527
    .line 528
    move-object/from16 v9, p8

    .line 529
    .line 530
    move-object v3, v5

    .line 531
    move-object v5, v8

    .line 532
    move-object v6, v10

    .line 533
    move v8, v15

    .line 534
    :goto_16
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 535
    .line 536
    .line 537
    move-result-object v13

    .line 538
    if-eqz v13, :cond_28

    .line 539
    .line 540
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$$ExternalSyntheticLambda0;

    .line 541
    .line 542
    move-object/from16 v2, p1

    .line 543
    .line 544
    move-object/from16 v10, p9

    .line 545
    .line 546
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells$Adaptive;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;II)V

    .line 547
    .line 548
    .line 549
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 550
    .line 551
    :cond_28
    return-void
.end method

.method public static final NotificationActionButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v6, p3

    .line 8
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p3, -0xf34bbf5

    .line 11
    .line 12
    .line 13
    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 p3, p4, 0x6

    .line 17
    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p3, 0x2

    .line 29
    :goto_0
    or-int/2addr p3, p4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p3, p4

    .line 32
    :goto_1
    and-int/lit8 v0, p4, 0x30

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x20

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v0, 0x10

    .line 46
    .line 47
    :goto_2
    or-int/2addr p3, v0

    .line 48
    :cond_3
    and-int/lit16 v0, p4, 0x180

    .line 49
    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    const/16 v0, 0x100

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    const/16 v0, 0x80

    .line 62
    .line 63
    :goto_3
    or-int/2addr p3, v0

    .line 64
    :cond_5
    and-int/lit8 v0, p5, 0x8

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/16 v2, 0x800

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    or-int/lit16 p3, p3, 0xc00

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_6
    and-int/lit16 v0, p4, 0xc00

    .line 75
    .line 76
    if-nez v0, :cond_8

    .line 77
    .line 78
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    move v0, v2

    .line 85
    goto :goto_4

    .line 86
    :cond_7
    const/16 v0, 0x400

    .line 87
    .line 88
    :goto_4
    or-int/2addr p3, v0

    .line 89
    :cond_8
    :goto_5
    and-int/lit16 v0, p3, 0x493

    .line 90
    .line 91
    const/16 v3, 0x492

    .line 92
    .line 93
    const/4 v4, 0x1

    .line 94
    if-eq v0, v3, :cond_9

    .line 95
    .line 96
    move v0, v4

    .line 97
    goto :goto_6

    .line 98
    :cond_9
    move v0, v1

    .line 99
    :goto_6
    and-int/lit8 v3, p3, 0x1

    .line 100
    .line 101
    invoke-virtual {v6, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_d

    .line 106
    .line 107
    and-int/lit16 v0, p3, 0x1c00

    .line 108
    .line 109
    if-ne v0, v2, :cond_a

    .line 110
    .line 111
    move v1, v4

    .line 112
    :cond_a
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 119
    .line 120
    if-ne v0, v1, :cond_c

    .line 121
    .line 122
    :cond_b
    const/4 v0, 0x0

    .line 123
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_c
    move-object v5, v0

    .line 127
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 128
    .line 129
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 130
    .line 131
    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 132
    .line 133
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 138
    .line 139
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 140
    .line 141
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 142
    .line 143
    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 144
    .line 145
    .line 146
    and-int/lit16 v7, p3, 0x3fe

    .line 147
    .line 148
    const/16 v8, 0x8

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    move-object v0, p0

    .line 152
    move-object v1, p1

    .line 153
    move-object v2, p2

    .line 154
    invoke-static/range {v0 .. v8}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 155
    .line 156
    .line 157
    move-object p1, v0

    .line 158
    move-object p2, v1

    .line 159
    move-object p3, v2

    .line 160
    goto :goto_7

    .line 161
    :cond_d
    move-object p3, p2

    .line 162
    move-object p2, p1

    .line 163
    move-object p1, p0

    .line 164
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 165
    .line 166
    .line 167
    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_e

    .line 172
    .line 173
    new-instance p0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/IconKt$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    invoke-direct/range {p0 .. p5}, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/IconKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V

    .line 176
    .line 177
    .line 178
    iput-object p0, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    :cond_e
    return-void
.end method

.method public static final PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x6c6a2a1a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p3

    .line 19
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_1
    or-int/2addr v0, v1

    .line 31
    and-int/lit8 v1, v0, 0x13

    .line 32
    .line 33
    const/16 v2, 0x12

    .line 34
    .line 35
    if-ne v1, v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    :goto_2
    and-int/lit8 v0, v0, 0x7e

    .line 49
    .line 50
    invoke-static {p0, p1, p2, v0}, Landroidx/room/util/RelationUtil;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 51
    .line 52
    .line 53
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;

    .line 60
    .line 61
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;-><init>(ZLkotlin/jvm/functions/Function2;I)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public static final RadioGroup(Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p5

    .line 17
    .line 18
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    const v3, -0x2968b08

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    .line 26
    and-int/lit8 v3, p6, 0x6

    .line 27
    .line 28
    const/4 v7, 0x4

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    move v3, v7

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v3, 0x2

    .line 40
    :goto_0
    or-int v3, p6, v3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move/from16 v3, p6

    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/16 v6, 0x20

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    move v4, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v4, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v3, v4

    .line 58
    and-int/lit8 v4, p7, 0x8

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    or-int/lit16 v3, v3, 0xc00

    .line 63
    .line 64
    move-object/from16 v8, p3

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_3
    move-object/from16 v8, p3

    .line 68
    .line 69
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-eqz v9, :cond_4

    .line 74
    .line 75
    const/16 v9, 0x800

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const/16 v9, 0x400

    .line 79
    .line 80
    :goto_3
    or-int/2addr v3, v9

    .line 81
    :goto_4
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_5

    .line 86
    .line 87
    const/16 v9, 0x4000

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_5
    const/16 v9, 0x2000

    .line 91
    .line 92
    :goto_5
    or-int/2addr v9, v3

    .line 93
    and-int/lit16 v3, v9, 0x2493

    .line 94
    .line 95
    const/16 v10, 0x2492

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v12, 0x1

    .line 99
    if-eq v3, v10, :cond_6

    .line 100
    .line 101
    move v3, v12

    .line 102
    goto :goto_6

    .line 103
    :cond_6
    move v3, v11

    .line 104
    :goto_6
    and-int/lit8 v10, v9, 0x1

    .line 105
    .line 106
    invoke-virtual {v0, v10, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_e

    .line 111
    .line 112
    if-eqz v4, :cond_7

    .line 113
    .line 114
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    move-object v4, v3

    .line 117
    goto :goto_7

    .line 118
    :cond_7
    move-object v4, v8

    .line 119
    :goto_7
    move-object v3, v2

    .line 120
    check-cast v3, Lkotlin/collections/AbstractCollection;

    .line 121
    .line 122
    invoke-virtual {v3}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    if-eqz v9, :cond_f

    .line 133
    .line 134
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    move-object/from16 v3, p2

    .line 138
    .line 139
    move/from16 v6, p6

    .line 140
    .line 141
    move/from16 v7, p7

    .line 142
    .line 143
    invoke-direct/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;III)V

    .line 144
    .line 145
    .line 146
    :goto_8
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 147
    .line 148
    return-void

    .line 149
    :cond_8
    move-object v10, v1

    .line 150
    move-object v8, v4

    .line 151
    move-object v13, v5

    .line 152
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 153
    .line 154
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 155
    .line 156
    invoke-static {v1, v2, v0, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget-wide v2, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 161
    .line 162
    ushr-long v4, v2, v6

    .line 163
    .line 164
    xor-long/2addr v2, v4

    .line 165
    long-to-int v2, v2

    .line 166
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-static {v0, v8}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 182
    .line 183
    .line 184
    iget-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 185
    .line 186
    if-eqz v6, :cond_9

    .line 187
    .line 188
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 189
    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 193
    .line 194
    .line 195
    :goto_9
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 196
    .line 197
    invoke-static {v0, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 198
    .line 199
    .line 200
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 201
    .line 202
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 210
    .line 211
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 212
    .line 213
    .line 214
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 215
    .line 216
    invoke-static {v0, v1}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 217
    .line 218
    .line 219
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 220
    .line 221
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 222
    .line 223
    .line 224
    const v1, 0x56f87857

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 228
    .line 229
    .line 230
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v14

    .line 234
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_d

    .line 239
    .line 240
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    move-object/from16 v15, p2

    .line 245
    .line 246
    invoke-interface {v15, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    and-int/lit8 v4, v9, 0xe

    .line 257
    .line 258
    if-ne v4, v7, :cond_a

    .line 259
    .line 260
    move v4, v12

    .line 261
    goto :goto_b

    .line 262
    :cond_a
    move v4, v11

    .line 263
    :goto_b
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    or-int/2addr v4, v5

    .line 268
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    if-nez v4, :cond_b

    .line 273
    .line 274
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 275
    .line 276
    if-ne v5, v4, :cond_c

    .line 277
    .line 278
    :cond_b
    new-instance v5, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda1;

    .line 279
    .line 280
    invoke-direct {v5, v11, v1, v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 287
    .line 288
    const/4 v4, 0x0

    .line 289
    const/4 v6, 0x0

    .line 290
    move-object v1, v2

    .line 291
    move-object v2, v5

    .line 292
    move-object v5, v0

    .line 293
    move v0, v3

    .line 294
    const/4 v3, 0x0

    .line 295
    invoke-static/range {v0 .. v6}, Landroidx/room/util/DBUtil;->RadioButton(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 296
    .line 297
    .line 298
    move-object v0, v5

    .line 299
    goto :goto_a

    .line 300
    :cond_d
    move-object/from16 v15, p2

    .line 301
    .line 302
    move-object v5, v0

    .line 303
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 307
    .line 308
    .line 309
    :goto_c
    move-object v4, v8

    .line 310
    goto :goto_d

    .line 311
    :cond_e
    move-object/from16 v15, p2

    .line 312
    .line 313
    move-object v10, v1

    .line 314
    move-object v13, v5

    .line 315
    move-object v5, v0

    .line 316
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 317
    .line 318
    .line 319
    goto :goto_c

    .line 320
    :goto_d
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    if-eqz v9, :cond_f

    .line 325
    .line 326
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda0;

    .line 327
    .line 328
    const/4 v8, 0x1

    .line 329
    move-object/from16 v2, p1

    .line 330
    .line 331
    move/from16 v6, p6

    .line 332
    .line 333
    move/from16 v7, p7

    .line 334
    .line 335
    move-object v1, v10

    .line 336
    move-object v5, v13

    .line 337
    move-object v3, v15

    .line 338
    invoke-direct/range {v0 .. v8}, Lapp/k9mail/core/ui/compose/designsystem/atom/RadioGroupKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;III)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_8

    .line 342
    .line 343
    :cond_f
    return-void
.end method

.method public static final SettingsImportContent(Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    move-object v3, p4

    .line 2
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p4, -0x15740400

    .line 5
    .line 6
    .line 7
    invoke-virtual {v3, p4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p4, p5, 0x6

    .line 11
    .line 12
    if-nez p4, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-virtual {v3, p4}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    const/4 p4, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p4, 0x2

    .line 27
    :goto_0
    or-int/2addr p4, p5

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move p4, p5

    .line 30
    :goto_1
    and-int/lit8 v0, p5, 0x30

    .line 31
    .line 32
    const/16 v1, 0x20

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move v0, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v0, 0x10

    .line 45
    .line 46
    :goto_2
    or-int/2addr p4, v0

    .line 47
    :cond_3
    and-int/lit16 v0, p5, 0x180

    .line 48
    .line 49
    const/16 v2, 0x100

    .line 50
    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    move v0, v2

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    const/16 v0, 0x80

    .line 62
    .line 63
    :goto_3
    or-int/2addr p4, v0

    .line 64
    :cond_5
    and-int/lit16 v0, p5, 0xc00

    .line 65
    .line 66
    if-nez v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v3, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    const/16 v0, 0x800

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_6
    const/16 v0, 0x400

    .line 78
    .line 79
    :goto_4
    or-int/2addr p4, v0

    .line 80
    :cond_7
    and-int/lit16 v0, p4, 0x493

    .line 81
    .line 82
    const/16 v4, 0x492

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v5, 0x1

    .line 86
    if-eq v0, v4, :cond_8

    .line 87
    .line 88
    move v0, v5

    .line 89
    goto :goto_5

    .line 90
    :cond_8
    move v0, v6

    .line 91
    :goto_5
    and-int/lit8 v4, p4, 0x1

    .line 92
    .line 93
    invoke-virtual {v3, v4, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_d

    .line 98
    .line 99
    sget-object v0, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 100
    .line 101
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v4, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    .line 121
    .line 122
    and-int/lit8 v7, p4, 0x70

    .line 123
    .line 124
    if-ne v7, v1, :cond_9

    .line 125
    .line 126
    move v1, v5

    .line 127
    goto :goto_6

    .line 128
    :cond_9
    move v1, v6

    .line 129
    :goto_6
    and-int/lit16 p4, p4, 0x380

    .line 130
    .line 131
    if-ne p4, v2, :cond_a

    .line 132
    .line 133
    move p4, v5

    .line 134
    goto :goto_7

    .line 135
    :cond_a
    move p4, v6

    .line 136
    :goto_7
    or-int/2addr p4, v1

    .line 137
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-nez p4, :cond_b

    .line 142
    .line 143
    sget-object p4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 144
    .line 145
    if-ne v1, p4, :cond_c

    .line 146
    .line 147
    :cond_b
    new-instance v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportScreenKt$$ExternalSyntheticLambda3;

    .line 148
    .line 149
    invoke-direct {v1, p1, p2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportScreenKt$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_c
    check-cast v1, Landroidx/fragment/app/FragmentResultListener;

    .line 156
    .line 157
    const-string p4, "settings_import"

    .line 158
    .line 159
    invoke-virtual {v0, p4, v4, v1}, Landroidx/fragment/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    .line 160
    .line 161
    .line 162
    iget-object p4, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;->bundleValue:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v0, Lkotlin/Pair;

    .line 165
    .line 166
    const-string v1, "action"

    .line 167
    .line 168
    invoke-direct {v0, v1, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    new-array p4, v5, [Lkotlin/Pair;

    .line 172
    .line 173
    aput-object v0, p4, v6

    .line 174
    .line 175
    invoke-static {p4}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 180
    .line 181
    invoke-static {v0, p3}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    const v0, 0x6939f598

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 189
    .line 190
    .line 191
    const v0, -0x1d9ca005

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 195
    .line 196
    .line 197
    new-array v0, v6, [Ljava/lang/Object;

    .line 198
    .line 199
    new-instance v1, Landroidx/compose/ui/platform/WeakCache;

    .line 200
    .line 201
    const/4 v2, 0x3

    .line 202
    sget-object v4, Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$1;->INSTANCE:Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$1;

    .line 203
    .line 204
    sget-object v5, Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$2;->INSTANCE:Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$2;

    .line 205
    .line 206
    invoke-direct {v1, v2, v4, v5}, Landroidx/compose/ui/platform/WeakCache;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const/16 v4, 0xc00

    .line 210
    .line 211
    const/4 v5, 0x4

    .line 212
    sget-object v2, Landroidx/fragment/compose/FragmentStateKt$rememberFragmentState$1;->INSTANCE:Landroidx/fragment/compose/FragmentStateKt$rememberFragmentState$1;

    .line 213
    .line 214
    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    move-object v1, v0

    .line 219
    check-cast v1, Landroidx/fragment/compose/FragmentState;

    .line 220
    .line 221
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 222
    .line 223
    .line 224
    move-object v4, v3

    .line 225
    sget-object v3, Lapp/k9mail/feature/settings/import/ui/SettingsImportScreenKt$SettingsImportContent$$inlined$AndroidFragment$1;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/SettingsImportScreenKt$SettingsImportContent$$inlined$AndroidFragment$1;

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    move-object v2, p4

    .line 229
    move-object v0, v7

    .line 230
    invoke-static/range {v0 .. v5}, Landroidx/room/util/DBUtil;->AndroidFragment(Landroidx/compose/ui/Modifier;Landroidx/fragment/compose/FragmentState;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 231
    .line 232
    .line 233
    move-object v3, v4

    .line 234
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 235
    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_d
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 239
    .line 240
    .line 241
    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 242
    .line 243
    .line 244
    move-result-object p4

    .line 245
    if-eqz p4, :cond_e

    .line 246
    .line 247
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 248
    .line 249
    const/16 v6, 0x8

    .line 250
    .line 251
    move-object v1, p0

    .line 252
    move-object v2, p1

    .line 253
    move-object v3, p2

    .line 254
    move-object v4, p3

    .line 255
    move v5, p5

    .line 256
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 257
    .line 258
    .line 259
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 260
    .line 261
    :cond_e
    return-void
.end method

.method public static final SettingsImportScreen(Lapp/k9mail/feature/settings/import/ui/SettingsImportAction;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v11, p4

    .line 10
    .line 11
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x5fc615e5

    .line 14
    .line 15
    .line 16
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v11, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x20

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v0, 0x10

    .line 29
    .line 30
    :goto_0
    or-int v0, p5, v0

    .line 31
    .line 32
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x100

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v1, 0x80

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v1

    .line 44
    or-int/lit16 v0, v0, 0xc00

    .line 45
    .line 46
    and-int/lit16 v1, v0, 0x493

    .line 47
    .line 48
    const/16 v2, 0x492

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    if-eq v1, v2, :cond_2

    .line 52
    .line 53
    move v1, v4

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    :goto_2
    and-int/2addr v0, v4

    .line 57
    invoke-virtual {v11, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/4 v1, 0x4

    .line 66
    invoke-direct {v0, v1, v3}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    const v1, 0x3e7b23a1

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    invoke-direct {v0, p0, p1, v3, v1}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    const v1, -0x356b0427    # -4881900.5f

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    const v12, 0x180036

    .line 90
    .line 91
    .line 92
    const/16 v13, 0x3c

    .line 93
    .line 94
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    invoke-static/range {v4 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 105
    .line 106
    .line 107
    move-object/from16 v4, p3

    .line 108
    .line 109
    :goto_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 116
    .line 117
    const/16 v6, 0xb

    .line 118
    .line 119
    move-object v1, p0

    .line 120
    move-object v2, p1

    .line 121
    move/from16 v5, p5

    .line 122
    .line 123
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 124
    .line 125
    .line 126
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 127
    .line 128
    :cond_4
    return-void
.end method

.method public static final TextBodyMedium-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move/from16 v8, p8

    .line 359
    move-object/from16 v0, p7

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v1, 0x2973ee80

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v1, v8, 0x6

    move-object/from16 v9, p0

    if-nez v1, :cond_1

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v8

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    :cond_2
    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v8, 0x30

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    :goto_3
    or-int/lit16 v4, v1, 0xd80

    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_6

    or-int/lit16 v4, v1, 0x6d80

    :cond_5
    move/from16 v1, p4

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v8, 0x6000

    if-nez v1, :cond_5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x4000

    goto :goto_4

    :cond_7
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v4, v6

    :goto_5
    and-int/lit8 v6, p9, 0x20

    const/high16 v7, 0x30000

    if-eqz v6, :cond_9

    or-int/2addr v4, v7

    :cond_8
    move/from16 v7, p5

    goto :goto_7

    :cond_9
    and-int/2addr v7, v8

    if-nez v7, :cond_8

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const/high16 v10, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v10, 0x10000

    :goto_6
    or-int/2addr v4, v10

    :goto_7
    and-int/lit8 v10, p9, 0x40

    const/high16 v11, 0x180000

    if-eqz v10, :cond_c

    or-int/2addr v4, v11

    :cond_b
    move-object/from16 v11, p6

    goto :goto_9

    :cond_c
    and-int/2addr v11, v8

    if-nez v11, :cond_b

    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/high16 v12, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v12, 0x80000

    :goto_8
    or-int/2addr v4, v12

    :goto_9
    const v12, 0x92493

    and-int/2addr v12, v4

    const v13, 0x92492

    const/4 v14, 0x1

    if-eq v12, v13, :cond_e

    move v12, v14

    goto :goto_a

    :cond_e
    const/4 v12, 0x0

    :goto_a
    and-int/lit8 v13, v4, 0x1

    invoke-virtual {v0, v13, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v12

    if-eqz v12, :cond_14

    if-eqz v2, :cond_f

    .line 360
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v31, v10

    move-object v10, v2

    move/from16 v2, v31

    goto :goto_b

    :cond_f
    move v2, v10

    move-object v10, v3

    .line 361
    :goto_b
    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    if-eqz v5, :cond_10

    move/from16 v20, v14

    goto :goto_c

    :cond_10
    move/from16 v20, v1

    :goto_c
    if-eqz v6, :cond_11

    const v1, 0x7fffffff

    move/from16 v22, v1

    goto :goto_d

    :cond_11
    move/from16 v22, v7

    :goto_d
    if-eqz v2, :cond_13

    .line 362
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 363
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v2, :cond_12

    .line 364
    new-instance v1, Landroidx/work/Data$$ExternalSyntheticLambda0;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 365
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 366
    :cond_12
    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v25, v1

    goto :goto_e

    :cond_13
    move-object/from16 v25, p6

    .line 367
    :goto_e
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 368
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 369
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 370
    iget-object v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    and-int/lit16 v2, v4, 0x3fe

    shr-int/lit8 v3, v4, 0x9

    and-int/lit8 v3, v3, 0xe

    shr-int/lit8 v5, v4, 0x6

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v3, v5

    shr-int/lit8 v5, v4, 0x3

    const v6, 0xe000

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    const/high16 v5, 0x1c00000

    shl-int/lit8 v4, v4, 0x3

    and-int/2addr v4, v5

    or-int v29, v3, v4

    const v30, 0x1abf8

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v27, v0

    move-object/from16 v26, v1

    move/from16 v28, v2

    .line 371
    invoke-static/range {v9 .. v30}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v2, v10

    move-wide v3, v11

    move/from16 v5, v20

    move/from16 v6, v22

    move-object/from16 v7, v25

    goto :goto_f

    :cond_14
    move-object/from16 v27, v0

    .line 372
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move v5, v1

    move-object v2, v3

    move v6, v7

    move-wide/from16 v3, p2

    move-object/from16 v7, p6

    .line 373
    :goto_f
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_15

    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyMediumKt$$ExternalSyntheticLambda1;

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyMediumKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;III)V

    .line 374
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    .line 1
    move/from16 v8, p8

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v0, p7

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, -0x47331dcc

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v1, v8, 0x6

    .line 17
    .line 18
    move-object/from16 v9, p0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x2

    .line 31
    :goto_0
    or-int/2addr v1, v8

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v8

    .line 34
    :goto_1
    and-int/lit8 v2, p9, 0x2

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    or-int/lit8 v1, v1, 0x30

    .line 39
    .line 40
    :cond_2
    move-object/from16 v3, p1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    and-int/lit8 v3, v8, 0x30

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    move-object/from16 v3, p1

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    const/16 v4, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    const/16 v4, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v1, v4

    .line 61
    :goto_3
    and-int/lit8 v4, p9, 0x4

    .line 62
    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    or-int/lit16 v1, v1, 0x180

    .line 66
    .line 67
    :cond_5
    move-wide/from16 v5, p2

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_6
    and-int/lit16 v5, v8, 0x180

    .line 71
    .line 72
    if-nez v5, :cond_5

    .line 73
    .line 74
    move-wide/from16 v5, p2

    .line 75
    .line 76
    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_7

    .line 81
    .line 82
    const/16 v7, 0x100

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_7
    const/16 v7, 0x80

    .line 86
    .line 87
    :goto_4
    or-int/2addr v1, v7

    .line 88
    :goto_5
    or-int/lit16 v7, v1, 0xc00

    .line 89
    .line 90
    and-int/lit8 v10, p9, 0x10

    .line 91
    .line 92
    if-eqz v10, :cond_9

    .line 93
    .line 94
    or-int/lit16 v7, v1, 0x6c00

    .line 95
    .line 96
    :cond_8
    move/from16 v1, p4

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_9
    and-int/lit16 v1, v8, 0x6000

    .line 100
    .line 101
    if-nez v1, :cond_8

    .line 102
    .line 103
    move/from16 v1, p4

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-eqz v11, :cond_a

    .line 110
    .line 111
    const/16 v11, 0x4000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_a
    const/16 v11, 0x2000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v7, v11

    .line 117
    :goto_7
    and-int/lit8 v11, p9, 0x20

    .line 118
    .line 119
    const/high16 v12, 0x30000

    .line 120
    .line 121
    if-eqz v11, :cond_c

    .line 122
    .line 123
    or-int/2addr v7, v12

    .line 124
    :cond_b
    move/from16 v12, p5

    .line 125
    .line 126
    goto :goto_9

    .line 127
    :cond_c
    and-int/2addr v12, v8

    .line 128
    if-nez v12, :cond_b

    .line 129
    .line 130
    move/from16 v12, p5

    .line 131
    .line 132
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    if-eqz v13, :cond_d

    .line 137
    .line 138
    const/high16 v13, 0x20000

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_d
    const/high16 v13, 0x10000

    .line 142
    .line 143
    :goto_8
    or-int/2addr v7, v13

    .line 144
    :goto_9
    and-int/lit8 v13, p9, 0x40

    .line 145
    .line 146
    const/high16 v14, 0x180000

    .line 147
    .line 148
    if-eqz v13, :cond_f

    .line 149
    .line 150
    or-int/2addr v7, v14

    .line 151
    :cond_e
    move-object/from16 v14, p6

    .line 152
    .line 153
    goto :goto_b

    .line 154
    :cond_f
    and-int/2addr v14, v8

    .line 155
    if-nez v14, :cond_e

    .line 156
    .line 157
    move-object/from16 v14, p6

    .line 158
    .line 159
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-eqz v15, :cond_10

    .line 164
    .line 165
    const/high16 v15, 0x100000

    .line 166
    .line 167
    goto :goto_a

    .line 168
    :cond_10
    const/high16 v15, 0x80000

    .line 169
    .line 170
    :goto_a
    or-int/2addr v7, v15

    .line 171
    :goto_b
    const v15, 0x92493

    .line 172
    .line 173
    .line 174
    and-int/2addr v15, v7

    .line 175
    const v1, 0x92492

    .line 176
    .line 177
    .line 178
    const/16 v16, 0x1

    .line 179
    .line 180
    if-eq v15, v1, :cond_11

    .line 181
    .line 182
    move/from16 v1, v16

    .line 183
    .line 184
    goto :goto_c

    .line 185
    :cond_11
    const/4 v1, 0x0

    .line 186
    :goto_c
    and-int/lit8 v15, v7, 0x1

    .line 187
    .line 188
    invoke-virtual {v0, v15, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_18

    .line 193
    .line 194
    if-eqz v2, :cond_12

    .line 195
    .line 196
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 197
    .line 198
    move/from16 v30, v10

    .line 199
    .line 200
    move-object v10, v1

    .line 201
    move/from16 v1, v30

    .line 202
    .line 203
    goto :goto_d

    .line 204
    :cond_12
    move v1, v10

    .line 205
    move-object v10, v3

    .line 206
    :goto_d
    if-eqz v4, :cond_13

    .line 207
    .line 208
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 209
    .line 210
    move-wide/from16 v30, v2

    .line 211
    .line 212
    move v2, v11

    .line 213
    move-wide/from16 v11, v30

    .line 214
    .line 215
    goto :goto_e

    .line 216
    :cond_13
    move v2, v11

    .line 217
    move-wide v11, v5

    .line 218
    :goto_e
    if-eqz v1, :cond_14

    .line 219
    .line 220
    move/from16 v20, v16

    .line 221
    .line 222
    goto :goto_f

    .line 223
    :cond_14
    move/from16 v20, p4

    .line 224
    .line 225
    :goto_f
    if-eqz v2, :cond_15

    .line 226
    .line 227
    const v1, 0x7fffffff

    .line 228
    .line 229
    .line 230
    move/from16 v22, v1

    .line 231
    .line 232
    goto :goto_10

    .line 233
    :cond_15
    move/from16 v22, p5

    .line 234
    .line 235
    :goto_10
    if-eqz v13, :cond_17

    .line 236
    .line 237
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 242
    .line 243
    if-ne v1, v2, :cond_16

    .line 244
    .line 245
    new-instance v1, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 246
    .line 247
    const/16 v2, 0x13

    .line 248
    .line 249
    invoke-direct {v1, v2}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_16
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 256
    .line 257
    move-object/from16 v24, v1

    .line 258
    .line 259
    goto :goto_11

    .line 260
    :cond_17
    move-object/from16 v24, v14

    .line 261
    .line 262
    :goto_11
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 269
    .line 270
    iget-object v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 271
    .line 272
    and-int/lit16 v2, v7, 0x3fe

    .line 273
    .line 274
    shr-int/lit8 v3, v7, 0x9

    .line 275
    .line 276
    and-int/lit8 v3, v3, 0xe

    .line 277
    .line 278
    shr-int/lit8 v4, v7, 0x6

    .line 279
    .line 280
    and-int/lit16 v4, v4, 0x380

    .line 281
    .line 282
    or-int/2addr v3, v4

    .line 283
    shr-int/lit8 v4, v7, 0x3

    .line 284
    .line 285
    const v5, 0xe000

    .line 286
    .line 287
    .line 288
    and-int/2addr v4, v5

    .line 289
    or-int/2addr v3, v4

    .line 290
    const/high16 v4, 0x380000

    .line 291
    .line 292
    and-int/2addr v4, v7

    .line 293
    or-int v28, v3, v4

    .line 294
    .line 295
    const v29, 0xabf8

    .line 296
    .line 297
    .line 298
    const-wide/16 v13, 0x0

    .line 299
    .line 300
    const-wide/16 v15, 0x0

    .line 301
    .line 302
    const/16 v17, 0x0

    .line 303
    .line 304
    const-wide/16 v18, 0x0

    .line 305
    .line 306
    const/16 v21, 0x0

    .line 307
    .line 308
    const/16 v23, 0x0

    .line 309
    .line 310
    move-object/from16 v26, v0

    .line 311
    .line 312
    move-object/from16 v25, v1

    .line 313
    .line 314
    move/from16 v27, v2

    .line 315
    .line 316
    invoke-static/range {v9 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 317
    .line 318
    .line 319
    move-object v2, v10

    .line 320
    move-wide v3, v11

    .line 321
    move/from16 v5, v20

    .line 322
    .line 323
    move/from16 v6, v22

    .line 324
    .line 325
    move-object/from16 v7, v24

    .line 326
    .line 327
    goto :goto_12

    .line 328
    :cond_18
    move-object/from16 v26, v0

    .line 329
    .line 330
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 331
    .line 332
    .line 333
    move-object v2, v3

    .line 334
    move-wide v3, v5

    .line 335
    move-object v7, v14

    .line 336
    move/from16 v5, p4

    .line 337
    .line 338
    move/from16 v6, p5

    .line 339
    .line 340
    :goto_12
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    if-eqz v11, :cond_19

    .line 345
    .line 346
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyMediumKt$$ExternalSyntheticLambda1;

    .line 347
    .line 348
    const/4 v10, 0x1

    .line 349
    move-object/from16 v1, p0

    .line 350
    .line 351
    move/from16 v9, p9

    .line 352
    .line 353
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyMediumKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;III)V

    .line 354
    .line 355
    .line 356
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 357
    .line 358
    :cond_19
    return-void
.end method

.method public static final bringIntoView(Landroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 5
    .line 6
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    move-object v0, p0

    .line 13
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 16
    .line 17
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string/jumbo v1, "visitAncestors called on an unattached node"

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 30
    .line 31
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_c

    .line 37
    .line 38
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 39
    .line 40
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 43
    .line 44
    iget v3, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 45
    .line 46
    const/high16 v4, 0x80000

    .line 47
    .line 48
    and-int/2addr v3, v4

    .line 49
    if-eqz v3, :cond_a

    .line 50
    .line 51
    :goto_1
    if-eqz v0, :cond_a

    .line 52
    .line 53
    iget v3, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 54
    .line 55
    and-int/2addr v3, v4

    .line 56
    if-eqz v3, :cond_9

    .line 57
    .line 58
    move-object v3, v0

    .line 59
    move-object v5, v2

    .line 60
    :goto_2
    if-eqz v3, :cond_9

    .line 61
    .line 62
    instance-of v6, v3, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    .line 63
    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    move-object v2, v3

    .line 67
    goto :goto_5

    .line 68
    :cond_2
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 69
    .line 70
    and-int/2addr v6, v4

    .line 71
    if-eqz v6, :cond_8

    .line 72
    .line 73
    instance-of v6, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 74
    .line 75
    if-eqz v6, :cond_8

    .line 76
    .line 77
    move-object v6, v3

    .line 78
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 79
    .line 80
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    :goto_3
    const/4 v8, 0x1

    .line 84
    if-eqz v6, :cond_7

    .line 85
    .line 86
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 87
    .line 88
    and-int/2addr v9, v4

    .line 89
    if-eqz v9, :cond_6

    .line 90
    .line 91
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    if-ne v7, v8, :cond_3

    .line 94
    .line 95
    move-object v3, v6

    .line 96
    goto :goto_4

    .line 97
    :cond_3
    if-nez v5, :cond_4

    .line 98
    .line 99
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 100
    .line 101
    const/16 v8, 0x10

    .line 102
    .line 103
    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    .line 104
    .line 105
    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    if-eqz v3, :cond_5

    .line 109
    .line 110
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object v3, v2

    .line 114
    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    if-ne v7, v8, :cond_8

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_2

    .line 128
    :cond_9
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_b

    .line 136
    .line 137
    iget-object v0, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 138
    .line 139
    if-eqz v0, :cond_b

    .line 140
    .line 141
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_b
    move-object v0, v2

    .line 147
    goto :goto_0

    .line 148
    :cond_c
    :goto_5
    check-cast v2, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;

    .line 149
    .line 150
    if-nez v2, :cond_d

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_d
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    new-instance v0, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;

    .line 158
    .line 159
    const/16 v1, 0x9

    .line 160
    .line 161
    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v2, p0, v0, p2}, Landroidx/compose/ui/relocation/BringIntoViewModifierNode;->bringIntoView(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/focus/FocusTargetNode$invalidateFocus$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 169
    .line 170
    if-ne p0, p1, :cond_e

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_e
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 174
    .line 175
    return-object p0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    if-nez v2, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    array-length v4, v2

    .line 43
    if-gtz v4, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    aget-object v2, v2, v0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    return v3

    .line 50
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-class v5, Landroid/app/AppOpsManager;

    .line 59
    .line 60
    if-ne v3, v1, :cond_9

    .line 61
    .line 62
    invoke-static {v4, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_9

    .line 67
    .line 68
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v4, 0x1d

    .line 71
    .line 72
    if-lt v3, v4, :cond_8

    .line 73
    .line 74
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/app/AppOpsManager;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x1

    .line 85
    if-nez v3, :cond_5

    .line 86
    .line 87
    move v2, v5

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {v3, p1, v4, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :goto_2
    if-eqz v2, :cond_6

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    invoke-static {p0}, Landroidx/core/app/AppOpsManagerCompat$Api29Impl;->getOpPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-nez v3, :cond_7

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    invoke-virtual {v3, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    :goto_3
    move v2, v5

    .line 108
    goto :goto_4

    .line 109
    :cond_8
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Landroid/app/AppOpsManager;

    .line 114
    .line 115
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroid/app/AppOpsManager;

    .line 125
    .line 126
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    :goto_4
    if-nez v2, :cond_a

    .line 131
    .line 132
    :goto_5
    return v0

    .line 133
    :cond_a
    const/4 p0, -0x2

    .line 134
    return p0
.end method

.method public static final createCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;)Landroidx/camera/core/impl/AutoValue_Config_Option;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "camera2.captureRequest.option."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 23
    .line 24
    const-class v2, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v1, v0, v2, p0}, Landroidx/camera/core/impl/AutoValue_Config_Option;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public static varargs createComboCallback([Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/CameraCaptureCallback;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Landroidx/camera/core/impl/CameraCaptureCallbacks$NoOpCameraCaptureCallback;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance v0, Landroidx/camera/core/MetadataImageReader$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Landroidx/camera/core/MetadataImageReader$1;-><init>(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static fromByteArray([B)Landroidx/work/Data;
    .locals 7

    .line 1
    const-string v0, "Error in Data#fromByteArray: "

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/16 v2, 0x2800

    .line 8
    .line 9
    if-gt v1, v2, :cond_7

    .line 10
    .line 11
    array-length v1, p0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x2

    .line 28
    new-array p0, p0, [B

    .line 29
    .line 30
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aget-byte v4, p0, v3

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const/16 v6, -0x54

    .line 38
    .line 39
    if-ne v4, v6, :cond_1

    .line 40
    .line 41
    aget-byte p0, p0, v5

    .line 42
    .line 43
    const/16 v4, -0x13

    .line 44
    .line 45
    if-ne p0, v4, :cond_1

    .line 46
    .line 47
    move p0, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move p0, v3

    .line 50
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 51
    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    new-instance p0, Ljava/io/ObjectInputStream;

    .line 56
    .line 57
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    :goto_1
    if-ge v3, v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_8

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_6

    .line 88
    :catch_1
    move-exception p0

    .line 89
    goto :goto_7

    .line 90
    :goto_2
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    :catchall_1
    move-exception v3

    .line 92
    :try_start_4
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw v3

    .line 96
    :cond_3
    new-instance p0, Ljava/io/DataInputStream;

    .line 97
    .line 98
    invoke-direct {p0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 99
    .line 100
    .line 101
    :try_start_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    const/16 v4, -0x5411

    .line 106
    .line 107
    if-ne v2, v4, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-ne v2, v5, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    const-string v4, "Unsupported version number: "

    .line 117
    .line 118
    invoke-static {v4, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    const-string v4, "Magic number doesn\'t match: "

    .line 127
    .line 128
    invoke-static {v4, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :goto_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    :goto_4
    if-ge v3, v2, :cond_6

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    invoke-static {p0, v4}, Landroidx/work/Data$Companion;->fromByteArray$readValue(Ljava/io/DataInputStream;B)Ljava/io/Serializable;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 154
    .line 155
    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :catchall_2
    move-exception v2

    .line 160
    goto :goto_5

    .line 161
    :cond_6
    :try_start_6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_8

    .line 165
    :goto_5
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 166
    :catchall_3
    move-exception v3

    .line 167
    :try_start_8
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    .line 171
    :goto_6
    sget-object v2, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3, v2, v0, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    goto :goto_8

    .line 181
    :goto_7
    sget-object v2, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v3, v2, v0, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :goto_8
    new-instance p0, Landroidx/work/Data;

    .line 191
    .line 192
    invoke-direct {p0, v1}, Landroidx/work/Data;-><init>(Ljava/util/LinkedHashMap;)V

    .line 193
    .line 194
    .line 195
    return-object p0

    .line 196
    :cond_7
    const-string p0, "Data cannot occupy more than 10240 bytes when serialized"

    .line 197
    .line 198
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const/4 p0, 0x0

    .line 202
    return-object p0
.end method

.method public static final fromByteArray$readValue(Ljava/io/DataInputStream;B)Ljava/io/Serializable;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    const/4 v1, 0x2

    .line 18
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_2
    const/4 v1, 0x3

    .line 30
    if-ne p1, v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_3
    const/4 v1, 0x4

    .line 42
    if-ne p1, v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_4
    const/4 v1, 0x5

    .line 54
    if-ne p1, v1, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_5
    const/4 v1, 0x6

    .line 66
    if-ne p1, v1, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_6
    const/4 v1, 0x7

    .line 78
    if-ne p1, v1, :cond_7

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_7
    const/16 v1, 0x8

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    if-ne p1, v1, :cond_9

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    new-array v0, p1, [Ljava/lang/Boolean;

    .line 95
    .line 96
    :goto_0
    if-ge v2, p1, :cond_8

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    aput-object v1, v0, v2

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    return-object v0

    .line 112
    :cond_9
    const/16 v1, 0x9

    .line 113
    .line 114
    if-ne p1, v1, :cond_b

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    new-array v0, p1, [Ljava/lang/Byte;

    .line 121
    .line 122
    :goto_1
    if-ge v2, p1, :cond_a

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    aput-object v1, v0, v2

    .line 133
    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_a
    return-object v0

    .line 138
    :cond_b
    const/16 v1, 0xa

    .line 139
    .line 140
    if-ne p1, v1, :cond_d

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    new-array v0, p1, [Ljava/lang/Integer;

    .line 147
    .line 148
    :goto_2
    if-ge v2, p1, :cond_c

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    aput-object v1, v0, v2

    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_c
    return-object v0

    .line 164
    :cond_d
    const/16 v1, 0xb

    .line 165
    .line 166
    if-ne p1, v1, :cond_f

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    new-array v0, p1, [Ljava/lang/Long;

    .line 173
    .line 174
    :goto_3
    if-ge v2, p1, :cond_e

    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    .line 177
    .line 178
    .line 179
    move-result-wide v3

    .line 180
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    aput-object v1, v0, v2

    .line 185
    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_e
    return-object v0

    .line 190
    :cond_f
    const/16 v1, 0xc

    .line 191
    .line 192
    if-ne p1, v1, :cond_11

    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    new-array v0, p1, [Ljava/lang/Float;

    .line 199
    .line 200
    :goto_4
    if-ge v2, p1, :cond_10

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    aput-object v1, v0, v2

    .line 211
    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_10
    return-object v0

    .line 216
    :cond_11
    const/16 v1, 0xd

    .line 217
    .line 218
    if-ne p1, v1, :cond_13

    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    new-array v0, p1, [Ljava/lang/Double;

    .line 225
    .line 226
    :goto_5
    if-ge v2, p1, :cond_12

    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    .line 229
    .line 230
    .line 231
    move-result-wide v3

    .line 232
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    aput-object v1, v0, v2

    .line 237
    .line 238
    add-int/lit8 v2, v2, 0x1

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_12
    return-object v0

    .line 242
    :cond_13
    const/16 v1, 0xe

    .line 243
    .line 244
    if-ne p1, v1, :cond_16

    .line 245
    .line 246
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    new-array v1, p1, [Ljava/lang/String;

    .line 251
    .line 252
    :goto_6
    if-ge v2, p1, :cond_15

    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    const-string v4, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d"

    .line 259
    .line 260
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_14

    .line 265
    .line 266
    move-object v3, v0

    .line 267
    :cond_14
    aput-object v3, v1, v2

    .line 268
    .line 269
    add-int/lit8 v2, v2, 0x1

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_15
    return-object v1

    .line 273
    :cond_16
    const-string p0, "Unsupported type "

    .line 274
    .line 275
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return-object v0
.end method

.method public static getColor(Landroid/view/View;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v1, p1, p0}, Landroidx/work/OperationKt;->resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget p1, p0, Landroid/util/TypedValue;->resourceId:I

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_0
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 31
    .line 32
    return p0
.end method

.method public static getColorOrNull(Landroid/content/Context;I)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/work/OperationKt;->resolve(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 21
    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static getColorRole(II)I
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/Hct;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    .line 4
    .line 5
    .line 6
    int-to-double v5, p1

    .line 7
    iget-wide v1, v0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    .line 8
    .line 9
    iget-wide v3, v0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    .line 10
    .line 11
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->solveToInt(DDD)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    .line 16
    .line 17
    .line 18
    iget p0, v0, Lcom/google/android/material/color/utilities/Hct;->argb:I

    .line 19
    .line 20
    return p0
.end method

.method public static getColorRoles(Landroid/content/Context;I)Lcom/google/android/material/color/ColorRoles;
    .locals 4

    .line 1
    const v0, 0x7f040302

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {p0, v0, v1}, Landroidx/work/OperationKt;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 v0, 0x5a

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Lcom/google/android/material/color/ColorRoles;

    .line 14
    .line 15
    const/16 v1, 0x28

    .line 16
    .line 17
    invoke-static {p1, v1}, Landroidx/work/Data$Companion;->getColorRole(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x64

    .line 22
    .line 23
    invoke-static {p1, v2}, Landroidx/work/Data$Companion;->getColorRole(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {p1, v0}, Landroidx/work/Data$Companion;->getColorRole(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    invoke-static {p1, v3}, Landroidx/work/Data$Companion;->getColorRole(II)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    new-instance p0, Lcom/google/android/material/color/ColorRoles;

    .line 42
    .line 43
    const/16 v1, 0x50

    .line 44
    .line 45
    invoke-static {p1, v1}, Landroidx/work/Data$Companion;->getColorRole(II)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/16 v2, 0x14

    .line 50
    .line 51
    invoke-static {p1, v2}, Landroidx/work/Data$Companion;->getColorRole(II)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/16 v3, 0x1e

    .line 56
    .line 57
    invoke-static {p1, v3}, Landroidx/work/Data$Companion;->getColorRole(II)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {p1, v0}, Landroidx/work/Data$Companion;->getColorRole(II)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    .line 66
    .line 67
    .line 68
    return-object p0
.end method

.method public static final getSync()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 13

    .line 1
    sget-object v0, Landroidx/work/Data$Companion;->_sync:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const-string v2, "Outlined.Sync"

    .line 12
    .line 13
    const/high16 v3, 0x41c00000    # 24.0f

    .line 14
    .line 15
    const/high16 v4, 0x41c00000    # 24.0f

    .line 16
    .line 17
    const/high16 v5, 0x41c00000    # 24.0f

    .line 18
    .line 19
    const/high16 v6, 0x41c00000    # 24.0f

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 28
    .line 29
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 30
    .line 31
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 32
    .line 33
    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Lokhttp3/Headers$Builder;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {v6, v0}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const/high16 v0, 0x41400000    # 12.0f

    .line 43
    .line 44
    const/high16 v2, 0x40800000    # 4.0f

    .line 45
    .line 46
    invoke-virtual {v6, v0, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 47
    .line 48
    .line 49
    const/high16 v4, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-virtual {v6, v0, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 52
    .line 53
    .line 54
    const/high16 v4, 0x41000000    # 8.0f

    .line 55
    .line 56
    const/high16 v5, 0x40a00000    # 5.0f

    .line 57
    .line 58
    invoke-virtual {v6, v4, v5}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v2, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 62
    .line 63
    .line 64
    const/high16 v4, 0x40c00000    # 6.0f

    .line 65
    .line 66
    invoke-virtual {v6, v0, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 67
    .line 68
    .line 69
    const/high16 v11, 0x40c00000    # 6.0f

    .line 70
    .line 71
    const/high16 v12, 0x40c00000    # 6.0f

    .line 72
    .line 73
    const v7, 0x4053d70a    # 3.31f

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    const/high16 v9, 0x40c00000    # 6.0f

    .line 78
    .line 79
    const v10, 0x402c28f6    # 2.69f

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 83
    .line 84
    .line 85
    const v11, -0x40cccccd    # -0.7f

    .line 86
    .line 87
    .line 88
    const v12, 0x40333333    # 2.8f

    .line 89
    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const v8, 0x3f8147ae    # 1.01f

    .line 93
    .line 94
    .line 95
    const/high16 v9, -0x41800000    # -0.25f

    .line 96
    .line 97
    const v10, 0x3ffc28f6    # 1.97f

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 101
    .line 102
    .line 103
    const v4, 0x3fbae148    # 1.46f

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v4, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 107
    .line 108
    .line 109
    const/high16 v11, 0x41a00000    # 20.0f

    .line 110
    .line 111
    const/high16 v12, 0x41400000    # 12.0f

    .line 112
    .line 113
    const v7, 0x419c51ec    # 19.54f

    .line 114
    .line 115
    .line 116
    const v8, 0x41707ae1    # 15.03f

    .line 117
    .line 118
    .line 119
    const/high16 v9, 0x41a00000    # 20.0f

    .line 120
    .line 121
    const v10, 0x41591eb8    # 13.57f

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 125
    .line 126
    .line 127
    const/high16 v11, -0x3f000000    # -8.0f

    .line 128
    .line 129
    const/high16 v12, -0x3f000000    # -8.0f

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    const v8, -0x3f728f5c    # -4.42f

    .line 133
    .line 134
    .line 135
    const v9, -0x3f9ae148    # -3.58f

    .line 136
    .line 137
    .line 138
    const/high16 v10, -0x3f000000    # -8.0f

    .line 139
    .line 140
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 144
    .line 145
    .line 146
    const/high16 v4, 0x41900000    # 18.0f

    .line 147
    .line 148
    invoke-virtual {v6, v0, v4}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 149
    .line 150
    .line 151
    const/high16 v11, -0x3f400000    # -6.0f

    .line 152
    .line 153
    const/high16 v12, -0x3f400000    # -6.0f

    .line 154
    .line 155
    const v7, -0x3fac28f6    # -3.31f

    .line 156
    .line 157
    .line 158
    const/4 v8, 0x0

    .line 159
    const/high16 v9, -0x3f400000    # -6.0f

    .line 160
    .line 161
    const v10, -0x3fd3d70a    # -2.69f

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 165
    .line 166
    .line 167
    const v11, 0x3f333333    # 0.7f

    .line 168
    .line 169
    .line 170
    const v12, -0x3fcccccd    # -2.8f

    .line 171
    .line 172
    .line 173
    const/4 v7, 0x0

    .line 174
    const v8, -0x407eb852    # -1.01f

    .line 175
    .line 176
    .line 177
    const/high16 v9, 0x3e800000    # 0.25f

    .line 178
    .line 179
    const v10, -0x4003d70a    # -1.97f

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 183
    .line 184
    .line 185
    const v0, 0x40a7ae14    # 5.24f

    .line 186
    .line 187
    .line 188
    const v4, 0x40f7ae14    # 7.74f

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v0, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 192
    .line 193
    .line 194
    const/high16 v11, 0x40800000    # 4.0f

    .line 195
    .line 196
    const/high16 v12, 0x41400000    # 12.0f

    .line 197
    .line 198
    const v7, 0x408eb852    # 4.46f

    .line 199
    .line 200
    .line 201
    const v8, 0x410f851f    # 8.97f

    .line 202
    .line 203
    .line 204
    const/high16 v9, 0x40800000    # 4.0f

    .line 205
    .line 206
    const v10, 0x4126e148    # 10.43f

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 210
    .line 211
    .line 212
    const/high16 v11, 0x41000000    # 8.0f

    .line 213
    .line 214
    const/high16 v12, 0x41000000    # 8.0f

    .line 215
    .line 216
    const/4 v7, 0x0

    .line 217
    const v8, 0x408d70a4    # 4.42f

    .line 218
    .line 219
    .line 220
    const v9, 0x40651eb8    # 3.58f

    .line 221
    .line 222
    .line 223
    const/high16 v10, 0x41000000    # 8.0f

    .line 224
    .line 225
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 226
    .line 227
    .line 228
    const/high16 v0, 0x40400000    # 3.0f

    .line 229
    .line 230
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 231
    .line 232
    .line 233
    const/high16 v4, -0x3f800000    # -4.0f

    .line 234
    .line 235
    invoke-virtual {v6, v2, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v4, v4}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 245
    .line 246
    .line 247
    iget-object v2, v6, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 248
    .line 249
    const/high16 v4, 0x3f800000    # 1.0f

    .line 250
    .line 251
    const/high16 v5, 0x3f800000    # 1.0f

    .line 252
    .line 253
    const/high16 v6, 0x3f800000    # 1.0f

    .line 254
    .line 255
    const/4 v7, 0x2

    .line 256
    const/high16 v8, 0x3f800000    # 1.0f

    .line 257
    .line 258
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sput-object v0, Landroidx/work/Data$Companion;->_sync:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 266
    .line 267
    return-object v0
.end method

.method public static harmonize(II)I
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/Hct;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/google/android/material/color/utilities/Hct;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-wide v1, v0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    .line 14
    .line 15
    sub-double/2addr v1, v3

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    sub-double/2addr v1, v3

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    sub-double v1, v3, v1

    .line 31
    .line 32
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 33
    .line 34
    mul-double/2addr v1, v5

    .line 35
    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    .line 36
    .line 37
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    iget-wide v5, v0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    .line 42
    .line 43
    iget-wide p0, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    .line 44
    .line 45
    sub-double/2addr p0, v5

    .line 46
    const-wide v7, 0x4076800000000000L    # 360.0

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    rem-double/2addr p0, v7

    .line 52
    const-wide/16 v9, 0x0

    .line 53
    .line 54
    cmpg-double v11, p0, v9

    .line 55
    .line 56
    if-gez v11, :cond_0

    .line 57
    .line 58
    add-double/2addr p0, v7

    .line 59
    :cond_0
    cmpg-double p0, p0, v3

    .line 60
    .line 61
    if-gtz p0, :cond_1

    .line 62
    .line 63
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    .line 67
    .line 68
    :goto_0
    mul-double/2addr v1, p0

    .line 69
    add-double/2addr v1, v5

    .line 70
    rem-double/2addr v1, v7

    .line 71
    cmpg-double p0, v1, v9

    .line 72
    .line 73
    if-gez p0, :cond_2

    .line 74
    .line 75
    add-double/2addr v1, v7

    .line 76
    :cond_2
    move-wide v3, v1

    .line 77
    iget-wide v5, v0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    .line 78
    .line 79
    iget-wide v7, v0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    .line 80
    .line 81
    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/Cam16;->solveToInt(DDD)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    new-instance p1, Lcom/google/android/material/color/utilities/Hct;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iget p0, p1, Lcom/google/android/material/color/utilities/Hct;->argb:I

    .line 91
    .line 92
    return p0
.end method

.method public static indexOf(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_9

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_7

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eq p0, v1, :cond_6

    .line 13
    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-eq p0, v2, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    if-eq p0, v0, :cond_4

    .line 21
    .line 22
    const/16 v0, 0x40

    .line 23
    .line 24
    if-eq p0, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0x80

    .line 27
    .line 28
    if-eq p0, v0, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x100

    .line 31
    .line 32
    if-eq p0, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x200

    .line 35
    .line 36
    if-ne p0, v0, :cond_0

    .line 37
    .line 38
    const/16 p0, 0x9

    .line 39
    .line 40
    return p0

    .line 41
    :cond_0
    const-string v0, "type needs to be >= FIRST and <= LAST, type="

    .line 42
    .line 43
    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :cond_1
    return v1

    .line 53
    :cond_2
    const/4 p0, 0x7

    .line 54
    return p0

    .line 55
    :cond_3
    const/4 p0, 0x6

    .line 56
    return p0

    .line 57
    :cond_4
    const/4 p0, 0x5

    .line 58
    return p0

    .line 59
    :cond_5
    return v0

    .line 60
    :cond_6
    const/4 p0, 0x3

    .line 61
    return p0

    .line 62
    :cond_7
    return v1

    .line 63
    :cond_8
    return v0

    .line 64
    :cond_9
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public static isColorLight(I)Z
    .locals 21

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    sget-object v1, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, [D

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-array v2, v3, [D

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    array-length v6, v2

    .line 32
    if-ne v6, v3, :cond_4

    .line 33
    .line 34
    int-to-double v6, v1

    .line 35
    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    div-double/2addr v6, v8

    .line 41
    const-wide v10, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmpg-double v1, v6, v10

    .line 47
    .line 48
    const-wide v12, 0x4003333333333333L    # 2.4

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const-wide v14, 0x3ff0e147ae147ae1L    # 1.055

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const-wide v16, 0x3fac28f5c28f5c29L    # 0.055

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const-wide v18, 0x4029d70a3d70a3d7L    # 12.92

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    if-gez v1, :cond_1

    .line 69
    .line 70
    div-double v6, v6, v18

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    add-double v6, v6, v16

    .line 74
    .line 75
    div-double/2addr v6, v14

    .line 76
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    :goto_0
    int-to-double v3, v4

    .line 81
    div-double/2addr v3, v8

    .line 82
    cmpg-double v1, v3, v10

    .line 83
    .line 84
    if-gez v1, :cond_2

    .line 85
    .line 86
    div-double v3, v3, v18

    .line 87
    .line 88
    :goto_1
    const/16 v20, 0x0

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    add-double v3, v3, v16

    .line 92
    .line 93
    div-double/2addr v3, v14

    .line 94
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    goto :goto_1

    .line 99
    :goto_2
    int-to-double v0, v5

    .line 100
    div-double/2addr v0, v8

    .line 101
    cmpg-double v5, v0, v10

    .line 102
    .line 103
    if-gez v5, :cond_3

    .line 104
    .line 105
    div-double v0, v0, v18

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    add-double v0, v0, v16

    .line 109
    .line 110
    div-double/2addr v0, v14

    .line 111
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    :goto_3
    const-wide v8, 0x3fda64c2f837b4a2L    # 0.4124

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    mul-double/2addr v8, v6

    .line 121
    const-wide v10, 0x3fd6e2eb1c432ca5L    # 0.3576

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    mul-double/2addr v10, v3

    .line 127
    add-double/2addr v10, v8

    .line 128
    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    mul-double/2addr v8, v0

    .line 134
    add-double/2addr v8, v10

    .line 135
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 136
    .line 137
    mul-double/2addr v8, v10

    .line 138
    aput-wide v8, v2, v20

    .line 139
    .line 140
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    mul-double/2addr v8, v6

    .line 146
    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    mul-double/2addr v12, v3

    .line 152
    add-double/2addr v12, v8

    .line 153
    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    mul-double/2addr v8, v0

    .line 159
    add-double/2addr v8, v12

    .line 160
    mul-double/2addr v8, v10

    .line 161
    const/4 v5, 0x1

    .line 162
    aput-wide v8, v2, v5

    .line 163
    .line 164
    const-wide v12, 0x3f93c36113404ea5L    # 0.0193

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    mul-double/2addr v6, v12

    .line 170
    const-wide v12, 0x3fbe83e425aee632L    # 0.1192

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    mul-double/2addr v3, v12

    .line 176
    add-double/2addr v3, v6

    .line 177
    const-wide v6, 0x3fee6a7ef9db22d1L    # 0.9505

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    mul-double/2addr v0, v6

    .line 183
    add-double/2addr v0, v3

    .line 184
    mul-double/2addr v0, v10

    .line 185
    const/4 v3, 0x2

    .line 186
    aput-wide v0, v2, v3

    .line 187
    .line 188
    div-double/2addr v8, v10

    .line 189
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 190
    .line 191
    cmpl-double v0, v8, v0

    .line 192
    .line 193
    if-lez v0, :cond_6

    .line 194
    .line 195
    return v5

    .line 196
    :cond_4
    const/16 v20, 0x0

    .line 197
    .line 198
    const-string v0, "outXyz must have a length of 3."

    .line 199
    .line 200
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return v20

    .line 204
    :cond_5
    const/16 v20, 0x0

    .line 205
    .line 206
    :cond_6
    return v20
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x7f040302

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    .line 23
    .line 24
    return v0
.end method

.method public static final isSelectionHandleInVisibleBound(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getHandlePosition-tuRUvjQ$foundation(Z)J

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 20
    .line 21
    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 22
    .line 23
    const/16 v3, 0x20

    .line 24
    .line 25
    shr-long v3, p0, v3

    .line 26
    .line 27
    long-to-int v3, v3

    .line 28
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    cmpg-float v1, v1, v3

    .line 33
    .line 34
    if-gtz v1, :cond_0

    .line 35
    .line 36
    cmpg-float v1, v3, v2

    .line 37
    .line 38
    if-gtz v1, :cond_0

    .line 39
    .line 40
    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 41
    .line 42
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 43
    .line 44
    const-wide v2, 0xffffffffL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    and-long/2addr p0, v2

    .line 50
    long-to-int p0, p0

    .line 51
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    cmpg-float p1, v1, p0

    .line 56
    .line 57
    if-gtz p1, :cond_0

    .line 58
    .line 59
    cmpg-float p0, p0, v0

    .line 60
    .line 61
    if-gtz p0, :cond_0

    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    return p0

    .line 65
    :cond_0
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public static layer(IFI)I
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float/2addr v0, p1

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p2, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static final missingRequiredArguments(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/navigation/NavArgument;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-boolean v3, v2, Landroidx/navigation/NavArgument;->isNullable:Z

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v3, 0x0

    .line 45
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    iget-boolean v2, v2, Landroidx/navigation/NavArgument;->isDefaultValuePresent:Z

    .line 55
    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/lang/Iterable;

    .line 75
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    move-object v2, v1

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    return-object v0
.end method

.method public static final observe(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 9
    .line 10
    const/16 v6, 0x16

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v3, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v4, p2

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    invoke-static {v0, v5, v5, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static parse(Landroidx/navigation/internal/NavContext;Ljava/io/InputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-direct {v2, v3, v3, v3}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>(III)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lorg/jsoup/internal/SoftPool;

    .line 14
    .line 15
    invoke-direct {v3, v2}, Lorg/jsoup/internal/SoftPool;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;

    .line 19
    .line 20
    invoke-direct {v2, v3, p0, v0}, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;-><init>(Lorg/jsoup/internal/SoftPool;Landroidx/navigation/internal/NavContext;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v3, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object p0, v3, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    iput v2, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 31
    .line 32
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-interface {p0, v2}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->setRecursionMode(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :try_start_0
    new-instance p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p0}, Lorg/jsoup/internal/SoftPool;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 52
    .line 53
    const-string v0, "Failed to parse decrypted content"

    .line 54
    .line 55
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public static read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v3, "PRAGMA table_info(`"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, "`)"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :try_start_0
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 32
    .line 33
    .line 34
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-wide/16 v7, 0x0

    .line 36
    .line 37
    const-string v9, "name"

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    :try_start_1
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    invoke-static {v2, v10}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object v1, v0

    .line 50
    goto/16 :goto_c

    .line 51
    .line 52
    :cond_0
    :try_start_2
    invoke-static {v2, v9}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const-string v11, "type"

    .line 57
    .line 58
    invoke-static {v2, v11}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const-string v12, "notnull"

    .line 63
    .line 64
    invoke-static {v2, v12}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    const-string v13, "pk"

    .line 69
    .line 70
    invoke-static {v2, v13}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    const-string v14, "dflt_value"

    .line 75
    .line 76
    invoke-static {v2, v14}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    new-instance v15, Lkotlin/collections/builders/MapBuilder;

    .line 81
    .line 82
    invoke-direct {v15}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v19

    .line 89
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v20

    .line 93
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v16

    .line 97
    cmp-long v16, v16, v7

    .line 98
    .line 99
    if-eqz v16, :cond_2

    .line 100
    .line 101
    const/16 v22, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const/16 v22, 0x0

    .line 105
    .line 106
    :goto_0
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    long-to-int v5, v5

    .line 111
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    move-object/from16 v21, v10

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    move-object/from16 v21, v6

    .line 125
    .line 126
    :goto_1
    new-instance v16, Landroidx/room/util/TableInfo$Column;

    .line 127
    .line 128
    const/16 v18, 0x2

    .line 129
    .line 130
    move/from16 v17, v5

    .line 131
    .line 132
    invoke-direct/range {v16 .. v22}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    move-object/from16 v6, v16

    .line 136
    .line 137
    move-object/from16 v5, v19

    .line 138
    .line 139
    invoke-virtual {v15, v5, v6}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-nez v5, :cond_1

    .line 147
    .line 148
    invoke-virtual {v15}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    invoke-static {v2, v10}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v5, "PRAGMA foreign_key_list(`"

    .line 158
    .line 159
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :try_start_3
    const-string v5, "id"

    .line 177
    .line 178
    invoke-static {v2, v5}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    const-string v6, "seq"

    .line 183
    .line 184
    invoke-static {v2, v6}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    const-string v11, "table"

    .line 189
    .line 190
    invoke-static {v2, v11}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    const-string v12, "on_delete"

    .line 195
    .line 196
    invoke-static {v2, v12}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    const-string v13, "on_update"

    .line 201
    .line 202
    invoke-static {v2, v13}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    invoke-static {v2}, Landroidx/room/util/SchemaInfoUtilKt;->readForeignKeyFieldMappings(Landroidx/sqlite/SQLiteStatement;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 211
    .line 212
    .line 213
    new-instance v15, Lkotlin/collections/builders/SetBuilder;

    .line 214
    .line 215
    invoke-direct {v15}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    :goto_3
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 219
    .line 220
    .line 221
    move-result v16

    .line 222
    if-eqz v16, :cond_8

    .line 223
    .line 224
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 225
    .line 226
    .line 227
    move-result-wide v16

    .line 228
    cmp-long v16, v16, v7

    .line 229
    .line 230
    if-eqz v16, :cond_4

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_4
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v7

    .line 237
    long-to-int v7, v7

    .line 238
    new-instance v8, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    new-instance v10, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    move/from16 v19, v5

    .line 249
    .line 250
    new-instance v5, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v20

    .line 259
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v21

    .line 263
    if-eqz v21, :cond_6

    .line 264
    .line 265
    move/from16 v21, v6

    .line 266
    .line 267
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    move-object/from16 v22, v14

    .line 272
    .line 273
    move-object v14, v6

    .line 274
    check-cast v14, Landroidx/room/util/ForeignKeyWithSequence;

    .line 275
    .line 276
    iget v14, v14, Landroidx/room/util/ForeignKeyWithSequence;->id:I

    .line 277
    .line 278
    if-ne v14, v7, :cond_5

    .line 279
    .line 280
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :cond_5
    move/from16 v6, v21

    .line 284
    .line 285
    move-object/from16 v14, v22

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :catchall_1
    move-exception v0

    .line 289
    move-object v1, v0

    .line 290
    goto/16 :goto_b

    .line 291
    .line 292
    :cond_6
    move/from16 v21, v6

    .line 293
    .line 294
    move-object/from16 v22, v14

    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_7

    .line 305
    .line 306
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Landroidx/room/util/ForeignKeyWithSequence;

    .line 311
    .line 312
    iget-object v7, v6, Landroidx/room/util/ForeignKeyWithSequence;->from:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    iget-object v6, v6, Landroidx/room/util/ForeignKeyWithSequence;->to:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_7
    new-instance v23, Landroidx/room/util/TableInfo$ForeignKey;

    .line 324
    .line 325
    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v24

    .line 329
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v25

    .line 333
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v26

    .line 337
    move-object/from16 v27, v8

    .line 338
    .line 339
    move-object/from16 v28, v10

    .line 340
    .line 341
    invoke-direct/range {v23 .. v28}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 342
    .line 343
    .line 344
    move-object/from16 v5, v23

    .line 345
    .line 346
    invoke-virtual {v15, v5}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move/from16 v5, v19

    .line 350
    .line 351
    move/from16 v6, v21

    .line 352
    .line 353
    move-object/from16 v14, v22

    .line 354
    .line 355
    const-wide/16 v7, 0x0

    .line 356
    .line 357
    const/4 v10, 0x0

    .line 358
    goto/16 :goto_3

    .line 359
    .line 360
    :cond_8
    invoke-static {v15}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 361
    .line 362
    .line 363
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    const/4 v6, 0x0

    .line 365
    invoke-static {v2, v6}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 366
    .line 367
    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v6, "PRAGMA index_list(`"

    .line 371
    .line 372
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    :try_start_4
    invoke-static {v2, v9}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    const-string v6, "origin"

    .line 394
    .line 395
    invoke-static {v2, v6}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    const-string v7, "unique"

    .line 400
    .line 401
    invoke-static {v2, v7}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    const/4 v8, -0x1

    .line 406
    if-eq v3, v8, :cond_9

    .line 407
    .line 408
    if-eq v6, v8, :cond_9

    .line 409
    .line 410
    if-ne v7, v8, :cond_a

    .line 411
    .line 412
    :cond_9
    const/4 v6, 0x0

    .line 413
    goto :goto_8

    .line 414
    :cond_a
    new-instance v8, Lkotlin/collections/builders/SetBuilder;

    .line 415
    .line 416
    invoke-direct {v8}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    :goto_6
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 420
    .line 421
    .line 422
    move-result v9

    .line 423
    if-eqz v9, :cond_e

    .line 424
    .line 425
    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    const-string v10, "c"

    .line 430
    .line 431
    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    if-nez v9, :cond_b

    .line 436
    .line 437
    goto :goto_6

    .line 438
    :cond_b
    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 443
    .line 444
    .line 445
    move-result-wide v10

    .line 446
    const-wide/16 v12, 0x1

    .line 447
    .line 448
    cmp-long v10, v10, v12

    .line 449
    .line 450
    if-nez v10, :cond_c

    .line 451
    .line 452
    const/4 v10, 0x1

    .line 453
    goto :goto_7

    .line 454
    :cond_c
    const/4 v10, 0x0

    .line 455
    :goto_7
    invoke-static {v0, v9, v10}, Landroidx/room/util/SchemaInfoUtilKt;->readIndex(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;Z)Landroidx/room/util/TableInfo$Index;

    .line 456
    .line 457
    .line 458
    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 459
    if-nez v9, :cond_d

    .line 460
    .line 461
    const/4 v10, 0x0

    .line 462
    invoke-static {v2, v10}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 463
    .line 464
    .line 465
    const/4 v10, 0x0

    .line 466
    goto :goto_9

    .line 467
    :cond_d
    :try_start_5
    invoke-virtual {v8, v9}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_6

    .line 471
    :catchall_2
    move-exception v0

    .line 472
    move-object v1, v0

    .line 473
    goto :goto_a

    .line 474
    :cond_e
    invoke-static {v8}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 475
    .line 476
    .line 477
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 478
    const/4 v6, 0x0

    .line 479
    invoke-static {v2, v6}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 480
    .line 481
    .line 482
    move-object v10, v0

    .line 483
    goto :goto_9

    .line 484
    :goto_8
    invoke-static {v2, v6}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 485
    .line 486
    .line 487
    move-object v10, v6

    .line 488
    :goto_9
    new-instance v0, Landroidx/room/util/TableInfo;

    .line 489
    .line 490
    invoke-direct {v0, v1, v4, v5, v10}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 491
    .line 492
    .line 493
    return-object v0

    .line 494
    :goto_a
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 495
    :catchall_3
    move-exception v0

    .line 496
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 497
    .line 498
    .line 499
    throw v0

    .line 500
    :goto_b
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 501
    :catchall_4
    move-exception v0

    .line 502
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 503
    .line 504
    .line 505
    throw v0

    .line 506
    :goto_c
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 507
    :catchall_5
    move-exception v0

    .line 508
    invoke-static {v2, v1}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 509
    .line 510
    .line 511
    throw v0
.end method

.method public static tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const v0, 0x7f040121

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static toByteArrayInternalV1(Landroidx/work/Data;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/DataOutputStream;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    const/16 v2, -0x5411

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v1, v3, v2}, Landroidx/work/Data$Companion;->toByteArrayInternalV1$writeEntry(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/16 v2, 0x2800

    .line 76
    .line 77
    if-gt p0, v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_1
    :try_start_3
    const-string p0, "Data cannot occupy more than 10240 bytes when serialized"

    .line 91
    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    :try_start_5
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    sget-object v0, Landroidx/work/Data_Kt;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "Error in Data#toByteArray: "

    .line 112
    .line 113
    invoke-virtual {v1, v0, v2, p0}, Landroidx/work/Logger$LogcatLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    new-array p0, p0, [B

    .line 118
    .line 119
    return-object p0
.end method

.method public static final toByteArrayInternalV1$writeEntry(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 9
    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    instance-of v3, v1, Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 19
    .line 20
    .line 21
    check-cast v1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_1
    instance-of v3, v1, Ljava/lang/Byte;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 38
    .line 39
    .line 40
    check-cast v1, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 57
    .line 58
    .line 59
    check-cast v1, Ljava/lang/Number;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_9

    .line 69
    .line 70
    :cond_3
    instance-of v3, v1, Ljava/lang/Long;

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 76
    .line 77
    .line 78
    check-cast v1, Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :cond_4
    instance-of v3, v1, Ljava/lang/Float;

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    const/4 v2, 0x5

    .line 94
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 95
    .line 96
    .line 97
    check-cast v1, Ljava/lang/Number;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_5
    instance-of v3, v1, Ljava/lang/Double;

    .line 109
    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    const/4 v2, 0x6

    .line 113
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 114
    .line 115
    .line 116
    check-cast v1, Ljava/lang/Number;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :cond_6
    instance-of v3, v1, Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    const/4 v2, 0x7

    .line 132
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 133
    .line 134
    .line 135
    check-cast v1, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_9

    .line 141
    .line 142
    :cond_7
    instance-of v3, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    const-string v4, "Unsupported value type "

    .line 145
    .line 146
    if-eqz v3, :cond_25

    .line 147
    .line 148
    check-cast v1, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    const-class v5, [Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    const/16 v6, 0xe

    .line 169
    .line 170
    const/16 v7, 0xd

    .line 171
    .line 172
    const/16 v8, 0xc

    .line 173
    .line 174
    const/16 v9, 0xb

    .line 175
    .line 176
    const/16 v10, 0xa

    .line 177
    .line 178
    const/16 v11, 0x9

    .line 179
    .line 180
    const/16 v12, 0x8

    .line 181
    .line 182
    if-eqz v5, :cond_8

    .line 183
    .line 184
    move v3, v12

    .line 185
    goto :goto_0

    .line 186
    :cond_8
    const-class v5, [Ljava/lang/Byte;

    .line 187
    .line 188
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_9

    .line 197
    .line 198
    move v3, v11

    .line 199
    goto :goto_0

    .line 200
    :cond_9
    const-class v5, [Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_a

    .line 211
    .line 212
    move v3, v10

    .line 213
    goto :goto_0

    .line 214
    :cond_a
    const-class v5, [Ljava/lang/Long;

    .line 215
    .line 216
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_b

    .line 225
    .line 226
    move v3, v9

    .line 227
    goto :goto_0

    .line 228
    :cond_b
    const-class v5, [Ljava/lang/Float;

    .line 229
    .line 230
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_c

    .line 239
    .line 240
    move v3, v8

    .line 241
    goto :goto_0

    .line 242
    :cond_c
    const-class v5, [Ljava/lang/Double;

    .line 243
    .line 244
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_d

    .line 253
    .line 254
    move v3, v7

    .line 255
    goto :goto_0

    .line 256
    :cond_d
    const-class v5, [Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v3, v5}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_24

    .line 267
    .line 268
    move v3, v6

    .line 269
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 270
    .line 271
    .line 272
    array-length v4, v1

    .line 273
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 274
    .line 275
    .line 276
    array-length v4, v1

    .line 277
    move v5, v2

    .line 278
    :goto_1
    if-ge v5, v4, :cond_23

    .line 279
    .line 280
    aget-object v13, v1, v5

    .line 281
    .line 282
    const/4 v14, 0x0

    .line 283
    if-ne v3, v12, :cond_10

    .line 284
    .line 285
    instance-of v15, v13, Ljava/lang/Boolean;

    .line 286
    .line 287
    if-eqz v15, :cond_e

    .line 288
    .line 289
    move-object v14, v13

    .line 290
    check-cast v14, Ljava/lang/Boolean;

    .line 291
    .line 292
    :cond_e
    if-eqz v14, :cond_f

    .line 293
    .line 294
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 295
    .line 296
    .line 297
    move-result v13

    .line 298
    goto :goto_2

    .line 299
    :cond_f
    move v13, v2

    .line 300
    :goto_2
    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_8

    .line 304
    .line 305
    :cond_10
    if-ne v3, v11, :cond_13

    .line 306
    .line 307
    instance-of v15, v13, Ljava/lang/Byte;

    .line 308
    .line 309
    if-eqz v15, :cond_11

    .line 310
    .line 311
    move-object v14, v13

    .line 312
    check-cast v14, Ljava/lang/Byte;

    .line 313
    .line 314
    :cond_11
    if-eqz v14, :cond_12

    .line 315
    .line 316
    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    .line 317
    .line 318
    .line 319
    move-result v13

    .line 320
    goto :goto_3

    .line 321
    :cond_12
    move v13, v2

    .line 322
    :goto_3
    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_8

    .line 326
    .line 327
    :cond_13
    if-ne v3, v10, :cond_16

    .line 328
    .line 329
    instance-of v15, v13, Ljava/lang/Integer;

    .line 330
    .line 331
    if-eqz v15, :cond_14

    .line 332
    .line 333
    move-object v14, v13

    .line 334
    check-cast v14, Ljava/lang/Integer;

    .line 335
    .line 336
    :cond_14
    if-eqz v14, :cond_15

    .line 337
    .line 338
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    goto :goto_4

    .line 343
    :cond_15
    move v13, v2

    .line 344
    :goto_4
    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_16
    if-ne v3, v9, :cond_19

    .line 349
    .line 350
    instance-of v15, v13, Ljava/lang/Long;

    .line 351
    .line 352
    if-eqz v15, :cond_17

    .line 353
    .line 354
    move-object v14, v13

    .line 355
    check-cast v14, Ljava/lang/Long;

    .line 356
    .line 357
    :cond_17
    if-eqz v14, :cond_18

    .line 358
    .line 359
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v13

    .line 363
    goto :goto_5

    .line 364
    :cond_18
    const-wide/16 v13, 0x0

    .line 365
    .line 366
    :goto_5
    invoke-virtual {v0, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 367
    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_19
    if-ne v3, v8, :cond_1c

    .line 371
    .line 372
    instance-of v15, v13, Ljava/lang/Float;

    .line 373
    .line 374
    if-eqz v15, :cond_1a

    .line 375
    .line 376
    move-object v14, v13

    .line 377
    check-cast v14, Ljava/lang/Float;

    .line 378
    .line 379
    :cond_1a
    if-eqz v14, :cond_1b

    .line 380
    .line 381
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    .line 382
    .line 383
    .line 384
    move-result v13

    .line 385
    goto :goto_6

    .line 386
    :cond_1b
    const/4 v13, 0x0

    .line 387
    :goto_6
    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_1c
    if-ne v3, v7, :cond_1f

    .line 392
    .line 393
    instance-of v15, v13, Ljava/lang/Double;

    .line 394
    .line 395
    if-eqz v15, :cond_1d

    .line 396
    .line 397
    move-object v14, v13

    .line 398
    check-cast v14, Ljava/lang/Double;

    .line 399
    .line 400
    :cond_1d
    if-eqz v14, :cond_1e

    .line 401
    .line 402
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    .line 403
    .line 404
    .line 405
    move-result-wide v13

    .line 406
    goto :goto_7

    .line 407
    :cond_1e
    const-wide/16 v13, 0x0

    .line 408
    .line 409
    :goto_7
    invoke-virtual {v0, v13, v14}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 410
    .line 411
    .line 412
    goto :goto_8

    .line 413
    :cond_1f
    if-ne v3, v6, :cond_22

    .line 414
    .line 415
    instance-of v15, v13, Ljava/lang/String;

    .line 416
    .line 417
    if-eqz v15, :cond_20

    .line 418
    .line 419
    move-object v14, v13

    .line 420
    check-cast v14, Ljava/lang/String;

    .line 421
    .line 422
    :cond_20
    if-nez v14, :cond_21

    .line 423
    .line 424
    const-string v14, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d"

    .line 425
    .line 426
    :cond_21
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    :cond_22
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 430
    .line 431
    goto/16 :goto_1

    .line 432
    .line 433
    :cond_23
    :goto_9
    invoke-virtual/range {p0 .. p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    return-void

    .line 437
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v0, v4}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    return-void

    .line 453
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-static {v0, v4}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    return-void
.end method

.method public static final toIncomingServerSettingsState(Lapp/k9mail/feature/account/common/domain/entity/AccountState;)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, v0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    const-string v3, ""

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    new-instance v4, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 16
    .line 17
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->Companion:Lcom/bumptech/glide/load/Option$1;

    .line 18
    .line 19
    iget-object v5, v0, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 28
    .line 29
    invoke-virtual {v1}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    move-object v8, v6

    .line 45
    check-cast v8, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 46
    .line 47
    iget-object v8, v8, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->defaultName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v6, v7

    .line 57
    :goto_0
    check-cast v6, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 58
    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    move-object v5, v6

    .line 62
    new-instance v6, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 65
    .line 66
    invoke-direct {v6, v1, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 70
    .line 71
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->toConnectionSecurity(Lcom/fsck/k9/mail/ConnectionSecurity;)Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    new-instance v8, Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 76
    .line 77
    iget v1, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 78
    .line 79
    int-to-long v9, v1

    .line 80
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {v8, v1}, Lnet/thunderbird/core/validation/input/NumberInputField;-><init>(Ljava/lang/Long;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 88
    .line 89
    invoke-static {v1}, Landroidx/compose/ui/unit/IntRectKt;->toAuthenticationType(Lcom/fsck/k9/mail/AuthType;)Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    new-instance v10, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 94
    .line 95
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 96
    .line 97
    invoke-direct {v10, v1, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    new-instance v11, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 103
    .line 104
    if-nez v1, :cond_2

    .line 105
    .line 106
    move-object v1, v3

    .line 107
    :cond_2
    invoke-direct {v11, v1, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    iget-object v12, v0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v0}, Landroidx/core/util/DebugUtils;->getAutoDetectNamespace(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    new-instance v14, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 117
    .line 118
    invoke-static {v0}, Landroidx/core/util/DebugUtils;->getPathPrefix(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-nez v1, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    move-object v3, v1

    .line 126
    :goto_1
    invoke-direct {v14, v3, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Landroidx/core/util/DebugUtils;->isUseCompression(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    invoke-static {v0}, Landroidx/core/util/DebugUtils;->isSendClientInfo(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    invoke-direct/range {v4 .. v16}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;-><init>(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZ)V

    .line 138
    .line 139
    .line 140
    return-object v4

    .line 141
    :cond_4
    move-object v1, v5

    .line 142
    const-string v0, "Unknown protocol: "

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-object v7

    .line 152
    :cond_5
    new-instance v0, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 153
    .line 154
    if-nez v1, :cond_6

    .line 155
    .line 156
    move-object v4, v3

    .line 157
    goto :goto_2

    .line 158
    :cond_6
    move-object v4, v1

    .line 159
    :goto_2
    invoke-direct {v0, v4, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    new-instance v4, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 163
    .line 164
    if-eqz v1, :cond_7

    .line 165
    .line 166
    const-string v3, "@"

    .line 167
    .line 168
    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v3, "."

    .line 173
    .line 174
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    :cond_7
    invoke-direct {v4, v3, v2}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 182
    .line 183
    const/16 v2, 0xfdd

    .line 184
    .line 185
    invoke-direct {v1, v4, v0, v2}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)V

    .line 186
    .line 187
    .line 188
    return-object v1
.end method

.method public static toMessageReferenceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x1

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object v1, v2, v3

    .line 41
    .line 42
    const-string v1, "Invalid message reference: %s"

    .line 43
    .line 44
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method public static toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 25
    .line 26
    invoke-virtual {v1}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public static final toParameters(Landroidx/camera/core/impl/Config;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 25
    .line 26
    iget-object v3, v2, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    .line 27
    .line 28
    instance-of v4, v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_1
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p0, v2}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-object v0
.end method

.method public static final tryAttachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x13

    .line 14
    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lkotlin/internal/PlatformImplementations$ReflectThrowable;->getSuppressed:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast v0, [Ljava/lang/Throwable;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x0

    .line 60
    move v4, v3

    .line 61
    :goto_2
    if-ge v4, v2, :cond_4

    .line 62
    .line 63
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/Throwable;

    .line 68
    .line 69
    instance-of v5, v5, Landroidx/compose/runtime/tooling/DiagnosticComposeException;

    .line 70
    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    return v3

    .line 74
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-boolean v0, p1, Landroidx/compose/runtime/tooling/ComposeStackTrace;->hasSourceInformation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    iget-object v2, p1, Landroidx/compose/runtime/tooling/ComposeStackTrace;->frames:Ljava/util/List;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    move v4, v3

    .line 96
    :goto_3
    if-ge v4, v0, :cond_6

    .line 97
    .line 98
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    :cond_6
    if-eqz v3, :cond_7

    .line 120
    .line 121
    new-instance v1, Landroidx/compose/runtime/tooling/DiagnosticComposeException;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, p1}, Landroidx/compose/runtime/tooling/DiagnosticComposeException;-><init>(Landroidx/compose/runtime/tooling/ComposeStackTrace;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :goto_4
    move-object v1, p1

    .line 131
    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-static {p0, v1}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    return v3
.end method


# virtual methods
.method public canReverse()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract getSize(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)I
.end method

.method public abstract getValue(Lcom/google/android/material/shape/MaterialShapeDrawable;)F
.end method

.method public abstract getViewEdge()I
.end method

.method public abstract getViewTranslationAnimator(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
.end method

.method public reverse()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
