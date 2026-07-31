.class public abstract Lkotlin/uuid/UuidKt;
.super Ljava/lang/Object;


# direct methods
.method public static final AvatarLayout-1Kfb2uI(JJLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-wide/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v8, p7

    .line 8
    .line 9
    move/from16 v9, p9

    .line 10
    .line 11
    move-object/from16 v0, p8

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v5, 0x4a16a173    # 2467932.8f

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v5, v9, 0x6

    .line 22
    .line 23
    if-nez v5, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    const/4 v5, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v5, 0x2

    .line 34
    :goto_0
    or-int/2addr v5, v9

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v5, v9

    .line 37
    :goto_1
    and-int/lit8 v6, v9, 0x30

    .line 38
    .line 39
    if-nez v6, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    const/16 v6, 0x20

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v6, 0x10

    .line 51
    .line 52
    :goto_2
    or-int/2addr v5, v6

    .line 53
    :cond_3
    and-int/lit16 v6, v9, 0x180

    .line 54
    .line 55
    if-nez v6, :cond_5

    .line 56
    .line 57
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    const/16 v6, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v6, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v5, v6

    .line 73
    :cond_5
    or-int/lit16 v5, v5, 0xc00

    .line 74
    .line 75
    and-int/lit16 v6, v9, 0x6000

    .line 76
    .line 77
    const/16 v11, 0x4000

    .line 78
    .line 79
    if-nez v6, :cond_7

    .line 80
    .line 81
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_6

    .line 86
    .line 87
    move v6, v11

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    const/16 v6, 0x2000

    .line 90
    .line 91
    :goto_4
    or-int/2addr v5, v6

    .line 92
    :cond_7
    const/high16 v6, 0x30000

    .line 93
    .line 94
    and-int/2addr v6, v9

    .line 95
    if-nez v6, :cond_9

    .line 96
    .line 97
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_8

    .line 102
    .line 103
    const/high16 v6, 0x20000

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_8
    const/high16 v6, 0x10000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v5, v6

    .line 109
    :cond_9
    const v6, 0x12493

    .line 110
    .line 111
    .line 112
    and-int/2addr v6, v5

    .line 113
    const v12, 0x12492

    .line 114
    .line 115
    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v14, 0x1

    .line 118
    if-eq v6, v12, :cond_a

    .line 119
    .line 120
    move v6, v14

    .line 121
    goto :goto_6

    .line 122
    :cond_a
    move v6, v13

    .line 123
    :goto_6
    and-int/lit8 v12, v5, 0x1

    .line 124
    .line 125
    invoke-virtual {v0, v12, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_12

    .line 130
    .line 131
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_c

    .line 136
    .line 137
    if-ne v6, v14, :cond_b

    .line 138
    .line 139
    const v6, 0x1e636504

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 143
    .line 144
    .line 145
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 146
    .line 147
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 157
    .line 158
    .line 159
    const/high16 v6, 0x42800000    # 64.0f

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_b
    const v1, 0x1e63573c

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v1, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    throw v0

    .line 170
    :cond_c
    const v6, 0x1e635e29

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 174
    .line 175
    .line 176
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 177
    .line 178
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 183
    .line 184
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 188
    .line 189
    .line 190
    const/high16 v6, 0x42400000    # 48.0f

    .line 191
    .line 192
    :goto_7
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 193
    .line 194
    invoke-static {v12, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    sget-object v15, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 199
    .line 200
    invoke-static {v6, v15}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    if-eqz v7, :cond_d

    .line 205
    .line 206
    move v10, v14

    .line 207
    :goto_8
    const/16 p8, 0x20

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_d
    move v10, v13

    .line 211
    goto :goto_8

    .line 212
    :goto_9
    const v16, 0xe000

    .line 213
    .line 214
    .line 215
    and-int v14, v5, v16

    .line 216
    .line 217
    if-ne v14, v11, :cond_e

    .line 218
    .line 219
    const/4 v11, 0x1

    .line 220
    goto :goto_a

    .line 221
    :cond_e
    move v11, v13

    .line 222
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    const/16 v13, 0xe

    .line 227
    .line 228
    if-nez v11, :cond_f

    .line 229
    .line 230
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 231
    .line 232
    if-ne v14, v11, :cond_10

    .line 233
    .line 234
    :cond_f
    new-instance v14, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 235
    .line 236
    invoke-direct {v14, v13, v7}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_10
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 243
    .line 244
    const/4 v11, 0x0

    .line 245
    invoke-static {v6, v10, v11, v14, v13}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-static {v6, v3, v4, v15}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    const/high16 v10, 0x40000000    # 2.0f

    .line 254
    .line 255
    invoke-static {v6, v10, v1, v2, v15}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 260
    .line 261
    const/4 v11, 0x0

    .line 262
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    iget-wide v13, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 267
    .line 268
    ushr-long v15, v13, p8

    .line 269
    .line 270
    xor-long/2addr v13, v15

    .line 271
    long-to-int v11, v13

    .line 272
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    invoke-static {v0, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 281
    .line 282
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 286
    .line 287
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 288
    .line 289
    .line 290
    iget-boolean v15, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 291
    .line 292
    if-eqz v15, :cond_11

    .line 293
    .line 294
    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 295
    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 299
    .line 300
    .line 301
    :goto_b
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 302
    .line 303
    invoke-static {v0, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 304
    .line 305
    .line 306
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 307
    .line 308
    invoke-static {v0, v13, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v10

    .line 315
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 316
    .line 317
    invoke-static {v0, v10, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 318
    .line 319
    .line 320
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 321
    .line 322
    invoke-static {v0, v10}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 323
    .line 324
    .line 325
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 326
    .line 327
    invoke-static {v0, v6, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    .line 329
    .line 330
    shr-int/lit8 v5, v5, 0xc

    .line 331
    .line 332
    and-int/lit8 v5, v5, 0x70

    .line 333
    .line 334
    const/4 v6, 0x6

    .line 335
    or-int/2addr v5, v6

    .line 336
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 341
    .line 342
    invoke-virtual {v8, v6, v0, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    const/4 v5, 0x1

    .line 346
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 347
    .line 348
    .line 349
    move-object v6, v12

    .line 350
    goto :goto_c

    .line 351
    :cond_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 352
    .line 353
    .line 354
    move-object/from16 v6, p5

    .line 355
    .line 356
    :goto_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    if-eqz v10, :cond_13

    .line 361
    .line 362
    new-instance v0, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;

    .line 363
    .line 364
    move-object/from16 v5, p4

    .line 365
    .line 366
    invoke-direct/range {v0 .. v9}, Lnet/thunderbird/feature/account/avatar/ui/AvatarLayoutKt$$ExternalSyntheticLambda1;-><init>(JJLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 367
    .line 368
    .line 369
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 370
    .line 371
    :cond_13
    return-void
.end method

.method public static final ColorChip-Zi-j2fk(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 8

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x5341df61

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p0, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p0

    .line 25
    :goto_1
    and-int/lit8 v1, p0, 0x30

    .line 26
    .line 27
    const/high16 v2, 0x41a00000    # 20.0f

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x20

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x10

    .line 41
    .line 42
    :goto_2
    or-int/2addr v0, v1

    .line 43
    :cond_3
    and-int/lit16 v1, p0, 0x180

    .line 44
    .line 45
    const/high16 v3, 0x40400000    # 3.0f

    .line 46
    .line 47
    const/16 v4, 0x100

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    move v1, v4

    .line 58
    goto :goto_3

    .line 59
    :cond_4
    const/16 v1, 0x80

    .line 60
    .line 61
    :goto_3
    or-int/2addr v0, v1

    .line 62
    :cond_5
    and-int/lit16 v1, p0, 0xc00

    .line 63
    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    invoke-virtual {p3, p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    const/16 v1, 0x800

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_6
    const/16 v1, 0x400

    .line 76
    .line 77
    :goto_4
    or-int/2addr v0, v1

    .line 78
    :cond_7
    and-int/lit16 v1, v0, 0x493

    .line 79
    .line 80
    const/16 v5, 0x492

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x1

    .line 84
    if-eq v1, v5, :cond_8

    .line 85
    .line 86
    move v1, v7

    .line 87
    goto :goto_5

    .line 88
    :cond_8
    move v1, v6

    .line 89
    :goto_5
    and-int/lit8 v5, v0, 0x1

    .line 90
    .line 91
    invoke-virtual {p3, v5, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_c

    .line 96
    .line 97
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    .line 98
    .line 99
    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 100
    .line 101
    .line 102
    invoke-static {p4, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    and-int/lit16 v0, v0, 0x380

    .line 111
    .line 112
    if-ne v0, v4, :cond_9

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    move v7, v6

    .line 116
    :goto_6
    or-int v0, v3, v7

    .line 117
    .line 118
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    if-nez v0, :cond_a

    .line 123
    .line 124
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 125
    .line 126
    if-ne v3, v0, :cond_b

    .line 127
    .line 128
    :cond_a
    new-instance v3, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 129
    .line 130
    const/4 v0, 0x5

    .line 131
    invoke-direct {v3, v0, v1}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_b
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 138
    .line 139
    invoke-static {v6, p3, v2, v3}, Landroidx/compose/foundation/ImageKt;->Canvas(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)V

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_c
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 144
    .line 145
    .line 146
    :goto_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    if-eqz p3, :cond_d

    .line 151
    .line 152
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;

    .line 153
    .line 154
    invoke-direct {v0, p4, p1, p2, p0}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda16;-><init>(Landroidx/compose/ui/Modifier;JI)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 158
    .line 159
    :cond_d
    return-void
.end method

.method public static final Render$default(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenRenderer;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, -0x2f1ae6d7

    .line 14
    .line 15
    .line 16
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x4

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    :goto_0
    or-int v0, p6, v0

    .line 30
    .line 31
    or-int/lit8 v0, v0, 0x30

    .line 32
    .line 33
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const/16 v3, 0x100

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v3, 0x80

    .line 43
    .line 44
    :goto_1
    or-int/2addr v0, v3

    .line 45
    move-object/from16 v7, p3

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const/16 v3, 0x800

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v3, 0x400

    .line 57
    .line 58
    :goto_2
    or-int/2addr v0, v3

    .line 59
    move-object/from16 v8, p4

    .line 60
    .line 61
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    const/16 v3, 0x4000

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v3, 0x2000

    .line 71
    .line 72
    :goto_3
    or-int v9, v0, v3

    .line 73
    .line 74
    and-int/lit16 v0, v9, 0x2493

    .line 75
    .line 76
    const/16 v3, 0x2492

    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v4, 0x1

    .line 80
    if-eq v0, v3, :cond_4

    .line 81
    .line 82
    move v0, v4

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    move v0, v10

    .line 85
    :goto_4
    and-int/lit8 v3, v9, 0x1

    .line 86
    .line 87
    invoke-virtual {v6, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_d

    .line 92
    .line 93
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 94
    .line 95
    .line 96
    and-int/lit8 v0, p6, 0x1

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 108
    .line 109
    .line 110
    move-object/from16 v11, p1

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_6
    :goto_5
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 114
    .line 115
    move-object v11, v0

    .line 116
    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 117
    .line 118
    .line 119
    const v0, 0xfffe

    .line 120
    .line 121
    .line 122
    and-int/2addr v0, v9

    .line 123
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    const v3, -0x5b90ffac

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 143
    .line 144
    if-ne v3, v5, :cond_7

    .line 145
    .line 146
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    .line 147
    .line 148
    invoke-direct {v3}, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;

    .line 155
    .line 156
    shr-int/lit8 v0, v0, 0x6

    .line 157
    .line 158
    invoke-virtual {v1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    invoke-static {v12, v6}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    and-int/lit8 v13, v0, 0xe

    .line 167
    .line 168
    xor-int/lit8 v13, v13, 0x6

    .line 169
    .line 170
    if-le v13, v2, :cond_8

    .line 171
    .line 172
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v13

    .line 176
    if-nez v13, :cond_9

    .line 177
    .line 178
    :cond_8
    and-int/lit8 v0, v0, 0x6

    .line 179
    .line 180
    if-ne v0, v2, :cond_a

    .line 181
    .line 182
    :cond_9
    move v0, v4

    .line 183
    goto :goto_7

    .line 184
    :cond_a
    move v0, v10

    .line 185
    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-nez v0, :cond_b

    .line 190
    .line 191
    if-ne v2, v5, :cond_c

    .line 192
    .line 193
    :cond_b
    new-instance v2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;

    .line 194
    .line 195
    invoke-direct {v2, v1, v4}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_c
    move-object v13, v2

    .line 202
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 203
    .line 204
    iget-object v14, v1, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 205
    .line 206
    new-instance v0, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;

    .line 207
    .line 208
    const/4 v2, 0x0

    .line 209
    const/4 v5, 0x7

    .line 210
    move-object v4, v3

    .line 211
    move-object v3, p0

    .line 212
    invoke-direct/range {v0 .. v5}, Lorg/jetbrains/compose/resources/StringResourcesKt$stringResource$str$3$1;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    invoke-static {v6, v14, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 229
    .line 230
    and-int/lit16 v1, v9, 0x1c00

    .line 231
    .line 232
    const/16 v2, 0x180

    .line 233
    .line 234
    or-int/2addr v1, v2

    .line 235
    const v2, 0xe000

    .line 236
    .line 237
    .line 238
    and-int/2addr v2, v9

    .line 239
    or-int/2addr v1, v2

    .line 240
    move-object v5, v4

    .line 241
    move-object v3, v7

    .line 242
    move-object v4, v8

    .line 243
    move-object v2, v11

    .line 244
    move v7, v1

    .line 245
    move-object v1, v13

    .line 246
    invoke-static/range {v0 .. v7}, Lkotlin/uuid/UuidKt;->Render$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenRenderer;Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Landroidx/compose/runtime/Composer;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 250
    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 254
    .line 255
    .line 256
    move-object/from16 v2, p1

    .line 257
    .line 258
    :goto_8
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    if-eqz v8, :cond_e

    .line 263
    .line 264
    new-instance v0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;

    .line 265
    .line 266
    const/16 v7, 0x15

    .line 267
    .line 268
    move-object v1, p0

    .line 269
    move-object/from16 v3, p2

    .line 270
    .line 271
    move-object/from16 v4, p3

    .line 272
    .line 273
    move-object/from16 v5, p4

    .line 274
    .line 275
    move/from16 v6, p6

    .line 276
    .line 277
    invoke-direct/range {v0 .. v7}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 278
    .line 279
    .line 280
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 281
    .line 282
    :cond_e
    return-void
.end method

.method public static final Render$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenRenderer;Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    move-object/from16 v5, p4

    move/from16 v7, p7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v13, p6

    check-cast v13, Landroidx/compose/runtime/GapComposer;

    const v0, 0x6754f506

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v7, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v13, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    and-int/lit8 v1, v7, 0x30

    move-object/from16 v11, p1

    if-nez v1, :cond_3

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v7, 0x180

    move-object/from16 v12, p2

    if-nez v1, :cond_5

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v7, 0xc00

    move-object/from16 v9, p3

    if-nez v1, :cond_7

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    and-int/lit16 v1, v7, 0x6000

    if-nez v1, :cond_a

    const v1, 0x8000

    and-int/2addr v1, v7

    if-nez v1, :cond_8

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    :cond_8
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    :goto_5
    if-eqz v1, :cond_9

    const/16 v1, 0x4000

    goto :goto_6

    :cond_9
    const/16 v1, 0x2000

    :goto_6
    or-int/2addr v0, v1

    :cond_a
    const/high16 v1, 0x30000

    and-int/2addr v1, v7

    move-object/from16 v8, p5

    if-nez v1, :cond_c

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/high16 v1, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v1, 0x10000

    :goto_7
    or-int/2addr v0, v1

    :cond_c
    const v1, 0x12493

    and-int/2addr v1, v0

    const v2, 0x12492

    const/4 v3, 0x0

    if-eq v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    move v1, v3

    :goto_8
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {v13, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    shr-int/lit8 v1, v0, 0xf

    and-int/lit8 v1, v1, 0xe

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v2, v0, 0x70

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v0, 0x1c00

    or-int/2addr v1, v2

    const v2, 0xe000

    and-int v4, v0, v2

    or-int/2addr v1, v4

    const/high16 v4, 0x70000

    and-int/2addr v0, v4

    or-int/2addr v0, v1

    const v1, -0x822f8b

    .line 283
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    and-int/lit8 v1, v0, 0xe

    shr-int/lit8 v4, v0, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v1, v4

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v4, v0, 0x380

    or-int/2addr v1, v4

    and-int/lit16 v4, v0, 0x1c00

    or-int/2addr v1, v4

    and-int/2addr v0, v2

    or-int v14, v1, v0

    move-object v10, p0

    .line 284
    invoke-static/range {v8 .. v14}, Lokhttp3/Cookie$Companion;->MessageListPage(Lnet/thunderbird/feature/mail/message/list/ui/component/DefaultMessageListScope;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 285
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    goto :goto_9

    .line 286
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 287
    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_f

    new-instance v0, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;

    const/16 v8, 0xc

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 288
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final SelectDialogView(Lnet/thunderbird/core/ui/setting/SettingValue$Select;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v5, p5

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->value:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-object/from16 v13, p4

    .line 22
    .line 23
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    const v3, -0x6aa698e4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    .line 31
    and-int/lit8 v3, v5, 0x6

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    and-int/lit8 v3, v5, 0x8

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :goto_0
    if-eqz v3, :cond_1

    .line 50
    .line 51
    move v3, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v3, 0x2

    .line 54
    :goto_1
    or-int/2addr v3, v5

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v3, v5

    .line 57
    :goto_2
    and-int/lit8 v6, v5, 0x30

    .line 58
    .line 59
    const/16 v7, 0x20

    .line 60
    .line 61
    if-nez v6, :cond_4

    .line 62
    .line 63
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    move v6, v7

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v6, 0x10

    .line 72
    .line 73
    :goto_3
    or-int/2addr v3, v6

    .line 74
    :cond_4
    and-int/lit16 v6, v5, 0x180

    .line 75
    .line 76
    move-object/from16 v9, p2

    .line 77
    .line 78
    if-nez v6, :cond_6

    .line 79
    .line 80
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_5

    .line 85
    .line 86
    const/16 v6, 0x100

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    const/16 v6, 0x80

    .line 90
    .line 91
    :goto_4
    or-int/2addr v3, v6

    .line 92
    :cond_6
    and-int/lit16 v6, v5, 0xc00

    .line 93
    .line 94
    move-object/from16 v10, p3

    .line 95
    .line 96
    if-nez v6, :cond_8

    .line 97
    .line 98
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_7

    .line 103
    .line 104
    const/16 v6, 0x800

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_7
    const/16 v6, 0x400

    .line 108
    .line 109
    :goto_5
    or-int/2addr v3, v6

    .line 110
    :cond_8
    and-int/lit16 v6, v5, 0x6000

    .line 111
    .line 112
    if-nez v6, :cond_a

    .line 113
    .line 114
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_9

    .line 121
    .line 122
    const/16 v6, 0x4000

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_9
    const/16 v6, 0x2000

    .line 126
    .line 127
    :goto_6
    or-int/2addr v3, v6

    .line 128
    :cond_a
    and-int/lit16 v6, v3, 0x2493

    .line 129
    .line 130
    const/16 v8, 0x2492

    .line 131
    .line 132
    if-eq v6, v8, :cond_b

    .line 133
    .line 134
    const/4 v6, 0x1

    .line 135
    goto :goto_7

    .line 136
    :cond_b
    const/4 v6, 0x0

    .line 137
    :goto_7
    and-int/lit8 v8, v3, 0x1

    .line 138
    .line 139
    invoke-virtual {v13, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_16

    .line 144
    .line 145
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 150
    .line 151
    if-ne v6, v8, :cond_c

    .line 152
    .line 153
    iget-object v6, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->options:Lkotlinx/collections/immutable/ImmutableList;

    .line 154
    .line 155
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_c
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 163
    .line 164
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    if-ne v14, v8, :cond_10

    .line 169
    .line 170
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    check-cast v14, Lkotlinx/collections/immutable/ImmutableList;

    .line 175
    .line 176
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    :cond_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v15

    .line 184
    if-eqz v15, :cond_e

    .line 185
    .line 186
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    move-object v11, v15

    .line 191
    check-cast v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 192
    .line 193
    iget-object v11, v11, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v12, v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->id:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-eqz v11, :cond_d

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_e
    const/4 v15, 0x0

    .line 205
    :goto_8
    check-cast v15, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 206
    .line 207
    if-nez v15, :cond_f

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_f
    move-object v0, v15

    .line 211
    :goto_9
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_10
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 219
    .line 220
    iget-object v0, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->title:Lkotlin/jvm/functions/Function0;

    .line 221
    .line 222
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Ljava/lang/String;

    .line 227
    .line 228
    iget-object v11, v1, Lnet/thunderbird/core/ui/setting/SettingValue$Select;->icon:Lkotlin/jvm/functions/Function0;

    .line 229
    .line 230
    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    check-cast v11, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 235
    .line 236
    and-int/lit8 v12, v3, 0x70

    .line 237
    .line 238
    if-ne v12, v7, :cond_11

    .line 239
    .line 240
    const/4 v7, 0x1

    .line 241
    goto :goto_a

    .line 242
    :cond_11
    const/4 v7, 0x0

    .line 243
    :goto_a
    and-int/lit8 v12, v3, 0xe

    .line 244
    .line 245
    if-eq v12, v4, :cond_13

    .line 246
    .line 247
    and-int/lit8 v4, v3, 0x8

    .line 248
    .line 249
    if-eqz v4, :cond_12

    .line 250
    .line 251
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_12

    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_12
    const/16 v16, 0x0

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_13
    :goto_b
    const/16 v16, 0x1

    .line 262
    .line 263
    :goto_c
    or-int v4, v7, v16

    .line 264
    .line 265
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    if-nez v4, :cond_14

    .line 270
    .line 271
    if-ne v7, v8, :cond_15

    .line 272
    .line 273
    :cond_14
    new-instance v7, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 274
    .line 275
    const/16 v4, 0xf

    .line 276
    .line 277
    invoke-direct {v7, v2, v1, v14, v4}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_15
    move-object v8, v7

    .line 284
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 285
    .line 286
    new-instance v4, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 287
    .line 288
    const/16 v7, 0xa

    .line 289
    .line 290
    invoke-direct {v4, v1, v14, v6, v7}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 291
    .line 292
    .line 293
    const v6, 0x3ee99afc

    .line 294
    .line 295
    .line 296
    invoke-static {v6, v4, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    shl-int/lit8 v3, v3, 0x3

    .line 301
    .line 302
    and-int/lit16 v4, v3, 0x1c00

    .line 303
    .line 304
    const/high16 v6, 0xc00000

    .line 305
    .line 306
    or-int/2addr v4, v6

    .line 307
    const v6, 0xe000

    .line 308
    .line 309
    .line 310
    and-int/2addr v6, v3

    .line 311
    or-int/2addr v4, v6

    .line 312
    const/high16 v6, 0x70000

    .line 313
    .line 314
    and-int/2addr v3, v6

    .line 315
    or-int v14, v4, v3

    .line 316
    .line 317
    const/16 v15, 0x40

    .line 318
    .line 319
    move-object v7, v11

    .line 320
    const/4 v11, 0x0

    .line 321
    move-object v6, v0

    .line 322
    invoke-static/range {v6 .. v15}, Lorg/jsoup/Jsoup;->SettingDialogLayout(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 323
    .line 324
    .line 325
    goto :goto_d

    .line 326
    :cond_16
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 327
    .line 328
    .line 329
    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    if-eqz v7, :cond_17

    .line 334
    .line 335
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 336
    .line 337
    const/16 v6, 0xc

    .line 338
    .line 339
    move-object/from16 v3, p2

    .line 340
    .line 341
    move-object/from16 v4, p3

    .line 342
    .line 343
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;II)V

    .line 344
    .line 345
    .line 346
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 347
    .line 348
    :cond_17
    return-void
.end method

.method public static final access$getActionsWithoutTap(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Ljava/util/Set;
    .locals 3

    .line 1
    invoke-interface {p0}, Lnet/thunderbird/feature/notification/api/content/Notification;->getActions()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Iterable;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 28
    .line 29
    instance-of v2, v2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static final concat(Ljava/util/List;)Lkotlinx/datetime/internal/format/parser/ParserStructure;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 7
    .line 8
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 9
    .line 10
    invoke-direct {v1, v2, v2}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lkotlin/collections/ReversedListReadOnly;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lkotlin/collections/ReversedListReadOnly;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    move-object v2, p0

    .line 30
    check-cast v2, Lkotlin/collections/ReversedList$listIterator$1;

    .line 31
    .line 32
    iget-object v2, v2, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Ljava/util/ListIterator;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 47
    .line 48
    iget-object v3, v2, Lkotlinx/datetime/internal/format/parser/ParserStructure;->followedBy:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    iget-object v2, v2, Lkotlinx/datetime/internal/format/parser/ParserStructure;->operations:Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v1, v0}, Lkotlin/uuid/UuidKt;->concat$flushAccumulatedOperations(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v3, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 68
    .line 69
    invoke-static {v2, v3}, Lkotlin/uuid/UuidKt;->concat$simplifyAndAppend(Lkotlinx/datetime/internal/format/parser/ParserStructure;Lkotlinx/datetime/internal/format/parser/ParserStructure;)Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {v1, v0}, Lkotlin/uuid/UuidKt;->concat$flushAccumulatedOperations(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 82
    .line 83
    return-object p0
.end method

.method public static final concat$flushAccumulatedOperations(Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lkotlin/collections/ReversedList;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lkotlin/collections/ReversedList;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lkotlin/collections/ReversedList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    move-object v2, v1

    .line 21
    check-cast v2, Lkotlin/collections/ReversedList$listIterator$1;

    .line 22
    .line 23
    iget-object v2, v2, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ListIterator;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 48
    .line 49
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 50
    .line 51
    invoke-direct {v1, v0, v2}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 57
    .line 58
    invoke-static {v1, v0}, Lkotlin/uuid/UuidKt;->concat$simplifyAndAppend(Lkotlinx/datetime/internal/format/parser/ParserStructure;Lkotlinx/datetime/internal/format/parser/ParserStructure;)Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public static final concat$mergeOperations(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlinx/datetime/internal/format/parser/ParserStructure;)Lkotlinx/datetime/internal/format/parser/ParserStructure;
    .locals 3

    .line 1
    iget-object v0, p3, Lkotlinx/datetime/internal/format/parser/ParserStructure;->operations:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkotlinx/datetime/internal/format/parser/ParserOperation;

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, p0}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of p0, v1, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    new-instance p0, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 27
    .line 28
    check-cast v1, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 29
    .line 30
    iget-object v1, v1, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;->consumers:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;-><init>(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/4 p1, 0x1

    .line 47
    sub-int/2addr p0, p1

    .line 48
    if-gt p1, p0, :cond_2

    .line 49
    .line 50
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v2, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    if-eq p1, p0, :cond_2

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;-><init>(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    invoke-virtual {v2, p2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-instance p1, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 81
    .line 82
    iget-object p2, p3, Lkotlinx/datetime/internal/format/parser/ParserStructure;->followedBy:Ljava/util/List;

    .line 83
    .line 84
    invoke-direct {p1, p0, p2}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    return-object p1
.end method

.method public static final concat$simplifyAndAppend(Lkotlinx/datetime/internal/format/parser/ParserStructure;Lkotlinx/datetime/internal/format/parser/ParserStructure;)Lkotlinx/datetime/internal/format/parser/ParserStructure;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lkotlinx/datetime/internal/format/parser/ParserStructure;->operations:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v4, v3

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_4

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lkotlinx/datetime/internal/format/parser/ParserOperation;

    .line 30
    .line 31
    instance-of v6, v5, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    check-cast v5, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 38
    .line 39
    iget-object v5, v5, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;->consumers:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    check-cast v5, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 46
    .line 47
    iget-object v4, v5, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;->consumers:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    instance-of v6, v5, Lkotlinx/datetime/internal/format/parser/UnconditionalModification;

    .line 55
    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    if-eqz v4, :cond_3

    .line 63
    .line 64
    new-instance v6, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 65
    .line 66
    invoke-direct {v6, v4}, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;-><init>(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 76
    .line 77
    .line 78
    move-object v4, v3

    .line 79
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object p0, p0, Lkotlinx/datetime/internal/format/parser/ParserStructure;->followedBy:Ljava/util/List;

    .line 84
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_7

    .line 99
    .line 100
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 105
    .line 106
    invoke-static {v3, p1}, Lkotlin/uuid/UuidKt;->concat$simplifyAndAppend(Lkotlinx/datetime/internal/format/parser/ParserStructure;Lkotlinx/datetime/internal/format/parser/ParserStructure;)Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v5, v3, Lkotlinx/datetime/internal/format/parser/ParserStructure;->operations:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_5

    .line 117
    .line 118
    iget-object v5, v3, Lkotlinx/datetime/internal/format/parser/ParserStructure;->followedBy:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_6

    .line 125
    .line 126
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :cond_6
    :goto_2
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_9

    .line 144
    .line 145
    iget-object p0, p1, Lkotlinx/datetime/internal/format/parser/ParserStructure;->operations:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_8

    .line 152
    .line 153
    invoke-static {v0, v4, v1, p1}, Lkotlin/uuid/UuidKt;->concat$mergeOperations(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlinx/datetime/internal/format/parser/ParserStructure;)Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :cond_8
    iget-object v2, p1, Lkotlinx/datetime/internal/format/parser/ParserStructure;->followedBy:Ljava/util/List;

    .line 159
    .line 160
    :cond_9
    if-nez v4, :cond_a

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_e

    .line 167
    .line 168
    :cond_a
    if-eqz v2, :cond_b

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-eqz p0, :cond_b

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_e

    .line 186
    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 192
    .line 193
    iget-object p1, p1, Lkotlinx/datetime/internal/format/parser/ParserStructure;->operations:Ljava/util/List;

    .line 194
    .line 195
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    instance-of p1, p1, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 200
    .line 201
    if-eqz p1, :cond_c

    .line 202
    .line 203
    new-instance p0, Ljava/util/ArrayList;

    .line 204
    .line 205
    const/16 p1, 0xa

    .line 206
    .line 207
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_d

    .line 223
    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 229
    .line 230
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 231
    .line 232
    invoke-static {v3, v4, v1, v2}, Lkotlin/uuid/UuidKt;->concat$mergeOperations(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlinx/datetime/internal/format/parser/ParserStructure;)Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_d
    new-instance p1, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 241
    .line 242
    invoke-direct {p1, v0, p0}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 243
    .line 244
    .line 245
    return-object p1

    .line 246
    :cond_e
    :goto_4
    if-eqz v4, :cond_f

    .line 247
    .line 248
    new-instance p0, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 249
    .line 250
    invoke-direct {p0, v4}, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;-><init>(Ljava/util/List;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    :cond_f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 257
    .line 258
    .line 259
    new-instance p0, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    .line 260
    .line 261
    invoke-direct {p0, v0, v2}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 262
    .line 263
    .line 264
    return-object p0
.end method

.method public static final formatBytesInto(J[BIII)V
    .locals 4

    .line 1
    rsub-int/lit8 p4, p4, 0x7

    .line 2
    .line 3
    rsub-int/lit8 p5, p5, 0x8

    .line 4
    .line 5
    if-gt p5, p4, :cond_0

    .line 6
    .line 7
    :goto_0
    shl-int/lit8 v0, p4, 0x3

    .line 8
    .line 9
    shr-long v0, p0, v0

    .line 10
    .line 11
    const-wide/16 v2, 0xff

    .line 12
    .line 13
    and-long/2addr v0, v2

    .line 14
    long-to-int v0, v0

    .line 15
    sget-object v1, Lkotlin/text/HexExtensionsKt;->BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

    .line 16
    .line 17
    aget v0, v1, v0

    .line 18
    .line 19
    add-int/lit8 v1, p3, 0x1

    .line 20
    .line 21
    shr-int/lit8 v2, v0, 0x8

    .line 22
    .line 23
    int-to-byte v2, v2

    .line 24
    aput-byte v2, p2, p3

    .line 25
    .line 26
    add-int/lit8 p3, p3, 0x2

    .line 27
    .line 28
    int-to-byte v0, v0

    .line 29
    aput-byte v0, p2, v1

    .line 30
    .line 31
    if-eq p4, p5, :cond_0

    .line 32
    .line 33
    add-int/lit8 p4, p4, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public static get(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public static final getDisplayAccountAvatar(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;)Lnet/thunderbird/feature/account/avatar/Avatar;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 9
    .line 10
    const-string v0, "group"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    instance-of v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 21
    .line 22
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static final getDisplayAccountColor(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const p0, 0x7beeff9e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 24
    .line 25
    iget-wide v2, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 28
    .line 29
    .line 30
    return-wide v2

    .line 31
    :cond_0
    instance-of v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    const v0, 0x7bf0628b

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 44
    .line 45
    .line 46
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 47
    .line 48
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->color:I

    .line 49
    .line 50
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    return-wide p0

    .line 55
    :cond_1
    const p0, -0x675b6932

    .line 56
    .line 57
    .line 58
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 59
    .line 60
    invoke-static {p1, p0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    throw p0
.end method

.method public static final getDisplayAccountName(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Landroidx/compose/runtime/Composer;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const p0, 0x2a70e55e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 15
    .line 16
    .line 17
    const p0, 0x7f1204d5

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    instance-of v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    const v0, 0x2a72dd7b

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 41
    .line 42
    .line 43
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 44
    .line 45
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->name:Ljava/lang/String;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    const p0, 0x436ef906

    .line 49
    .line 50
    .line 51
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-static {p1, p0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0
.end method

.method public static final getLongAt(I[B)J
    .locals 7

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0xff

    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    const/16 v4, 0x38

    .line 8
    .line 9
    shl-long/2addr v0, v4

    .line 10
    add-int/lit8 v4, p0, 0x1

    .line 11
    .line 12
    aget-byte v4, p1, v4

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    and-long/2addr v4, v2

    .line 16
    const/16 v6, 0x30

    .line 17
    .line 18
    shl-long/2addr v4, v6

    .line 19
    or-long/2addr v0, v4

    .line 20
    add-int/lit8 v4, p0, 0x2

    .line 21
    .line 22
    aget-byte v4, p1, v4

    .line 23
    .line 24
    int-to-long v4, v4

    .line 25
    and-long/2addr v4, v2

    .line 26
    const/16 v6, 0x28

    .line 27
    .line 28
    shl-long/2addr v4, v6

    .line 29
    or-long/2addr v0, v4

    .line 30
    add-int/lit8 v4, p0, 0x3

    .line 31
    .line 32
    aget-byte v4, p1, v4

    .line 33
    .line 34
    int-to-long v4, v4

    .line 35
    and-long/2addr v4, v2

    .line 36
    const/16 v6, 0x20

    .line 37
    .line 38
    shl-long/2addr v4, v6

    .line 39
    or-long/2addr v0, v4

    .line 40
    add-int/lit8 v4, p0, 0x4

    .line 41
    .line 42
    aget-byte v4, p1, v4

    .line 43
    .line 44
    int-to-long v4, v4

    .line 45
    and-long/2addr v4, v2

    .line 46
    const/16 v6, 0x18

    .line 47
    .line 48
    shl-long/2addr v4, v6

    .line 49
    or-long/2addr v0, v4

    .line 50
    add-int/lit8 v4, p0, 0x5

    .line 51
    .line 52
    aget-byte v4, p1, v4

    .line 53
    .line 54
    int-to-long v4, v4

    .line 55
    and-long/2addr v4, v2

    .line 56
    const/16 v6, 0x10

    .line 57
    .line 58
    shl-long/2addr v4, v6

    .line 59
    or-long/2addr v0, v4

    .line 60
    add-int/lit8 v4, p0, 0x6

    .line 61
    .line 62
    aget-byte v4, p1, v4

    .line 63
    .line 64
    int-to-long v4, v4

    .line 65
    and-long/2addr v4, v2

    .line 66
    const/16 v6, 0x8

    .line 67
    .line 68
    shl-long/2addr v4, v6

    .line 69
    or-long/2addr v0, v4

    .line 70
    add-int/lit8 p0, p0, 0x7

    .line 71
    .line 72
    aget-byte p0, p1, p0

    .line 73
    .line 74
    int-to-long p0, p0

    .line 75
    and-long/2addr p0, v2

    .line 76
    or-long/2addr p0, v0

    .line 77
    return-wide p0
.end method

.method public static final getOutboxFolderIdSync(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lnet/thunderbird/feature/account/AccountIdFactory;->INSTANCE:Lnet/thunderbird/feature/account/AccountIdFactory;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lnet/thunderbird/feature/account/AccountIdFactory;->of(Ljava/lang/String;)Lnet/thunderbird/feature/account/AccountId;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v0, p0, p1, v2, v1}, Lnet/thunderbird/feature/mail/folder/api/OutboxFolderManager$getOutboxFolderIdSync$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->runBlockingK(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    return-wide p0
.end method

.method public static minusKey(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public static plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    const/16 v1, 0x15

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p0, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    return-object p0
.end method

.method public static requestFrom(Ljava/lang/String;Ljava/lang/String;)Lnet/openid/appauth/AuthorizationManagementRequest;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "authorization"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lnet/openid/appauth/AuthorizationRequest;->jsonDeserialize(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationRequest;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "end_session"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    new-instance v1, Lnet/openid/appauth/EndSessionRequest;

    .line 28
    .line 29
    const-string p0, "configuration"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/fsck/k9/mailstore/LocalStore$7;->fromJson(Lorg/json/JSONObject;)Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string p0, "id_token_hint"

    .line 40
    .line 41
    invoke-static {v0, p0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string p0, "post_logout_redirect_uri"

    .line 46
    .line 47
    invoke-static {v0, p0}, Lkotlinx/atomicfu/AtomicFU;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string p0, "state"

    .line 52
    .line 53
    invoke-static {v0, p0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string p0, "ui_locales"

    .line 58
    .line 59
    invoke-static {v0, p0}, Lkotlinx/atomicfu/AtomicFU;->getStringIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const-string p0, "additionalParameters"

    .line 64
    .line 65
    invoke-static {v0, p0}, Lkotlinx/atomicfu/AtomicFU;->getStringMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-direct/range {v1 .. v7}, Lnet/openid/appauth/EndSessionRequest;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_1
    const-string p0, "No AuthorizationManagementRequest found matching to this json schema"

    .line 74
    .line 75
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v1, p1

    .line 6
    move v2, v0

    .line 7
    :goto_0
    if-eqz v1, :cond_9

    .line 8
    .line 9
    iget-object v3, v1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move v4, v0

    .line 19
    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    .line 24
    .line 25
    .line 26
    if-eqz v3, :cond_4

    .line 27
    .line 28
    iget-object v6, v1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-ne v4, v6, :cond_2

    .line 38
    .line 39
    iget v1, v1, Lorg/jsoup/nodes/Node;->siblingIndex:I

    .line 40
    .line 41
    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    if-nez v5, :cond_3

    .line 47
    .line 48
    add-int/lit8 v2, v2, -0x1

    .line 49
    .line 50
    move-object v1, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move-object v1, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-lez v3, :cond_5

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_7

    .line 72
    .line 73
    if-gtz v2, :cond_6

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_6
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 80
    .line 81
    add-int/lit8 v2, v2, -0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_7
    :goto_4
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 85
    .line 86
    .line 87
    if-ne v1, p1, :cond_8

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_8
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_0

    .line 95
    :cond_9
    :goto_5
    return-void
.end method

.method public static final uuidThrowUnexpectedCharacterException(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Expected "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, " at index "

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, ", but was \'"

    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p0, 0x27

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method


# virtual methods
.method public abstract clean(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method
