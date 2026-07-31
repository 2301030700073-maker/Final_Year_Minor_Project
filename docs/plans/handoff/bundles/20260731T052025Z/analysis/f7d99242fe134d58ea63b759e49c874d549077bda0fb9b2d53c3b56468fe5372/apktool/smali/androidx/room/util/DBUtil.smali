.class public abstract Landroidx/room/util/DBUtil;
.super Ljava/lang/Object;


# static fields
.field public static _info:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _warning:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static canvas:Landroidx/compose/ui/graphics/AndroidCanvas;

.field public static canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public static imageBitmap:Landroidx/compose/ui/graphics/AndroidImageBitmap;


# direct methods
.method public static final AndroidFragment(Landroidx/compose/ui/Modifier;Landroidx/fragment/compose/FragmentState;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move-object/from16 v10, p4

    .line 10
    .line 11
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v4, -0x3c589ad4

    .line 14
    .line 15
    .line 16
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    const-class v4, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 20
    .line 21
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x2

    .line 26
    const/4 v7, 0x4

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    move v5, v7

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v5, v6

    .line 32
    :goto_0
    or-int v5, p5, v5

    .line 33
    .line 34
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_1

    .line 39
    .line 40
    const/16 v8, 0x20

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v8, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v5, v8

    .line 46
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    const/16 v8, 0x100

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 v8, 0x80

    .line 56
    .line 57
    :goto_2
    or-int/2addr v5, v8

    .line 58
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_3

    .line 63
    .line 64
    const/16 v8, 0x800

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 v8, 0x400

    .line 68
    .line 69
    :goto_3
    or-int/2addr v5, v8

    .line 70
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    const/16 v8, 0x4000

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    const/16 v8, 0x2000

    .line 80
    .line 81
    :goto_4
    or-int/2addr v5, v8

    .line 82
    and-int/lit16 v8, v5, 0x2493

    .line 83
    .line 84
    const/16 v11, 0x2492

    .line 85
    .line 86
    if-ne v8, v11, :cond_6

    .line 87
    .line 88
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-nez v8, :cond_5

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_6
    :goto_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 101
    .line 102
    .line 103
    and-int/lit8 v8, p5, 0x1

    .line 104
    .line 105
    if-eqz v8, :cond_8

    .line 106
    .line 107
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_7

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 115
    .line 116
    .line 117
    :cond_8
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 118
    .line 119
    .line 120
    move v8, v6

    .line 121
    invoke-static {v0, v10}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;)I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    sget-object v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 130
    .line 131
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    check-cast v12, Landroid/view/View;

    .line 136
    .line 137
    const v13, 0x1cee85f2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 152
    .line 153
    if-nez v13, :cond_9

    .line 154
    .line 155
    if-ne v14, v15, :cond_a

    .line 156
    .line 157
    :cond_9
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->findFragmentManager(Landroid/view/View;)Landroidx/fragment/app/FragmentManager;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_a
    check-cast v14, Landroidx/fragment/app/FragmentManager;

    .line 165
    .line 166
    const/4 v12, 0x0

    .line 167
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 168
    .line 169
    .line 170
    sget-object v13, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 171
    .line 172
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    check-cast v13, Landroid/content/Context;

    .line 177
    .line 178
    move/from16 p4, v8

    .line 179
    .line 180
    const v8, 0x1cee973c

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    if-ne v8, v15, :cond_b

    .line 191
    .line 192
    new-instance v8, Landroidx/fragment/compose/FragmentContainerViewFactory;

    .line 193
    .line 194
    invoke-direct {v8, v11}, Landroidx/fragment/compose/FragmentContainerViewFactory;-><init>(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_b
    check-cast v8, Landroidx/fragment/compose/FragmentContainerViewFactory;

    .line 201
    .line 202
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 203
    .line 204
    .line 205
    move/from16 v16, v12

    .line 206
    .line 207
    and-int/lit8 v12, v5, 0x70

    .line 208
    .line 209
    const/4 v9, 0x0

    .line 210
    invoke-static {v8, v1, v9, v10, v12}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 211
    .line 212
    .line 213
    new-array v12, v7, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object v14, v12, v16

    .line 216
    .line 217
    const/4 v7, 0x1

    .line 218
    aput-object v8, v12, v7

    .line 219
    .line 220
    aput-object v4, v12, p4

    .line 221
    .line 222
    const/4 v9, 0x3

    .line 223
    aput-object v2, v12, v9

    .line 224
    .line 225
    const v9, 0x1ceeb910

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v17

    .line 239
    or-int v9, v9, v17

    .line 240
    .line 241
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v17

    .line 245
    or-int v9, v9, v17

    .line 246
    .line 247
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    or-int/2addr v4, v9

    .line 252
    and-int/lit16 v9, v5, 0x380

    .line 253
    .line 254
    xor-int/lit16 v9, v9, 0x180

    .line 255
    .line 256
    const/16 v7, 0x100

    .line 257
    .line 258
    if-le v9, v7, :cond_c

    .line 259
    .line 260
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-nez v9, :cond_d

    .line 265
    .line 266
    :cond_c
    and-int/lit16 v5, v5, 0x180

    .line 267
    .line 268
    if-ne v5, v7, :cond_e

    .line 269
    .line 270
    :cond_d
    const/4 v7, 0x1

    .line 271
    goto :goto_7

    .line 272
    :cond_e
    move/from16 v7, v16

    .line 273
    .line 274
    :goto_7
    or-int/2addr v4, v7

    .line 275
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    or-int/2addr v4, v5

    .line 280
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    or-int/2addr v4, v5

    .line 285
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    or-int/2addr v4, v5

    .line 290
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    if-nez v4, :cond_f

    .line 295
    .line 296
    if-ne v5, v15, :cond_10

    .line 297
    .line 298
    :cond_f
    new-instance v2, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;

    .line 299
    .line 300
    move-object/from16 v7, p1

    .line 301
    .line 302
    move-object v4, v8

    .line 303
    move v9, v11

    .line 304
    move-object v5, v13

    .line 305
    move-object v8, v3

    .line 306
    move-object v3, v14

    .line 307
    invoke-direct/range {v2 .. v9}, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/compose/FragmentContainerViewFactory;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/fragment/compose/FragmentState;Landroid/os/Bundle;I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    move-object v5, v2

    .line 314
    :cond_10
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 315
    .line 316
    move/from16 v2, v16

    .line 317
    .line 318
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 319
    .line 320
    .line 321
    invoke-static {v12, v5, v10}, Landroidx/compose/runtime/Updater;->DisposableEffect([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 322
    .line 323
    .line 324
    :goto_8
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    if-eqz v6, :cond_11

    .line 329
    .line 330
    new-instance v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    .line 331
    .line 332
    move-object/from16 v2, p1

    .line 333
    .line 334
    move-object/from16 v3, p2

    .line 335
    .line 336
    move-object/from16 v4, p3

    .line 337
    .line 338
    move/from16 v5, p5

    .line 339
    .line 340
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/fragment/compose/FragmentState;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;I)V

    .line 341
    .line 342
    .line 343
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 344
    .line 345
    :cond_11
    return-void
.end method

.method public static final AppTitleTopHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v1, 0x777f68ba

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x2

    .line 23
    :goto_0
    or-int v1, p3, v1

    .line 24
    .line 25
    and-int/lit8 v2, p4, 0x2

    .line 26
    .line 27
    const/16 v3, 0x30

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    or-int/2addr v1, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    const/16 v5, 0x20

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/16 v5, 0x10

    .line 43
    .line 44
    :goto_1
    or-int/2addr v1, v5

    .line 45
    :goto_2
    and-int/lit8 v5, v1, 0x13

    .line 46
    .line 47
    const/16 v6, 0x12

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x1

    .line 51
    if-eq v5, v6, :cond_3

    .line 52
    .line 53
    move v5, v8

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move v5, v7

    .line 56
    :goto_3
    and-int/2addr v1, v8

    .line 57
    invoke-virtual {v0, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    move-object v1, p1

    .line 69
    :goto_4
    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 70
    .line 71
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/high16 v12, 0x41000000    # 8.0f

    .line 92
    .line 93
    const/4 v13, 0x5

    .line 94
    const/4 v9, 0x0

    .line 95
    const/high16 v10, 0x42000000    # 32.0f

    .line 96
    .line 97
    const/4 v11, 0x0

    .line 98
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    new-instance v4, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 107
    .line 108
    const/16 v5, 0x8

    .line 109
    .line 110
    invoke-direct {v4, v5, v1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const v5, 0x479a263a

    .line 114
    .line 115
    .line 116
    invoke-static {v5, v4, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v2, v4, v0, v3, v7}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 121
    .line 122
    .line 123
    move-object v10, v1

    .line 124
    goto :goto_5

    .line 125
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 126
    .line 127
    .line 128
    move-object v10, p1

    .line 129
    :goto_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    new-instance v8, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda6;

    .line 136
    .line 137
    const/4 v13, 0x1

    .line 138
    move-object v9, p0

    .line 139
    move/from16 v11, p3

    .line 140
    .line 141
    move/from16 v12, p4

    .line 142
    .line 143
    invoke-direct/range {v8 .. v13}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;III)V

    .line 144
    .line 145
    .line 146
    iput-object v8, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 147
    .line 148
    :cond_6
    return-void
.end method

.method public static final QrCodeScannerContent(Landroidx/compose/ui/draw/DrawResult;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v8, p3

    .line 8
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p3, 0x3b494934

    .line 11
    .line 12
    .line 13
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    const/4 p3, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p3, 0x2

    .line 25
    :goto_0
    or-int/2addr p3, p4

    .line 26
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v0, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr p3, v0

    .line 38
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/16 v0, 0x100

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v0, 0x80

    .line 48
    .line 49
    :goto_2
    or-int/2addr p3, v0

    .line 50
    and-int/lit16 v0, p3, 0x93

    .line 51
    .line 52
    const/16 v1, 0x92

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-eq v0, v1, :cond_3

    .line 56
    .line 57
    move v0, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 60
    :goto_3
    and-int/2addr p3, v2

    .line 61
    invoke-virtual {v8, p3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    sget-object p3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 68
    .line 69
    sget-object v0, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 70
    .line 71
    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance p3, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {p3, p1, p0, p2}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Landroidx/compose/ui/draw/DrawResult;Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    const v1, -0x30a8d949

    .line 81
    .line 82
    .line 83
    invoke-static {v1, p3, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const/high16 v9, 0x30000

    .line 88
    .line 89
    const/16 v10, 0x1e

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    const-wide/16 v2, 0x0

    .line 93
    .line 94
    const-wide/16 v4, 0x0

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    invoke-static/range {v0 .. v10}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 102
    .line 103
    .line 104
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    if-eqz p3, :cond_5

    .line 109
    .line 110
    new-instance v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {v0, p0, p1, p2, p4}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/draw/DrawResult;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lkotlin/jvm/functions/Function1;I)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 116
    .line 117
    :cond_5
    return-void
.end method

.method public static final RadioButton(ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 17

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    move/from16 v9, p6

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object/from16 v5, p5

    .line 15
    .line 16
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    const v2, -0x5a4f8cbb

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    and-int/lit8 v2, v9, 0x6

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x2

    .line 37
    :goto_0
    or-int/2addr v2, v9

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v9

    .line 40
    :goto_1
    and-int/lit8 v3, v9, 0x30

    .line 41
    .line 42
    const/16 v4, 0x20

    .line 43
    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    move v3, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/16 v3, 0x10

    .line 55
    .line 56
    :goto_2
    or-int/2addr v2, v3

    .line 57
    :cond_3
    and-int/lit16 v3, v9, 0x180

    .line 58
    .line 59
    if-nez v3, :cond_5

    .line 60
    .line 61
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    const/16 v3, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v3, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v2, v3

    .line 73
    :cond_5
    and-int/lit16 v3, v9, 0xc00

    .line 74
    .line 75
    if-nez v3, :cond_7

    .line 76
    .line 77
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_6

    .line 82
    .line 83
    const/16 v3, 0x800

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    const/16 v3, 0x400

    .line 87
    .line 88
    :goto_4
    or-int/2addr v2, v3

    .line 89
    :cond_7
    and-int/lit8 v3, p7, 0x10

    .line 90
    .line 91
    if-eqz v3, :cond_9

    .line 92
    .line 93
    or-int/lit16 v2, v2, 0x6000

    .line 94
    .line 95
    :cond_8
    move/from16 v6, p4

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_9
    and-int/lit16 v6, v9, 0x6000

    .line 99
    .line 100
    if-nez v6, :cond_8

    .line 101
    .line 102
    move/from16 v6, p4

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-eqz v10, :cond_a

    .line 109
    .line 110
    const/16 v10, 0x4000

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_a
    const/16 v10, 0x2000

    .line 114
    .line 115
    :goto_5
    or-int/2addr v2, v10

    .line 116
    :goto_6
    and-int/lit16 v10, v2, 0x2493

    .line 117
    .line 118
    const/16 v11, 0x2492

    .line 119
    .line 120
    const/4 v12, 0x1

    .line 121
    if-eq v10, v11, :cond_b

    .line 122
    .line 123
    move v10, v12

    .line 124
    goto :goto_7

    .line 125
    :cond_b
    const/4 v10, 0x0

    .line 126
    :goto_7
    and-int/lit8 v11, v2, 0x1

    .line 127
    .line 128
    invoke-virtual {v5, v11, v10}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_e

    .line 133
    .line 134
    if-eqz v3, :cond_c

    .line 135
    .line 136
    move v3, v12

    .line 137
    goto :goto_8

    .line 138
    :cond_c
    move v3, v6

    .line 139
    :goto_8
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 140
    .line 141
    new-instance v10, Landroidx/compose/ui/semantics/Role;

    .line 142
    .line 143
    const/4 v11, 0x3

    .line 144
    invoke-direct {v10, v11}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v8, v0, v10, v1}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-oSLSa3U$default(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    sget-object v13, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 152
    .line 153
    const/16 v14, 0x30

    .line 154
    .line 155
    invoke-static {v13, v6, v5, v14}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget-wide v13, v5, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 160
    .line 161
    ushr-long v15, v13, v4

    .line 162
    .line 163
    xor-long/2addr v13, v15

    .line 164
    long-to-int v4, v13

    .line 165
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    invoke-static {v5, v10}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 174
    .line 175
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 179
    .line 180
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 181
    .line 182
    .line 183
    iget-boolean v15, v5, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 184
    .line 185
    if-eqz v15, :cond_d

    .line 186
    .line 187
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 188
    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_d
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 192
    .line 193
    .line 194
    :goto_9
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 195
    .line 196
    invoke-static {v5, v6, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 197
    .line 198
    .line 199
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 200
    .line 201
    invoke-static {v5, v13, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 209
    .line 210
    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 211
    .line 212
    .line 213
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 214
    .line 215
    invoke-static {v5, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 216
    .line 217
    .line 218
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 219
    .line 220
    invoke-static {v5, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 221
    .line 222
    .line 223
    and-int/lit8 v4, v2, 0xe

    .line 224
    .line 225
    shr-int/lit8 v10, v2, 0x3

    .line 226
    .line 227
    and-int/lit8 v2, v10, 0x70

    .line 228
    .line 229
    or-int/2addr v2, v4

    .line 230
    and-int/lit16 v4, v10, 0x1c00

    .line 231
    .line 232
    or-int v6, v2, v4

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    const/4 v4, 0x0

    .line 236
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/Composer;I)V

    .line 237
    .line 238
    .line 239
    and-int/lit8 v0, v10, 0xe

    .line 240
    .line 241
    invoke-static {v0, v7, v5, v12}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 242
    .line 243
    .line 244
    goto :goto_a

    .line 245
    :cond_e
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 246
    .line 247
    .line 248
    move v3, v6

    .line 249
    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    if-eqz v10, :cond_f

    .line 254
    .line 255
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda2;

    .line 256
    .line 257
    move/from16 v1, p0

    .line 258
    .line 259
    move v5, v3

    .line 260
    move-object v2, v7

    .line 261
    move-object v4, v8

    .line 262
    move v6, v9

    .line 263
    move-object/from16 v3, p2

    .line 264
    .line 265
    move/from16 v7, p7

    .line 266
    .line 267
    invoke-direct/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda2;-><init>(ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZII)V

    .line 268
    .line 269
    .line 270
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 271
    .line 272
    :cond_f
    return-void
.end method

.method public static final RadioButton(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    move-object v5, p5

    check-cast v5, Landroidx/compose/runtime/GapComposer;

    const p5, -0x578d94bb

    invoke-virtual {v5, p5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x4

    goto :goto_0

    :cond_0
    const/4 p5, 0x2

    :goto_0
    or-int/2addr p5, p6

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    :goto_1
    or-int/2addr p5, v0

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x100

    goto :goto_2

    :cond_2
    const/16 v0, 0x80

    :goto_2
    or-int/2addr p5, v0

    or-int/lit16 p5, p5, 0x6c00

    and-int/lit16 v0, p5, 0x2493

    const/16 v1, 0x2492

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    and-int/lit8 v1, p5, 0x1

    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    new-instance p3, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, v2}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    const p4, 0x5e3d74a4

    invoke-static {p4, p3, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    and-int/lit8 p3, p5, 0xe

    or-int/lit8 p3, p3, 0x30

    and-int/lit16 p4, p5, 0x380

    or-int/2addr p3, p4

    or-int/lit16 v6, p3, 0x6c00

    const/4 v7, 0x0

    .line 275
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v4, 0x1

    move v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Landroidx/room/util/DBUtil;->RadioButton(ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    move-object p4, v3

    move p5, v4

    goto :goto_4

    :cond_4
    move v0, p0

    move-object v2, p2

    .line 276
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move p5, p4

    move-object p4, p3

    .line 277
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance p0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;

    move-object p2, p1

    move p1, v0

    move-object p3, v2

    invoke-direct/range {p0 .. p6}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda1;-><init>(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZI)V

    .line 278
    iput-object p0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final RoundRect-gG7oq9Y(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;
    .locals 17

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p4, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-wide v2, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long v4, p4, v2

    .line 16
    .line 17
    long-to-int v4, v4

    .line 18
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-long v5, v1

    .line 27
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-long v7, v1

    .line 32
    shl-long v0, v5, v0

    .line 33
    .line 34
    and-long/2addr v2, v7

    .line 35
    or-long v9, v0, v2

    .line 36
    .line 37
    new-instance v4, Landroidx/compose/ui/geometry/RoundRect;

    .line 38
    .line 39
    move-wide v11, v9

    .line 40
    move-wide v13, v9

    .line 41
    move-wide v15, v9

    .line 42
    move/from16 v5, p0

    .line 43
    .line 44
    move/from16 v6, p1

    .line 45
    .line 46
    move/from16 v7, p2

    .line 47
    .line 48
    move/from16 v8, p3

    .line 49
    .line 50
    invoke-direct/range {v4 .. v16}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJ)V

    .line 51
    .line 52
    .line 53
    return-object v4
.end method

.method public static final ServerSettingsPasswordInput(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    .line 1
    move/from16 v8, p8

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-object/from16 v12, p7

    .line 10
    .line 11
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x1f612cdc

    .line 14
    .line 15
    .line 16
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int/2addr v0, v8

    .line 33
    move-object/from16 v9, p1

    .line 34
    .line 35
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v1, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v1

    .line 47
    or-int/lit16 v0, v0, 0x180

    .line 48
    .line 49
    move-object/from16 v11, p3

    .line 50
    .line 51
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/16 v1, 0x800

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v1, 0x400

    .line 61
    .line 62
    :goto_2
    or-int/2addr v0, v1

    .line 63
    and-int/lit8 v1, p9, 0x10

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    or-int/lit16 v0, v0, 0x6000

    .line 68
    .line 69
    :cond_3
    move/from16 v2, p4

    .line 70
    .line 71
    :goto_3
    move-object/from16 v6, p5

    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_4
    and-int/lit16 v2, v8, 0x6000

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    move/from16 v2, p4

    .line 79
    .line 80
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    const/16 v3, 0x4000

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    const/16 v3, 0x2000

    .line 90
    .line 91
    :goto_4
    or-int/2addr v0, v3

    .line 92
    goto :goto_3

    .line 93
    :goto_5
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_6

    .line 98
    .line 99
    const/high16 v3, 0x20000

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_6
    const/high16 v3, 0x10000

    .line 103
    .line 104
    :goto_6
    or-int/2addr v0, v3

    .line 105
    move-object/from16 v7, p6

    .line 106
    .line 107
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    const/high16 v3, 0x100000

    .line 114
    .line 115
    goto :goto_7

    .line 116
    :cond_7
    const/high16 v3, 0x80000

    .line 117
    .line 118
    :goto_7
    or-int/2addr v0, v3

    .line 119
    const v3, 0x92493

    .line 120
    .line 121
    .line 122
    and-int/2addr v3, v0

    .line 123
    const v4, 0x92492

    .line 124
    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    if-eq v3, v4, :cond_8

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    goto :goto_8

    .line 131
    :cond_8
    move v3, v5

    .line 132
    :goto_8
    and-int/lit8 v4, v0, 0x1

    .line 133
    .line 134
    invoke-virtual {v12, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_d

    .line 139
    .line 140
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 141
    .line 142
    .line 143
    and-int/lit8 v3, v8, 0x1

    .line 144
    .line 145
    if-eqz v3, :cond_a

    .line 146
    .line 147
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_9

    .line 152
    .line 153
    goto :goto_a

    .line 154
    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 155
    .line 156
    .line 157
    move-object/from16 v10, p2

    .line 158
    .line 159
    :goto_9
    move/from16 v17, v2

    .line 160
    .line 161
    goto :goto_b

    .line 162
    :cond_a
    :goto_a
    if-eqz v1, :cond_b

    .line 163
    .line 164
    move v2, v5

    .line 165
    :cond_b
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 166
    .line 167
    move-object v10, v1

    .line 168
    goto :goto_9

    .line 169
    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 170
    .line 171
    .line 172
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;->Create:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 173
    .line 174
    const v2, 0x7fffe

    .line 175
    .line 176
    .line 177
    move-object/from16 v3, p0

    .line 178
    .line 179
    if-ne v3, v1, :cond_c

    .line 180
    .line 181
    const v1, -0x52978230

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 185
    .line 186
    .line 187
    shr-int/lit8 v0, v0, 0x3

    .line 188
    .line 189
    and-int/2addr v0, v2

    .line 190
    move-object v13, v10

    .line 191
    const/4 v10, 0x0

    .line 192
    move-object v15, v6

    .line 193
    move-object/from16 v16, v9

    .line 194
    .line 195
    move-object v14, v11

    .line 196
    move v9, v0

    .line 197
    move-object v11, v7

    .line 198
    invoke-static/range {v9 .. v17}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/TextInputKt;->PasswordInput(IILandroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 202
    .line 203
    .line 204
    goto :goto_c

    .line 205
    :cond_c
    move-object v13, v10

    .line 206
    const v1, -0x52933499

    .line 207
    .line 208
    .line 209
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 210
    .line 211
    .line 212
    shr-int/lit8 v0, v0, 0x3

    .line 213
    .line 214
    and-int/2addr v0, v2

    .line 215
    const/4 v15, 0x0

    .line 216
    move-object/from16 v9, p1

    .line 217
    .line 218
    move-object/from16 v11, p3

    .line 219
    .line 220
    move-object/from16 v14, p6

    .line 221
    .line 222
    move-object/from16 v16, v12

    .line 223
    .line 224
    move/from16 v12, v17

    .line 225
    .line 226
    move-object/from16 v13, p5

    .line 227
    .line 228
    move/from16 v17, v0

    .line 229
    .line 230
    invoke-static/range {v9 .. v17}, Landroidx/sqlite/SQLite;->ProtectedPasswordInput(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lnet/thunderbird/feature/account/server/settings/ui/common/Authenticator;Landroidx/compose/runtime/Composer;I)V

    .line 231
    .line 232
    .line 233
    move-object v13, v10

    .line 234
    move/from16 v17, v12

    .line 235
    .line 236
    move-object/from16 v12, v16

    .line 237
    .line 238
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 239
    .line 240
    .line 241
    :goto_c
    move/from16 v5, v17

    .line 242
    .line 243
    goto :goto_d

    .line 244
    :cond_d
    move-object/from16 v3, p0

    .line 245
    .line 246
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 247
    .line 248
    .line 249
    move-object/from16 v13, p2

    .line 250
    .line 251
    move v5, v2

    .line 252
    :goto_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    if-eqz v10, :cond_e

    .line 257
    .line 258
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda0;

    .line 259
    .line 260
    move-object/from16 v2, p1

    .line 261
    .line 262
    move-object/from16 v4, p3

    .line 263
    .line 264
    move-object/from16 v6, p5

    .line 265
    .line 266
    move-object/from16 v7, p6

    .line 267
    .line 268
    move/from16 v9, p9

    .line 269
    .line 270
    move-object v1, v3

    .line 271
    move-object v3, v13

    .line 272
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;II)V

    .line 273
    .line 274
    .line 275
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 276
    .line 277
    :cond_e
    return-void
.end method

.method public static final ServerValidationToolbarScreen(Ljava/lang/String;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v7, p3

    .line 5
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p3, 0x633159af

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 p3, p4, 0x6

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    move p3, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p3, 0x2

    .line 27
    :goto_0
    or-int/2addr p3, p4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move p3, p4

    .line 30
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    and-int/lit8 v1, p4, 0x40

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_2
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/16 v1, 0x20

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    const/16 v1, 0x10

    .line 53
    .line 54
    :goto_3
    or-int/2addr p3, v1

    .line 55
    :cond_4
    and-int/lit16 v1, p4, 0x180

    .line 56
    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    const/16 v1, 0x100

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_5
    const/16 v1, 0x80

    .line 69
    .line 70
    :goto_4
    or-int/2addr p3, v1

    .line 71
    :cond_6
    and-int/lit16 v1, p3, 0x93

    .line 72
    .line 73
    const/16 v2, 0x92

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x1

    .line 77
    if-eq v1, v2, :cond_7

    .line 78
    .line 79
    move v1, v4

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    move v1, v3

    .line 82
    :goto_5
    and-int/lit8 v2, p3, 0x1

    .line 83
    .line 84
    invoke-virtual {v7, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_d

    .line 89
    .line 90
    shr-int/lit8 p3, p3, 0x3

    .line 91
    .line 92
    iget-object v1, p1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 93
    .line 94
    invoke-static {v1, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    and-int/lit8 v2, p3, 0xe

    .line 99
    .line 100
    const/4 v5, 0x6

    .line 101
    xor-int/2addr v2, v5

    .line 102
    if-le v2, v0, :cond_8

    .line 103
    .line 104
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_9

    .line 109
    .line 110
    :cond_8
    and-int/2addr p3, v5

    .line 111
    if-ne p3, v0, :cond_a

    .line 112
    .line 113
    :cond_9
    move p3, v4

    .line 114
    goto :goto_6

    .line 115
    :cond_a
    move p3, v3

    .line 116
    :goto_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-nez p3, :cond_b

    .line 121
    .line 122
    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 123
    .line 124
    if-ne v0, p3, :cond_c

    .line 125
    .line 126
    :cond_b
    new-instance v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 127
    .line 128
    invoke-direct {v0, p1, v5}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    sget-object p3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 143
    .line 144
    invoke-static {v7}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    iget-object p3, p3, Landroidx/compose/foundation/layout/WindowInsetsHolder;->navigationBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 149
    .line 150
    invoke-static {p2, p3}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    new-instance v2, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    invoke-direct {v2, p0, v0, v3}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    .line 157
    .line 158
    .line 159
    const v3, -0x5f0ed695

    .line 160
    .line 161
    .line 162
    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    new-instance v3, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/4 v5, 0x5

    .line 169
    invoke-direct {v3, v5, v0}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 170
    .line 171
    .line 172
    const v5, 0x74256e8a

    .line 173
    .line 174
    .line 175
    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    new-instance v5, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;

    .line 180
    .line 181
    invoke-direct {v5, v1, p1, v0, v4}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lkotlin/jvm/functions/Function1;I)V

    .line 182
    .line 183
    .line 184
    const v0, 0x5f7425a3

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v5, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    const v8, 0x1801b0

    .line 192
    .line 193
    .line 194
    const/16 v9, 0x38

    .line 195
    .line 196
    move-object v1, v2

    .line 197
    move-object v2, v3

    .line 198
    const/4 v3, 0x0

    .line 199
    const/4 v4, 0x0

    .line 200
    const/4 v5, 0x0

    .line 201
    move-object v0, p3

    .line 202
    invoke-static/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 203
    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_d
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 207
    .line 208
    .line 209
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    if-eqz p3, :cond_e

    .line 214
    .line 215
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 216
    .line 217
    const/16 v5, 0x17

    .line 218
    .line 219
    move-object v1, p0

    .line 220
    move-object v2, p1

    .line 221
    move-object v3, p2

    .line 222
    move v4, p4

    .line 223
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 224
    .line 225
    .line 226
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 227
    .line 228
    :cond_e
    return-void
.end method

.method public static final TextTitleLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 260
    move-object/from16 v0, p6

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v1, 0xc069373

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    move-object/from16 v3, p0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p7, v1

    or-int/lit8 v1, v1, 0x30

    move-wide/from16 v5, p2

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x100

    goto :goto_1

    :cond_1
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v1, v2

    const v2, 0x36c00

    or-int/2addr v1, v2

    const v2, 0x12493

    and-int/2addr v2, v1

    const v4, 0x12492

    if-eq v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    and-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 262
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 264
    iget-object v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    and-int/lit16 v1, v1, 0x3fe

    const/16 v20, 0x6186

    const v21, 0x3abf8

    move/from16 v19, v1

    .line 265
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v0

    move-object/from16 v17, v2

    move-object v0, v3

    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v21}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v4, v1

    move v7, v11

    move v8, v13

    goto :goto_3

    :cond_3
    move-object/from16 v18, v0

    .line 266
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    .line 267
    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;

    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p2

    move/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;JIIII)V

    .line 268
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final TextTitleLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V
    .locals 30

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
    const v1, -0xc73d971

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
    and-int/lit8 v7, p9, 0x8

    .line 89
    .line 90
    if-eqz v7, :cond_9

    .line 91
    .line 92
    or-int/lit16 v1, v1, 0xc00

    .line 93
    .line 94
    :cond_8
    move-object/from16 v10, p4

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_9
    and-int/lit16 v10, v8, 0xc00

    .line 98
    .line 99
    if-nez v10, :cond_8

    .line 100
    .line 101
    move-object/from16 v10, p4

    .line 102
    .line 103
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_a

    .line 108
    .line 109
    const/16 v11, 0x800

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_a
    const/16 v11, 0x400

    .line 113
    .line 114
    :goto_6
    or-int/2addr v1, v11

    .line 115
    :goto_7
    const v11, 0x36000

    .line 116
    .line 117
    .line 118
    or-int/2addr v1, v11

    .line 119
    const v11, 0x12493

    .line 120
    .line 121
    .line 122
    and-int/2addr v11, v1

    .line 123
    const v12, 0x12492

    .line 124
    .line 125
    .line 126
    if-eq v11, v12, :cond_b

    .line 127
    .line 128
    const/4 v11, 0x1

    .line 129
    goto :goto_8

    .line 130
    :cond_b
    const/4 v11, 0x0

    .line 131
    :goto_8
    and-int/lit8 v12, v1, 0x1

    .line 132
    .line 133
    invoke-virtual {v0, v12, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_f

    .line 138
    .line 139
    if-eqz v2, :cond_c

    .line 140
    .line 141
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 142
    .line 143
    move-object v10, v2

    .line 144
    goto :goto_9

    .line 145
    :cond_c
    move-object v10, v3

    .line 146
    :goto_9
    if-eqz v4, :cond_d

    .line 147
    .line 148
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 149
    .line 150
    move-wide v11, v2

    .line 151
    goto :goto_a

    .line 152
    :cond_d
    move-wide v11, v5

    .line 153
    :goto_a
    if-eqz v7, :cond_e

    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    move-object/from16 v17, v2

    .line 157
    .line 158
    goto :goto_b

    .line 159
    :cond_e
    move-object/from16 v17, p4

    .line 160
    .line 161
    :goto_b
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 168
    .line 169
    iget-object v2, v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 170
    .line 171
    and-int/lit16 v3, v1, 0x3fe

    .line 172
    .line 173
    shr-int/lit8 v4, v1, 0x9

    .line 174
    .line 175
    and-int/lit8 v4, v4, 0xe

    .line 176
    .line 177
    shr-int/lit8 v5, v1, 0x6

    .line 178
    .line 179
    and-int/lit16 v5, v5, 0x380

    .line 180
    .line 181
    or-int/2addr v4, v5

    .line 182
    shr-int/lit8 v1, v1, 0x3

    .line 183
    .line 184
    const v5, 0xe000

    .line 185
    .line 186
    .line 187
    and-int/2addr v1, v5

    .line 188
    or-int v28, v4, v1

    .line 189
    .line 190
    const v29, 0x1abf8

    .line 191
    .line 192
    .line 193
    const-wide/16 v13, 0x0

    .line 194
    .line 195
    const-wide/16 v15, 0x0

    .line 196
    .line 197
    const-wide/16 v18, 0x0

    .line 198
    .line 199
    const/16 v20, 0x1

    .line 200
    .line 201
    const/16 v21, 0x0

    .line 202
    .line 203
    const v22, 0x7fffffff

    .line 204
    .line 205
    .line 206
    const/16 v23, 0x0

    .line 207
    .line 208
    const/16 v24, 0x0

    .line 209
    .line 210
    move-object/from16 v26, v0

    .line 211
    .line 212
    move-object/from16 v25, v2

    .line 213
    .line 214
    move/from16 v27, v3

    .line 215
    .line 216
    invoke-static/range {v9 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 217
    .line 218
    .line 219
    move-object v2, v10

    .line 220
    move-wide v3, v11

    .line 221
    move-object/from16 v5, v17

    .line 222
    .line 223
    move/from16 v6, v20

    .line 224
    .line 225
    move/from16 v7, v22

    .line 226
    .line 227
    goto :goto_c

    .line 228
    :cond_f
    move-object/from16 v26, v0

    .line 229
    .line 230
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 231
    .line 232
    .line 233
    move/from16 v7, p6

    .line 234
    .line 235
    move-object v2, v3

    .line 236
    move-wide v3, v5

    .line 237
    move-object/from16 v5, p4

    .line 238
    .line 239
    move/from16 v6, p5

    .line 240
    .line 241
    :goto_c
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    if-eqz v11, :cond_10

    .line 246
    .line 247
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;

    .line 248
    .line 249
    const/4 v10, 0x2

    .line 250
    move-object/from16 v1, p0

    .line 251
    .line 252
    move/from16 v9, p9

    .line 253
    .line 254
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IIIII)V

    .line 255
    .line 256
    .line 257
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 258
    .line 259
    :cond_10
    return-void
.end method

.method public static final access$runMigrations(Ljava/util/List;Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$1:Ljava/util/Iterator;

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$0:Ljava/io/Serializable;

    .line 43
    .line 44
    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catchall_0
    move-exception p2

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_2
    iget-object p0, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$0:Ljava/io/Serializable;

    .line 59
    .line 60
    check-cast p0, Ljava/util/List;

    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance p2, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v1, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 75
    .line 76
    const/16 v6, 0x9

    .line 77
    .line 78
    invoke-direct {v1, p0, p2, v2, v6}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 79
    .line 80
    .line 81
    iput-object p2, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$0:Ljava/io/Serializable;

    .line 82
    .line 83
    iput v4, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    .line 84
    .line 85
    invoke-virtual {p1, v1, v0}, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->updateData(Landroidx/navigation/compose/NavHostKt$NavHost$25$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-ne p0, v5, :cond_4

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    move-object p0, p2

    .line 93
    :goto_1
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_7

    .line 107
    .line 108
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 113
    .line 114
    :try_start_1
    iput-object p1, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$0:Ljava/io/Serializable;

    .line 115
    .line 116
    iput-object p0, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->L$1:Ljava/util/Iterator;

    .line 117
    .line 118
    iput v3, v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$1;->label:I

    .line 119
    .line 120
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    if-ne p2, v5, :cond_5

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :goto_3
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    .line 129
    if-nez v1, :cond_6

    .line 130
    .line 131
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    check-cast v1, Ljava/lang/Throwable;

    .line 135
    .line 136
    invoke-static {v1, p2}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Ljava/lang/Throwable;

    .line 143
    .line 144
    if-nez p0, :cond_8

    .line 145
    .line 146
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    .line 148
    :goto_4
    return-object v5

    .line 149
    :cond_8
    throw p0
.end method

.method public static final annotatedStringResource(ILandroidx/compose/ui/text/AnnotatedString;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string/jumbo v2, "{placeHolder}"

    .line 6
    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    invoke-static {p0, v0, p2}, Landroidx/work/Operation$State;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v0, 0x2ff246a

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 28
    .line 29
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x6

    .line 46
    invoke-static {p0, v2, v1, v1, v3}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, -0x1

    .line 51
    if-eq v2, v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(IILjava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0xd

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {v0, v2, p1, p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(IILjava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_1
    const-string p0, "Failed requirement."

    .line 77
    .line 78
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method public static final containsInclusive(Landroidx/compose/ui/geometry/Rect;FF)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 4
    .line 5
    cmpg-float v1, p1, v1

    .line 6
    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    cmpg-float p1, v0, p1

    .line 10
    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 14
    .line 15
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 16
    .line 17
    cmpg-float p0, p2, p0

    .line 18
    .line 19
    if-gtz p0, :cond_0

    .line 20
    .line 21
    cmpg-float p0, p1, p2

    .line 22
    .line 23
    if-gtz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static create(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 2

    .line 1
    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->keys:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/pipe/Metadata$Key;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    check-cast v1, Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 22
    .line 23
    iget-object p0, v1, Landroidx/camera/camera2/pipe/Metadata$Key;->type:Lkotlin/jvm/internal/ClassReference;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string p1, "Check failed."

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw p0
.end method

.method public static createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/webkit/internal/ApiHelperForP;->createAsync$1(Landroid/os/Looper;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :try_start_0
    const-class v1, Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    new-array v3, v2, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v4, Landroid/os/Looper;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v4, v3, v5

    .line 22
    .line 23
    const-class v4, Landroid/os/Handler$Callback;

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    aput-object v4, v3, v6

    .line 27
    .line 28
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v7, 0x2

    .line 31
    aput-object v4, v3, v7

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p0, v2, v5

    .line 40
    .line 41
    aput-object v0, v2, v6

    .line 42
    .line 43
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    aput-object v3, v2, v7

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    return-object v1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :catch_2
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :catch_3
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    instance-of v1, p0, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    instance-of v1, p0, Ljava/lang/Error;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_1
    check-cast p0, Ljava/lang/Error;

    .line 79
    .line 80
    throw p0

    .line 81
    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    throw p0

    .line 84
    :goto_1
    const-string v1, "HandlerCompat"

    .line 85
    .line 86
    const-string v2, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    .line 87
    .line 88
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    new-instance v0, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method public static final fastCbrt(F)F
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0x1ffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x3

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-int v0, v0

    .line 16
    const v1, 0x2a510554

    .line 17
    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    mul-float v1, v0, v0

    .line 25
    .line 26
    div-float v1, p0, v1

    .line 27
    .line 28
    sub-float v1, v0, v1

    .line 29
    .line 30
    const v2, 0x3eaaaaab

    .line 31
    .line 32
    .line 33
    mul-float/2addr v1, v2

    .line 34
    sub-float/2addr v0, v1

    .line 35
    mul-float v1, v0, v0

    .line 36
    .line 37
    div-float/2addr p0, v1

    .line 38
    sub-float p0, v0, p0

    .line 39
    .line 40
    mul-float/2addr p0, v2

    .line 41
    sub-float/2addr v0, p0

    .line 42
    return v0
.end method

.method public static fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;
    .locals 2

    .line 1
    sget-object v0, Lcom/eygraber/uri/NotCachedHolder;->NotCached:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    sget-object p0, Lcom/eygraber/uri/parts/Part;->EMPTY:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    if-nez v0, :cond_2

    .line 18
    .line 19
    sget-object p0, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    sget-object p0, Lcom/eygraber/uri/parts/Part;->EMPTY:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    new-instance v1, Lcom/eygraber/uri/parts/Part;

    .line 32
    .line 33
    invoke-direct {v1, p0, v0}, Lcom/eygraber/uri/parts/AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public static final getCoroutineContext(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode$room_runtime_release()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "coroutineScope"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/collection/internal/Lock;

    .line 15
    .line 16
    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_3

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, "transactionContext"

    .line 30
    .line 31
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v2

    .line 35
    :cond_1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 36
    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v2

    .line 46
    :cond_3
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_4
    iget-object p0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 51
    .line 52
    if-eqz p0, :cond_5

    .line 53
    .line 54
    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v2
.end method

.method public static getHumanReadableName(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0x4

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "IMAGE_CAPTURE"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    and-int/lit8 v1, p0, 0x1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, "PREVIEW"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    and-int/lit8 p0, p0, 0x2

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const-string p0, "VIDEO_CAPTURE"

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/CharSequence;

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    const-string/jumbo v1, "|"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public static final getInfo()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 13

    .line 1
    sget-object v0, Landroidx/room/util/DBUtil;->_info:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.Info"

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
    const/high16 v0, 0x40e00000    # 7.0f

    .line 43
    .line 44
    const/high16 v2, 0x41300000    # 11.0f

    .line 45
    .line 46
    invoke-virtual {v6, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 47
    .line 48
    .line 49
    const/high16 v0, 0x40000000    # 2.0f

    .line 50
    .line 51
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 55
    .line 56
    .line 57
    const/high16 v4, -0x40000000    # -2.0f

    .line 58
    .line 59
    invoke-virtual {v6, v4}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v2, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 69
    .line 70
    .line 71
    const/high16 v2, 0x40c00000    # 6.0f

    .line 72
    .line 73
    invoke-virtual {v6, v2}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v4}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 80
    .line 81
    .line 82
    const/high16 v2, 0x41400000    # 12.0f

    .line 83
    .line 84
    invoke-virtual {v6, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 85
    .line 86
    .line 87
    const/high16 v11, 0x40000000    # 2.0f

    .line 88
    .line 89
    const/high16 v12, 0x41400000    # 12.0f

    .line 90
    .line 91
    const v7, 0x40cf5c29    # 6.48f

    .line 92
    .line 93
    .line 94
    const/high16 v8, 0x40000000    # 2.0f

    .line 95
    .line 96
    const/high16 v9, 0x40000000    # 2.0f

    .line 97
    .line 98
    const v10, 0x40cf5c29    # 6.48f

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 102
    .line 103
    .line 104
    const v4, 0x408f5c29    # 4.48f

    .line 105
    .line 106
    .line 107
    const/high16 v5, 0x41200000    # 10.0f

    .line 108
    .line 109
    invoke-virtual {v6, v4, v5, v5, v5}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 110
    .line 111
    .line 112
    const v4, -0x3f70a3d7    # -4.48f

    .line 113
    .line 114
    .line 115
    const/high16 v7, -0x3ee00000    # -10.0f

    .line 116
    .line 117
    invoke-virtual {v6, v5, v4, v5, v7}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 118
    .line 119
    .line 120
    const v4, 0x418c28f6    # 17.52f

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v4, v0, v2, v0}, Lokhttp3/Headers$Builder;->reflectiveCurveTo(FFFF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 127
    .line 128
    .line 129
    const/high16 v0, 0x41a00000    # 20.0f

    .line 130
    .line 131
    invoke-virtual {v6, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 132
    .line 133
    .line 134
    const/high16 v11, -0x3f000000    # -8.0f

    .line 135
    .line 136
    const/high16 v12, -0x3f000000    # -8.0f

    .line 137
    .line 138
    const v7, -0x3f72e148    # -4.41f

    .line 139
    .line 140
    .line 141
    const/4 v8, 0x0

    .line 142
    const/high16 v9, -0x3f000000    # -8.0f

    .line 143
    .line 144
    const v10, -0x3f9a3d71    # -3.59f

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 148
    .line 149
    .line 150
    const v0, 0x4065c28f    # 3.59f

    .line 151
    .line 152
    .line 153
    const/high16 v2, -0x3f000000    # -8.0f

    .line 154
    .line 155
    const/high16 v4, 0x41000000    # 8.0f

    .line 156
    .line 157
    invoke-virtual {v6, v0, v2, v4, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v4, v0, v4, v4}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 161
    .line 162
    .line 163
    const v0, -0x3f9a3d71    # -3.59f

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v0, v4, v2, v4}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 170
    .line 171
    .line 172
    iget-object v2, v6, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 173
    .line 174
    const/high16 v4, 0x3f800000    # 1.0f

    .line 175
    .line 176
    const/high16 v5, 0x3f800000    # 1.0f

    .line 177
    .line 178
    const/high16 v6, 0x3f800000    # 1.0f

    .line 179
    .line 180
    const/4 v7, 0x2

    .line 181
    const/high16 v8, 0x3f800000    # 1.0f

    .line 182
    .line 183
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sput-object v0, Landroidx/room/util/DBUtil;->_info:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 191
    .line 192
    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 7
    .line 8
    iget-object v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/work/Data$Companion;->toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    const-class v2, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;

    .line 17
    .line 18
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    const/high16 p0, 0x14000000

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string p0, "accountUuid"

    .line 27
    .line 28
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string p0, "messageReferences"

    .line 32
    .line 33
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public static getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Landroidx/navigation/NavigatorProvider;->annotationNames:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    const-class v1, Landroidx/navigation/Navigator$Name;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/navigation/Navigator$Name;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Landroidx/navigation/Navigator$Name;->value()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-lez v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "No @Navigator.Name annotation found for "

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public static isEditable(Landroid/widget/EditText;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public static final isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, v2

    .line 6
    .line 7
    const-wide v4, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v4, v0

    .line 13
    cmp-long v2, v2, v4

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-wide v2, p0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-wide v2, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    .line 24
    .line 25
    cmp-long v2, v0, v2

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    iget-wide v2, p0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    .line 30
    .line 31
    cmp-long p0, v0, v2

    .line 32
    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static final lerp(FFF)F
    .locals 1

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    return p2
.end method

.method public static final lerp(IFI)I
    .locals 2

    .line 1
    sub-int/2addr p2, p0

    .line 2
    int-to-double v0, p2

    .line 3
    float-to-double p1, p1

    .line 4
    mul-double/2addr v0, p1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    long-to-int p1, p1

    .line 10
    add-int/2addr p0, p1

    .line 11
    return p0
.end method

.method public static final performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode$room_runtime_release()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    .line 29
    .line 30
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    :goto_0
    new-instance v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move v2, p1

    .line 40
    move v3, p2

    .line 41
    move-object v4, p3

    .line 42
    invoke-direct/range {v0 .. v5}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;-><init>(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->runBlockingUninterruptible(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 9
    .line 10
    iget v2, v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 20
    .line 21
    :goto_0
    move-object v7, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v0, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v1, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x3

    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v8, 0x1

    .line 37
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    if-eq v1, v8, :cond_3

    .line 42
    .line 43
    if-eq v1, v4, :cond_2

    .line 44
    .line 45
    if-ne v1, v3, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_2
    iget-boolean v1, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$1:Z

    .line 58
    .line 59
    iget-boolean v4, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$0:Z

    .line 60
    .line 61
    iget-object v5, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 62
    .line 63
    iget-object v6, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    move v14, v1

    .line 69
    move v13, v4

    .line 70
    move-object v15, v5

    .line 71
    move-object v12, v6

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode$room_runtime_release()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Landroidx/room/RoomDatabase;->isOpenInternal()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    new-instance v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    move-object/from16 v3, p0

    .line 103
    .line 104
    move/from16 v2, p1

    .line 105
    .line 106
    move/from16 v1, p2

    .line 107
    .line 108
    move-object/from16 v5, p3

    .line 109
    .line 110
    invoke-direct/range {v0 .. v6}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;-><init>(ZZLandroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;I)V

    .line 111
    .line 112
    .line 113
    move v1, v2

    .line 114
    move-object v2, v0

    .line 115
    move-object v0, v3

    .line 116
    iput v8, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2, v7}, Landroidx/room/RoomDatabase;->useConnection$room_runtime_release(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-ne v0, v9, :cond_5

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    return-object v0

    .line 126
    :cond_6
    move-object/from16 v0, p0

    .line 127
    .line 128
    move/from16 v1, p1

    .line 129
    .line 130
    move/from16 v5, p2

    .line 131
    .line 132
    iput-object v0, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 133
    .line 134
    move-object/from16 v6, p3

    .line 135
    .line 136
    iput-object v6, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 137
    .line 138
    iput-boolean v1, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$0:Z

    .line 139
    .line 140
    iput-boolean v5, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$1:Z

    .line 141
    .line 142
    iput v4, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 143
    .line 144
    invoke-static {v0, v5, v7}, Landroidx/room/util/DBUtil;->getCoroutineContext(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-ne v4, v9, :cond_7

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move-object v12, v0

    .line 152
    move v13, v1

    .line 153
    move-object v0, v4

    .line 154
    move v14, v5

    .line 155
    move-object v15, v6

    .line 156
    :goto_2
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 157
    .line 158
    new-instance v10, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    invoke-direct/range {v10 .. v15}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)V

    .line 162
    .line 163
    .line 164
    iput-object v2, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/room/RoomDatabase;

    .line 165
    .line 166
    iput-object v2, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Lkotlin/jvm/functions/Function1;

    .line 167
    .line 168
    iput v3, v7, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    .line 169
    .line 170
    invoke-static {v0, v10, v7}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-ne v0, v9, :cond_8

    .line 175
    .line 176
    :goto_3
    return-object v9

    .line 177
    :cond_8
    return-object v0
.end method

.method public static final positionToParentOf(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/Applier;I)V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 2
    .line 3
    if-le p2, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    .line 6
    .line 7
    if-lt p2, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    if-nez v0, :cond_2

    .line 10
    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    :cond_1
    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->skipToGroupEnd()V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/compose/runtime/Applier;->up()V

    .line 26
    .line 27
    .line 28
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endGroup()V

    .line 29
    .line 30
    .line 31
    goto :goto_0
.end method

.method public static final propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, v1, p0, p1}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final rememberLauncherForActivityResult(Lcom/fsck/k9/sasl/OAuthBearer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/activity/compose/ManagedActivityResultLauncher;
    .locals 8

    .line 1
    invoke-static {p0, p2}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    .line 7
    move-result-object v5

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array v0, p1, [Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 18
    .line 19
    if-ne v1, v7, :cond_0

    .line 20
    .line 21
    new-instance v1, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, v2}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    const/16 v2, 0x30

    .line 33
    .line 34
    invoke-static {v0, v1, p2, v2}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v3, v0

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    sget-object v0, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->LocalComposition:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    const v0, 0x4852b6d3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/content/Context;

    .line 65
    .line 66
    :goto_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    instance-of v2, v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move-object v0, v1

    .line 83
    :goto_1
    check-cast v0, Landroidx/activity/result/ActivityResultRegistryOwner;

    .line 84
    .line 85
    :goto_2
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    const v2, 0x4852b36f

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_3
    if-eqz v0, :cond_a

    .line 97
    .line 98
    invoke-interface {v0}, Landroidx/activity/result/ActivityResultRegistryOwner;->getActivityResultRegistry()Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v7, :cond_4

    .line 107
    .line 108
    new-instance p1, Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    move-object v1, p1

    .line 117
    check-cast v1, Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-ne p1, v7, :cond_5

    .line 124
    .line 125
    new-instance p1, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 126
    .line 127
    invoke-direct {p1, v1}, Landroidx/activity/compose/ManagedActivityResultLauncher;-><init>(Landroidx/activity/compose/ActivityResultLauncherHolder;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    check-cast p1, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 134
    .line 135
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    or-int/2addr v0, v4

    .line 144
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    or-int/2addr v0, v4

    .line 149
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    or-int/2addr v0, v4

    .line 154
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    or-int/2addr v0, v4

    .line 159
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-nez v0, :cond_7

    .line 164
    .line 165
    if-ne v4, v7, :cond_6

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move-object v0, v4

    .line 169
    move-object v4, p0

    .line 170
    goto :goto_5

    .line 171
    :cond_7
    :goto_4
    new-instance v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;

    .line 172
    .line 173
    const/4 v6, 0x1

    .line 174
    move-object v4, p0

    .line 175
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :goto_5
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 182
    .line 183
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    or-int/2addr p0, v1

    .line 192
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    or-int/2addr p0, v1

    .line 197
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-nez p0, :cond_8

    .line 202
    .line 203
    if-ne v1, v7, :cond_9

    .line 204
    .line 205
    :cond_8
    new-instance v1, Landroidx/compose/runtime/DisposableEffectImpl;

    .line 206
    .line 207
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DisposableEffectImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_9
    check-cast v1, Landroidx/compose/runtime/DisposableEffectImpl;

    .line 214
    .line 215
    return-object p1

    .line 216
    :cond_a
    const-string p0, "No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner"

    .line 217
    .line 218
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-object v1
.end method

.method public static splitCommand(Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/BinaryBitmap;I)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Long;

    .line 8
    .line 9
    new-instance v2, Ljava/util/TreeSet;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection([Ljava/lang/Object;Ljava/util/AbstractSet;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p2, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/util/Set;

    .line 20
    .line 21
    check-cast v1, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    iget-object p2, p2, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Ljava/util/List;

    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    add-int/2addr v3, p2

    .line 44
    add-int/lit8 v3, v3, 0x2

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    return-object v0

    .line 60
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move v6, v3

    .line 71
    :goto_2
    if-ge v6, p3, :cond_7

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    const/16 v8, 0x2c

    .line 78
    .line 79
    if-nez v7, :cond_3

    .line 80
    .line 81
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    add-int/2addr v11, v6

    .line 100
    add-int/lit8 v11, v11, 0x1

    .line 101
    .line 102
    if-lt v11, p3, :cond_2

    .line 103
    .line 104
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-instance v8, Lkotlin/Pair;

    .line 111
    .line 112
    invoke-direct {v8, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v2, v6}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    new-instance v8, Lkotlin/Pair;

    .line 136
    .line 137
    invoke-direct {v8, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-nez v7, :cond_5

    .line 146
    .line 147
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Lcom/fsck/k9/mail/store/imap/ContiguousIdGroup;

    .line 152
    .line 153
    invoke-virtual {v7}, Lcom/fsck/k9/mail/store/imap/ContiguousIdGroup;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    add-int/2addr v10, v6

    .line 162
    add-int/lit8 v10, v10, 0x1

    .line 163
    .line 164
    if-lt v10, p3, :cond_4

    .line 165
    .line 166
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 167
    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    new-instance v8, Lkotlin/Pair;

    .line 173
    .line 174
    invoke-direct {v8, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    new-instance v8, Lkotlin/Pair;

    .line 194
    .line 195
    invoke-direct {v8, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_5
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    new-instance v8, Lkotlin/Pair;

    .line 206
    .line 207
    invoke-direct {v8, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :goto_3
    iget-object v6, v8, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v6, Ljava/lang/Boolean;

    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    iget-object v7, v8, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v7, Ljava/lang/Number;

    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-nez v6, :cond_6

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_6
    move v6, v7

    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    :cond_7
    :goto_4
    if-eqz p2, :cond_8

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    add-int/lit8 v6, v6, -0x1

    .line 239
    .line 240
    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    add-int/lit8 v5, v5, -0x1

    .line 252
    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 254
    .line 255
    .line 256
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    goto/16 :goto_0
.end method

.method public static final upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V
    .locals 48

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 6
    .line 7
    .line 8
    move-result v10

    .line 9
    const-string/jumbo v11, "webdav"

    .line 10
    .line 11
    .line 12
    const-string v12, "pop3"

    .line 13
    .line 14
    const-string v13, "imap"

    .line 15
    .line 16
    const-string v14, ":"

    .line 17
    .line 18
    const-string v15, ".storeUri"

    .line 19
    .line 20
    const-string v2, ".transportUri"

    .line 21
    .line 22
    const-string v16, ""

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-string v4, ","

    .line 26
    .line 27
    const-string v5, "accountUuids"

    .line 28
    .line 29
    const/4 v8, 0x2

    .line 30
    if-ge v10, v8, :cond_c

    .line 31
    .line 32
    const-string v0, "Updating preferences to urlencoded username/password"

    .line 33
    .line 34
    new-array v7, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v0, v7}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v5}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_c

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_c

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    move/from16 v18, v3

    .line 56
    .line 57
    array-length v3, v7

    .line 58
    move/from16 v8, v18

    .line 59
    .line 60
    :goto_0
    if-ge v8, v3, :cond_b

    .line 61
    .line 62
    aget-object v0, v7, v8

    .line 63
    .line 64
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-static {v1, v6}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 87
    move/from16 v21, v3

    .line 88
    .line 89
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v1, v3}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 112
    move-object/from16 v22, v4

    .line 113
    .line 114
    :try_start_2
    new-instance v4, Ljava/net/URI;

    .line 115
    .line 116
    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    if-eqz v3, :cond_2

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    aget-object v23, v3, v18

    .line 130
    .line 131
    move-object/from16 v24, v4

    .line 132
    .line 133
    invoke-static/range {v23 .. v23}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    move-object/from16 v23, v7

    .line 138
    .line 139
    :try_start_3
    array-length v7, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    move/from16 v25, v8

    .line 141
    .line 142
    const/4 v8, 0x1

    .line 143
    if-le v7, v8, :cond_0

    .line 144
    .line 145
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    aget-object v26, v3, v8

    .line 154
    .line 155
    invoke-static/range {v26 .. v26}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    goto/16 :goto_b

    .line 169
    .line 170
    :cond_0
    move-object/from16 v7, v16

    .line 171
    .line 172
    :goto_1
    array-length v8, v3

    .line 173
    move-object/from16 v26, v3

    .line 174
    .line 175
    const/4 v3, 0x2

    .line 176
    if-le v8, v3, :cond_1

    .line 177
    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    move/from16 v19, v3

    .line 187
    .line 188
    aget-object v3, v26, v19

    .line 189
    .line 190
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    goto :goto_2

    .line 198
    :cond_1
    move-object/from16 v3, v16

    .line 199
    .line 200
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    move-object/from16 v28, v3

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :catch_1
    move-exception v0

    .line 222
    :goto_3
    move/from16 v25, v8

    .line 223
    .line 224
    goto/16 :goto_b

    .line 225
    .line 226
    :catch_2
    move-exception v0

    .line 227
    :goto_4
    move-object/from16 v23, v7

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_2
    move-object/from16 v24, v4

    .line 231
    .line 232
    move-object/from16 v23, v7

    .line 233
    .line 234
    move/from16 v25, v8

    .line 235
    .line 236
    const/16 v28, 0x0

    .line 237
    .line 238
    :goto_5
    if-eqz v28, :cond_3

    .line 239
    .line 240
    new-instance v26, Ljava/net/URI;

    .line 241
    .line 242
    invoke-virtual/range {v24 .. v24}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v27

    .line 246
    invoke-virtual/range {v24 .. v24}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v29

    .line 250
    invoke-virtual/range {v24 .. v24}, Ljava/net/URI;->getPort()I

    .line 251
    .line 252
    .line 253
    move-result v30

    .line 254
    invoke-virtual/range {v24 .. v24}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v31

    .line 258
    invoke-virtual/range {v24 .. v24}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v32

    .line 262
    invoke-virtual/range {v24 .. v24}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v33

    .line 266
    invoke-direct/range {v26 .. v33}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-static {v1, v4, v3}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_3
    new-instance v3, Ljava/net/URI;

    .line 296
    .line 297
    invoke-direct {v3, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_5

    .line 305
    .line 306
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    array-length v6, v4

    .line 315
    const/4 v7, 0x2

    .line 316
    if-ne v6, v7, :cond_4

    .line 317
    .line 318
    aget-object v6, v4, v18

    .line 319
    .line 320
    invoke-static {v6}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    const/16 v20, 0x1

    .line 325
    .line 326
    aget-object v4, v4, v20

    .line 327
    .line 328
    invoke-static {v4}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    goto :goto_6

    .line 351
    :cond_4
    aget-object v6, v4, v18

    .line 352
    .line 353
    const/16 v20, 0x1

    .line 354
    .line 355
    aget-object v7, v4, v20

    .line 356
    .line 357
    invoke-static {v7}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    const/16 v19, 0x2

    .line 362
    .line 363
    aget-object v4, v4, v19

    .line 364
    .line 365
    invoke-static {v4}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    new-instance v8, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    :goto_6
    move-object/from16 v28, v4

    .line 394
    .line 395
    goto/16 :goto_9

    .line 396
    .line 397
    :cond_5
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-eqz v4, :cond_7

    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    const/4 v7, 0x2

    .line 408
    invoke-virtual {v4, v14, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    aget-object v6, v4, v18

    .line 413
    .line 414
    invoke-static {v6}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    array-length v7, v4

    .line 419
    const/4 v8, 0x1

    .line 420
    if-le v7, v8, :cond_6

    .line 421
    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    aget-object v4, v4, v8

    .line 431
    .line 432
    invoke-static {v4}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    goto :goto_7

    .line 444
    :cond_6
    move-object/from16 v4, v16

    .line 445
    .line 446
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    goto :goto_6

    .line 462
    :cond_7
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_9

    .line 467
    .line 468
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    const/4 v7, 0x2

    .line 473
    invoke-virtual {v4, v14, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    aget-object v6, v4, v18

    .line 478
    .line 479
    invoke-static {v6}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    array-length v8, v4

    .line 484
    const/4 v7, 0x1

    .line 485
    if-le v8, v7, :cond_8

    .line 486
    .line 487
    new-instance v8, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    aget-object v4, v4, v7

    .line 496
    .line 497
    invoke-static {v4}, Lcom/fsck/k9/helper/FileHelper;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    goto :goto_8

    .line 509
    :cond_8
    move-object/from16 v4, v16

    .line 510
    .line 511
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    goto/16 :goto_6

    .line 527
    .line 528
    :cond_9
    const/16 v28, 0x0

    .line 529
    .line 530
    :goto_9
    if-eqz v28, :cond_a

    .line 531
    .line 532
    new-instance v26, Ljava/net/URI;

    .line 533
    .line 534
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v27

    .line 538
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v29

    .line 542
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    .line 543
    .line 544
    .line 545
    move-result v30

    .line 546
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v31

    .line 550
    invoke-virtual {v3}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v32

    .line 554
    invoke-virtual {v3}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v33

    .line 558
    invoke-direct/range {v26 .. v33}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-static {v3}, Lcom/fsck/k9/mail/filter/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-static {v1, v0, v3}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 585
    .line 586
    .line 587
    :cond_a
    move/from16 v4, v18

    .line 588
    .line 589
    goto :goto_c

    .line 590
    :catch_3
    move-exception v0

    .line 591
    :goto_a
    move-object/from16 v22, v4

    .line 592
    .line 593
    goto/16 :goto_4

    .line 594
    .line 595
    :catch_4
    move-exception v0

    .line 596
    move/from16 v21, v3

    .line 597
    .line 598
    goto :goto_a

    .line 599
    :goto_b
    const-string v3, "ooops"

    .line 600
    .line 601
    move/from16 v4, v18

    .line 602
    .line 603
    new-array v6, v4, [Ljava/lang/Object;

    .line 604
    .line 605
    invoke-static {v0, v3, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    :goto_c
    add-int/lit8 v8, v25, 0x1

    .line 609
    .line 610
    move/from16 v18, v4

    .line 611
    .line 612
    move/from16 v3, v21

    .line 613
    .line 614
    move-object/from16 v4, v22

    .line 615
    .line 616
    move-object/from16 v7, v23

    .line 617
    .line 618
    goto/16 :goto_0

    .line 619
    .line 620
    :cond_b
    move-object/from16 v22, v4

    .line 621
    .line 622
    move/from16 v4, v18

    .line 623
    .line 624
    goto :goto_d

    .line 625
    :cond_c
    move-object/from16 v22, v4

    .line 626
    .line 627
    move v4, v3

    .line 628
    :goto_d
    const/4 v0, 0x6

    .line 629
    const/4 v3, 0x3

    .line 630
    if-ge v10, v3, :cond_e

    .line 631
    .line 632
    new-instance v6, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 633
    .line 634
    invoke-direct {v6, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 635
    .line 636
    .line 637
    invoke-static {v1, v5}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    if-eqz v7, :cond_e

    .line 642
    .line 643
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 644
    .line 645
    .line 646
    move-result v8

    .line 647
    if-nez v8, :cond_d

    .line 648
    .line 649
    goto/16 :goto_f

    .line 650
    .line 651
    :cond_d
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v8

    .line 655
    invoke-static {v7, v8, v0}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 656
    .line 657
    .line 658
    move-result-object v7

    .line 659
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 660
    .line 661
    .line 662
    move-result-object v7

    .line 663
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    .line 665
    .line 666
    move-result v8

    .line 667
    if-eqz v8, :cond_e

    .line 668
    .line 669
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v8

    .line 673
    check-cast v8, Ljava/lang/String;

    .line 674
    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    .line 676
    .line 677
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    const-string v4, ".archiveFolderName"

    .line 684
    .line 685
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    invoke-virtual {v6, v3}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteFolderValue(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    .line 696
    .line 697
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v4, ".autoExpandFolderName"

    .line 704
    .line 705
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-virtual {v6, v3}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteFolderValue(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v4, ".draftsFolderName"

    .line 724
    .line 725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v6, v3}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteFolderValue(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    const-string v4, ".sentFolderName"

    .line 744
    .line 745
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v3

    .line 752
    invoke-virtual {v6, v3}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteFolderValue(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    const-string v4, ".spamFolderName"

    .line 764
    .line 765
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    invoke-virtual {v6, v3}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteFolderValue(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    new-instance v3, Ljava/lang/StringBuilder;

    .line 776
    .line 777
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    const-string v4, ".trashFolderName"

    .line 784
    .line 785
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    invoke-virtual {v6, v3}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteFolderValue(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    const/4 v3, 0x3

    .line 796
    const/4 v4, 0x0

    .line 797
    goto/16 :goto_e

    .line 798
    .line 799
    :cond_e
    :goto_f
    const/4 v3, 0x4

    .line 800
    if-ge v10, v3, :cond_10

    .line 801
    .line 802
    invoke-static {v1, v5}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    if-eqz v4, :cond_10

    .line 807
    .line 808
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 809
    .line 810
    .line 811
    move-result v6

    .line 812
    if-nez v6, :cond_f

    .line 813
    .line 814
    goto/16 :goto_11

    .line 815
    .line 816
    :cond_f
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v6

    .line 820
    invoke-static {v4, v6, v0}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 825
    .line 826
    .line 827
    move-result-object v4

    .line 828
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 829
    .line 830
    .line 831
    move-result v6

    .line 832
    if-eqz v6, :cond_10

    .line 833
    .line 834
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v6

    .line 838
    check-cast v6, Ljava/lang/String;

    .line 839
    .line 840
    new-instance v7, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    const-string v8, ".archiveFolderSelection"

    .line 849
    .line 850
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v7

    .line 857
    const-string v8, "MANUAL"

    .line 858
    .line 859
    invoke-static {v1, v7, v8}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    new-instance v7, Ljava/lang/StringBuilder;

    .line 863
    .line 864
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    const-string v3, ".draftsFolderSelection"

    .line 871
    .line 872
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-static {v1, v3, v8}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    const-string v7, ".sentFolderSelection"

    .line 891
    .line 892
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-static {v1, v3, v8}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    .line 903
    .line 904
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    const-string v7, ".spamFolderSelection"

    .line 911
    .line 912
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    invoke-static {v1, v3, v8}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    .line 923
    .line 924
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    const-string v6, ".trashFolderSelection"

    .line 931
    .line 932
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    invoke-static {v1, v3, v8}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    const/4 v3, 0x4

    .line 943
    goto :goto_10

    .line 944
    :cond_10
    :goto_11
    const/4 v3, 0x5

    .line 945
    const/16 v4, 0xf

    .line 946
    .line 947
    const/4 v6, -0x1

    .line 948
    if-ge v10, v3, :cond_14

    .line 949
    .line 950
    invoke-static {v1, v5}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v7

    .line 954
    if-eqz v7, :cond_14

    .line 955
    .line 956
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 957
    .line 958
    .line 959
    move-result v8

    .line 960
    if-nez v8, :cond_11

    .line 961
    .line 962
    goto :goto_14

    .line 963
    :cond_11
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v8

    .line 967
    invoke-static {v7, v8, v0}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 968
    .line 969
    .line 970
    move-result-object v7

    .line 971
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 972
    .line 973
    .line 974
    move-result-object v7

    .line 975
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 976
    .line 977
    .line 978
    move-result v8

    .line 979
    if-eqz v8, :cond_14

    .line 980
    .line 981
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v8

    .line 985
    check-cast v8, Ljava/lang/String;

    .line 986
    .line 987
    const-string v3, ".automaticCheckIntervalMinutes"

    .line 988
    .line 989
    invoke-static {v8, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v3

    .line 993
    invoke-static {v1, v3}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v8

    .line 997
    if-eqz v8, :cond_12

    .line 998
    .line 999
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v8

    .line 1003
    goto :goto_13

    .line 1004
    :cond_12
    const/4 v8, 0x0

    .line 1005
    :goto_13
    if-eqz v8, :cond_13

    .line 1006
    .line 1007
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    if-le v0, v6, :cond_13

    .line 1012
    .line 1013
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    if-ge v0, v4, :cond_13

    .line 1018
    .line 1019
    const-string v0, "15"

    .line 1020
    .line 1021
    invoke-static {v1, v3, v0}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    :cond_13
    const/4 v0, 0x6

    .line 1025
    const/4 v3, 0x5

    .line 1026
    goto :goto_12

    .line 1027
    :cond_14
    :goto_14
    const-string v0, "theme"

    .line 1028
    .line 1029
    const/4 v3, 0x6

    .line 1030
    if-ge v10, v3, :cond_1e

    .line 1031
    .line 1032
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v3

    .line 1036
    if-eqz v3, :cond_15

    .line 1037
    .line 1038
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    move-result v3

    .line 1042
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    goto :goto_15

    .line 1047
    :cond_15
    const/4 v3, 0x0

    .line 1048
    :goto_15
    if-nez v3, :cond_16

    .line 1049
    .line 1050
    goto :goto_16

    .line 1051
    :cond_16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1052
    .line 1053
    .line 1054
    move-result v7

    .line 1055
    const/4 v8, 0x1

    .line 1056
    if-eq v7, v8, :cond_19

    .line 1057
    .line 1058
    :goto_16
    if-nez v3, :cond_17

    .line 1059
    .line 1060
    goto :goto_17

    .line 1061
    :cond_17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1062
    .line 1063
    .line 1064
    move-result v3

    .line 1065
    const v7, 0x1030005

    .line 1066
    .line 1067
    .line 1068
    if-ne v3, v7, :cond_18

    .line 1069
    .line 1070
    goto :goto_18

    .line 1071
    :cond_18
    :goto_17
    const/4 v3, 0x0

    .line 1072
    goto :goto_19

    .line 1073
    :cond_19
    :goto_18
    const/4 v3, 0x1

    .line 1074
    :goto_19
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v3

    .line 1078
    invoke-static {v1, v0, v3}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    invoke-static {v1, v5}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    if-eqz v3, :cond_1e

    .line 1086
    .line 1087
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1088
    .line 1089
    .line 1090
    move-result v7

    .line 1091
    if-nez v7, :cond_1a

    .line 1092
    .line 1093
    goto/16 :goto_1d

    .line 1094
    .line 1095
    :cond_1a
    const-string v7, "openPgpProvider"

    .line 1096
    .line 1097
    invoke-static {v1, v7}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v8

    .line 1101
    if-nez v8, :cond_1b

    .line 1102
    .line 1103
    move-object/from16 v8, v16

    .line 1104
    .line 1105
    :cond_1b
    const-string v4, "openPgpSupportSignOnly"

    .line 1106
    .line 1107
    invoke-static {v1, v4}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v27

    .line 1111
    if-eqz v27, :cond_1c

    .line 1112
    .line 1113
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result v27

    .line 1117
    :goto_1a
    const/16 v20, 0x1

    .line 1118
    .line 1119
    goto :goto_1b

    .line 1120
    :cond_1c
    const/16 v27, 0x0

    .line 1121
    .line 1122
    goto :goto_1a

    .line 1123
    :goto_1b
    xor-int/lit8 v27, v27, 0x1

    .line 1124
    .line 1125
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v6

    .line 1129
    move-object/from16 v27, v2

    .line 1130
    .line 1131
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v2

    .line 1135
    move-object/from16 v29, v5

    .line 1136
    .line 1137
    const/4 v5, 0x6

    .line 1138
    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v2

    .line 1142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v3

    .line 1150
    if-eqz v3, :cond_1d

    .line 1151
    .line 1152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    check-cast v3, Ljava/lang/String;

    .line 1157
    .line 1158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    move-object/from16 v30, v2

    .line 1167
    .line 1168
    const-string v2, ".openPgpProvider"

    .line 1169
    .line 1170
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    invoke-static {v1, v2, v8}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .line 1187
    .line 1188
    const-string v3, ".openPgpHideSignOnly"

    .line 1189
    .line 1190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v2

    .line 1197
    invoke-static {v1, v2, v6}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    .line 1199
    .line 1200
    move-object/from16 v2, v30

    .line 1201
    .line 1202
    goto :goto_1c

    .line 1203
    :cond_1d
    const/4 v2, 0x0

    .line 1204
    invoke-static {v1, v7, v2}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    invoke-static {v1, v4, v2}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    goto :goto_1e

    .line 1211
    :cond_1e
    :goto_1d
    move-object/from16 v27, v2

    .line 1212
    .line 1213
    move-object/from16 v29, v5

    .line 1214
    .line 1215
    const/4 v2, 0x0

    .line 1216
    :goto_1e
    const/4 v3, 0x7

    .line 1217
    const-string v4, "LIGHT"

    .line 1218
    .line 1219
    if-ge v10, v3, :cond_22

    .line 1220
    .line 1221
    new-instance v3, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 1222
    .line 1223
    invoke-direct {v3, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v5

    .line 1230
    if-eqz v5, :cond_1f

    .line 1231
    .line 1232
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1233
    .line 1234
    .line 1235
    move-result v5

    .line 1236
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v5

    .line 1240
    goto :goto_1f

    .line 1241
    :cond_1f
    move-object v5, v2

    .line 1242
    :goto_1f
    if-nez v5, :cond_20

    .line 1243
    .line 1244
    const/4 v8, 0x1

    .line 1245
    goto :goto_20

    .line 1246
    :cond_20
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1247
    .line 1248
    .line 1249
    move-result v5

    .line 1250
    const/4 v8, 0x1

    .line 1251
    if-ne v5, v8, :cond_21

    .line 1252
    .line 1253
    const-string v5, "DARK"

    .line 1254
    .line 1255
    goto :goto_21

    .line 1256
    :cond_21
    :goto_20
    move-object v5, v4

    .line 1257
    :goto_21
    invoke-static {v1, v0, v5}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    const-string v5, "messageViewTheme"

    .line 1261
    .line 1262
    invoke-virtual {v3, v5}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteScreenTheme(Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    const-string v5, "messageComposeTheme"

    .line 1266
    .line 1267
    invoke-virtual {v3, v5}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteScreenTheme(Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    goto :goto_22

    .line 1271
    :cond_22
    const/4 v8, 0x1

    .line 1272
    :goto_22
    const/16 v3, 0x8

    .line 1273
    .line 1274
    if-ge v10, v3, :cond_23

    .line 1275
    .line 1276
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v3

    .line 1280
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v3

    .line 1284
    if-eqz v3, :cond_23

    .line 1285
    .line 1286
    const-string v3, "FOLLOW_SYSTEM"

    .line 1287
    .line 1288
    invoke-static {v1, v0, v3}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    .line 1290
    .line 1291
    :cond_23
    const/16 v0, 0xa

    .line 1292
    .line 1293
    if-ge v10, v0, :cond_29

    .line 1294
    .line 1295
    const-string v3, "[^.]+\\..+\\.([^.]+)"

    .line 1296
    .line 1297
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v3

    .line 1301
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1302
    .line 1303
    .line 1304
    const-string v34, "inTopGroup"

    .line 1305
    .line 1306
    const-string v35, "integrate"

    .line 1307
    .line 1308
    const-string v30, "displayMode"

    .line 1309
    .line 1310
    const-string v31, "notifyMode"

    .line 1311
    .line 1312
    const-string v32, "syncMode"

    .line 1313
    .line 1314
    const-string v33, "pushMode"

    .line 1315
    .line 1316
    filled-new-array/range {v30 .. v35}, [Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v4

    .line 1320
    invoke-static {v4}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v4

    .line 1324
    const-string v5, "primkey"

    .line 1325
    .line 1326
    const-string/jumbo v6, "value"

    .line 1327
    .line 1328
    .line 1329
    move-object v7, v3

    .line 1330
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v3

    .line 1334
    move-object/from16 v17, v7

    .line 1335
    .line 1336
    const/4 v7, 0x0

    .line 1337
    move/from16 v20, v8

    .line 1338
    .line 1339
    const/4 v8, 0x0

    .line 1340
    move-object/from16 v30, v2

    .line 1341
    .line 1342
    const-string v2, "preferences_storage"

    .line 1343
    .line 1344
    move-object/from16 v31, v4

    .line 1345
    .line 1346
    const/4 v4, 0x0

    .line 1347
    move-object/from16 v32, v5

    .line 1348
    .line 1349
    const/4 v5, 0x0

    .line 1350
    move-object/from16 v33, v6

    .line 1351
    .line 1352
    const/4 v6, 0x0

    .line 1353
    move-object/from16 v19, v11

    .line 1354
    .line 1355
    move-object/from16 v21, v12

    .line 1356
    .line 1357
    move-object/from16 v23, v14

    .line 1358
    .line 1359
    move-object/from16 v0, v17

    .line 1360
    .line 1361
    move-object/from16 v37, v27

    .line 1362
    .line 1363
    move-object/from16 v12, v29

    .line 1364
    .line 1365
    move-object/from16 v36, v31

    .line 1366
    .line 1367
    move-object/from16 v11, v32

    .line 1368
    .line 1369
    move-object/from16 v9, v33

    .line 1370
    .line 1371
    const/4 v14, 0x2

    .line 1372
    const/16 v18, 0x0

    .line 1373
    .line 1374
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v2

    .line 1378
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1379
    .line 1380
    .line 1381
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 1382
    .line 1383
    .line 1384
    move-result v3

    .line 1385
    new-instance v4, Ljava/util/ArrayList;

    .line 1386
    .line 1387
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1388
    .line 1389
    .line 1390
    move/from16 v5, v18

    .line 1391
    .line 1392
    :goto_23
    if-ge v5, v3, :cond_24

    .line 1393
    .line 1394
    invoke-interface {v2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1395
    .line 1396
    .line 1397
    invoke-static {v2, v11}, Lorg/slf4j/helpers/Util;->getStringOrThrow(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v6

    .line 1401
    invoke-static {v2, v9}, Lorg/slf4j/helpers/Util;->getStringOrThrow(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v7

    .line 1405
    const-string v8, "Loading key \'%s\', value = \'%s\'"

    .line 1406
    .line 1407
    move/from16 v24, v3

    .line 1408
    .line 1409
    new-array v3, v14, [Ljava/lang/Object;

    .line 1410
    .line 1411
    aput-object v6, v3, v18

    .line 1412
    .line 1413
    aput-object v7, v3, v20

    .line 1414
    .line 1415
    invoke-static {v8, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    .line 1417
    .line 1418
    new-instance v3, Lkotlin/Pair;

    .line 1419
    .line 1420
    invoke-direct {v3, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1424
    .line 1425
    .line 1426
    add-int/lit8 v5, v5, 0x1

    .line 1427
    .line 1428
    move/from16 v3, v24

    .line 1429
    .line 1430
    goto :goto_23

    .line 1431
    :cond_24
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 1432
    .line 1433
    .line 1434
    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v2

    .line 1438
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v2

    .line 1442
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v2

    .line 1446
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1447
    .line 1448
    .line 1449
    move-result v3

    .line 1450
    if-eqz v3, :cond_28

    .line 1451
    .line 1452
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v3

    .line 1456
    check-cast v3, Ljava/lang/String;

    .line 1457
    .line 1458
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v4

    .line 1465
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 1469
    .line 1470
    .line 1471
    move-result v5

    .line 1472
    if-nez v5, :cond_25

    .line 1473
    .line 1474
    const/4 v7, 0x0

    .line 1475
    goto :goto_25

    .line 1476
    :cond_25
    new-instance v7, Lkotlin/text/MatcherMatchResult;

    .line 1477
    .line 1478
    invoke-direct {v7, v4, v3}, Lkotlin/text/MatcherMatchResult;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 1479
    .line 1480
    .line 1481
    :goto_25
    if-nez v7, :cond_26

    .line 1482
    .line 1483
    goto :goto_24

    .line 1484
    :cond_26
    invoke-virtual {v7}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v4

    .line 1488
    check-cast v4, Lkotlin/collections/ReversedListReadOnly;

    .line 1489
    .line 1490
    move/from16 v8, v20

    .line 1491
    .line 1492
    invoke-virtual {v4, v8}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v4

    .line 1496
    check-cast v4, Ljava/lang/String;

    .line 1497
    .line 1498
    move-object/from16 v5, v36

    .line 1499
    .line 1500
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1501
    .line 1502
    .line 1503
    move-result v4

    .line 1504
    if-eqz v4, :cond_27

    .line 1505
    .line 1506
    const/4 v4, 0x0

    .line 1507
    invoke-static {v1, v3, v4}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    :cond_27
    move-object/from16 v36, v5

    .line 1511
    .line 1512
    const/16 v20, 0x1

    .line 1513
    .line 1514
    goto :goto_24

    .line 1515
    :cond_28
    const/4 v4, 0x0

    .line 1516
    goto :goto_28

    .line 1517
    :goto_26
    move-object v1, v0

    .line 1518
    goto :goto_27

    .line 1519
    :catchall_0
    move-exception v0

    .line 1520
    goto :goto_26

    .line 1521
    :goto_27
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1522
    :catchall_1
    move-exception v0

    .line 1523
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1524
    .line 1525
    .line 1526
    throw v0

    .line 1527
    :cond_29
    move-object v4, v2

    .line 1528
    move-object/from16 v19, v11

    .line 1529
    .line 1530
    move-object/from16 v21, v12

    .line 1531
    .line 1532
    move-object/from16 v23, v14

    .line 1533
    .line 1534
    move-object/from16 v37, v27

    .line 1535
    .line 1536
    move-object/from16 v12, v29

    .line 1537
    .line 1538
    const/4 v14, 0x2

    .line 1539
    const/16 v18, 0x0

    .line 1540
    .line 1541
    :goto_28
    const/16 v0, 0xb

    .line 1542
    .line 1543
    if-ge v10, v0, :cond_30

    .line 1544
    .line 1545
    const-string v0, "fontSizeMessageViewContentPercent"

    .line 1546
    .line 1547
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v2

    .line 1551
    if-eqz v2, :cond_2a

    .line 1552
    .line 1553
    goto :goto_2c

    .line 1554
    :cond_2a
    const-string v2, "fontSizeMessageViewContent"

    .line 1555
    .line 1556
    invoke-static {v1, v2}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v3

    .line 1560
    if-eqz v3, :cond_2b

    .line 1561
    .line 1562
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v3

    .line 1566
    if-eqz v3, :cond_2b

    .line 1567
    .line 1568
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1569
    .line 1570
    .line 1571
    move-result v3

    .line 1572
    :goto_29
    const/4 v8, 0x1

    .line 1573
    goto :goto_2a

    .line 1574
    :cond_2b
    const/4 v3, 0x3

    .line 1575
    goto :goto_29

    .line 1576
    :goto_2a
    if-eq v3, v8, :cond_2f

    .line 1577
    .line 1578
    if-eq v3, v14, :cond_2e

    .line 1579
    .line 1580
    const/4 v5, 0x4

    .line 1581
    if-eq v3, v5, :cond_2d

    .line 1582
    .line 1583
    const/4 v5, 0x5

    .line 1584
    if-eq v3, v5, :cond_2c

    .line 1585
    .line 1586
    const/16 v3, 0x64

    .line 1587
    .line 1588
    goto :goto_2b

    .line 1589
    :cond_2c
    const/16 v3, 0xfa

    .line 1590
    .line 1591
    goto :goto_2b

    .line 1592
    :cond_2d
    const/16 v3, 0xaf

    .line 1593
    .line 1594
    goto :goto_2b

    .line 1595
    :cond_2e
    const/16 v3, 0x4b

    .line 1596
    .line 1597
    goto :goto_2b

    .line 1598
    :cond_2f
    const/16 v3, 0x28

    .line 1599
    .line 1600
    :goto_2b
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v3

    .line 1604
    invoke-static {v1, v0, v3}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    .line 1606
    .line 1607
    invoke-static {v1, v2, v4}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    .line 1609
    .line 1610
    :cond_30
    :goto_2c
    const/16 v0, 0xc

    .line 1611
    .line 1612
    const-string v2, ".incomingServerSettings"

    .line 1613
    .line 1614
    const/16 v3, 0x9

    .line 1615
    .line 1616
    if-ge v10, v0, :cond_5b

    .line 1617
    .line 1618
    new-instance v0, Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 1619
    .line 1620
    invoke-direct {v0, v3}, Lcom/squareup/moshi/StandardJsonAdapters$2;-><init>(I)V

    .line 1621
    .line 1622
    .line 1623
    invoke-static {v1, v12}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v5

    .line 1627
    if-eqz v5, :cond_5b

    .line 1628
    .line 1629
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1630
    .line 1631
    .line 1632
    move-result v6

    .line 1633
    if-nez v6, :cond_31

    .line 1634
    .line 1635
    goto/16 :goto_47

    .line 1636
    .line 1637
    :cond_31
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v6

    .line 1641
    const/4 v7, 0x6

    .line 1642
    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v5

    .line 1646
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v5

    .line 1650
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1651
    .line 1652
    .line 1653
    move-result v6

    .line 1654
    if-eqz v6, :cond_5b

    .line 1655
    .line 1656
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v6

    .line 1660
    check-cast v6, Ljava/lang/String;

    .line 1661
    .line 1662
    invoke-static {v1, v6, v15}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v7

    .line 1666
    sget-object v8, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    .line 1667
    .line 1668
    sget-object v9, Lcom/fsck/k9/mail/ConnectionSecurity;->SSL_TLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 1669
    .line 1670
    sget-object v11, Lcom/fsck/k9/mail/ConnectionSecurity;->STARTTLS_REQUIRED:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 1671
    .line 1672
    sget-object v24, Lcom/fsck/k9/mail/ConnectionSecurity;->NONE:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 1673
    .line 1674
    sget-object v26, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    .line 1675
    .line 1676
    const-string v27, "Unsupported account type"

    .line 1677
    .line 1678
    const-string v3, "Unsupported protocol ("

    .line 1679
    .line 1680
    const-string v4, ")"

    .line 1681
    .line 1682
    if-eqz v7, :cond_32

    .line 1683
    .line 1684
    invoke-static {v7}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v7

    .line 1688
    if-nez v7, :cond_33

    .line 1689
    .line 1690
    :cond_32
    move-object/from16 v32, v5

    .line 1691
    .line 1692
    move-object/from16 v33, v11

    .line 1693
    .line 1694
    move-object/from16 v5, v23

    .line 1695
    .line 1696
    move-object/from16 v23, v9

    .line 1697
    .line 1698
    move-object/from16 v9, v19

    .line 1699
    .line 1700
    goto/16 :goto_3e

    .line 1701
    .line 1702
    :cond_33
    move/from16 v14, v18

    .line 1703
    .line 1704
    invoke-static {v7, v13, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1705
    .line 1706
    .line 1707
    move-result v32

    .line 1708
    if-eqz v32, :cond_42

    .line 1709
    .line 1710
    :try_start_7
    new-instance v14, Ljava/net/URI;

    .line 1711
    .line 1712
    invoke-direct {v14, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v14}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v7

    .line 1719
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1720
    .line 1721
    .line 1722
    move-result v32

    .line 1723
    const/16 v33, 0x8f

    .line 1724
    .line 1725
    if-eqz v32, :cond_34

    .line 1726
    .line 1727
    move-object/from16 v32, v5

    .line 1728
    .line 1729
    move-object/from16 v42, v24

    .line 1730
    .line 1731
    goto :goto_2e

    .line 1732
    :cond_34
    move-object/from16 v32, v5

    .line 1733
    .line 1734
    const-string v5, "imap+tls"

    .line 1735
    .line 1736
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1737
    .line 1738
    .line 1739
    move-result v5

    .line 1740
    if-eqz v5, :cond_35

    .line 1741
    .line 1742
    move-object/from16 v42, v11

    .line 1743
    .line 1744
    goto :goto_2e

    .line 1745
    :cond_35
    const-string v5, "imap+ssl"

    .line 1746
    .line 1747
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1748
    .line 1749
    .line 1750
    move-result v5

    .line 1751
    if-eqz v5, :cond_41

    .line 1752
    .line 1753
    const/16 v33, 0x3e1

    .line 1754
    .line 1755
    move-object/from16 v42, v9

    .line 1756
    .line 1757
    :goto_2e
    invoke-virtual {v14}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v40

    .line 1761
    invoke-virtual {v14}, Ljava/net/URI;->getPort()I

    .line 1762
    .line 1763
    .line 1764
    move-result v5

    .line 1765
    const/4 v7, -0x1

    .line 1766
    if-eq v5, v7, :cond_36

    .line 1767
    .line 1768
    invoke-virtual {v14}, Ljava/net/URI;->getPort()I

    .line 1769
    .line 1770
    .line 1771
    move-result v33

    .line 1772
    :cond_36
    move/from16 v41, v33

    .line 1773
    .line 1774
    invoke-virtual {v14}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v5

    .line 1778
    if-eqz v5, :cond_3b

    .line 1779
    .line 1780
    invoke-virtual {v14}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v5

    .line 1784
    move-object/from16 v7, v23

    .line 1785
    .line 1786
    move-object/from16 v23, v9

    .line 1787
    .line 1788
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v9

    .line 1792
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1793
    .line 1794
    .line 1795
    move-result v5

    .line 1796
    if-eqz v5, :cond_38

    .line 1797
    .line 1798
    array-length v5, v9

    .line 1799
    move-object/from16 v33, v7

    .line 1800
    .line 1801
    const/4 v7, 0x1

    .line 1802
    if-le v5, v7, :cond_37

    .line 1803
    .line 1804
    const/16 v18, 0x0

    .line 1805
    .line 1806
    aget-object v5, v9, v18

    .line 1807
    .line 1808
    invoke-static {v5}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v5

    .line 1812
    aget-object v9, v9, v7

    .line 1813
    .line 1814
    invoke-static {v9}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 1815
    .line 1816
    .line 1817
    move-result-object v9

    .line 1818
    move-object/from16 v43, v5

    .line 1819
    .line 1820
    move-object/from16 v44, v9

    .line 1821
    .line 1822
    :goto_2f
    const/16 v45, 0x0

    .line 1823
    .line 1824
    :goto_30
    const/16 v46, 0x0

    .line 1825
    .line 1826
    goto/16 :goto_32

    .line 1827
    .line 1828
    :cond_37
    const/16 v18, 0x0

    .line 1829
    .line 1830
    aget-object v5, v9, v18

    .line 1831
    .line 1832
    invoke-static {v5}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v9

    .line 1836
    move-object/from16 v44, v9

    .line 1837
    .line 1838
    :goto_31
    move-object/from16 v43, v26

    .line 1839
    .line 1840
    goto :goto_2f

    .line 1841
    :cond_38
    move-object/from16 v33, v7

    .line 1842
    .line 1843
    const/4 v7, 0x1

    .line 1844
    const/16 v18, 0x0

    .line 1845
    .line 1846
    array-length v5, v9

    .line 1847
    move/from16 v20, v7

    .line 1848
    .line 1849
    const/4 v7, 0x2

    .line 1850
    if-ne v5, v7, :cond_39

    .line 1851
    .line 1852
    aget-object v5, v9, v18

    .line 1853
    .line 1854
    invoke-static {v5}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v5

    .line 1858
    aget-object v7, v9, v20

    .line 1859
    .line 1860
    invoke-static {v7}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 1861
    .line 1862
    .line 1863
    move-result-object v7

    .line 1864
    move-object/from16 v44, v5

    .line 1865
    .line 1866
    move-object/from16 v45, v7

    .line 1867
    .line 1868
    move-object/from16 v43, v26

    .line 1869
    .line 1870
    goto :goto_30

    .line 1871
    :cond_39
    array-length v5, v9

    .line 1872
    const/4 v7, 0x3

    .line 1873
    if-ne v5, v7, :cond_3c

    .line 1874
    .line 1875
    aget-object v5, v9, v18

    .line 1876
    .line 1877
    invoke-static {v5}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v5

    .line 1881
    aget-object v7, v9, v20

    .line 1882
    .line 1883
    invoke-static {v7}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v7

    .line 1887
    if-ne v8, v5, :cond_3a

    .line 1888
    .line 1889
    const/16 v31, 0x2

    .line 1890
    .line 1891
    aget-object v9, v9, v31

    .line 1892
    .line 1893
    invoke-static {v9}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v9

    .line 1897
    move-object/from16 v43, v5

    .line 1898
    .line 1899
    move-object/from16 v44, v7

    .line 1900
    .line 1901
    move-object/from16 v46, v9

    .line 1902
    .line 1903
    const/16 v45, 0x0

    .line 1904
    .line 1905
    goto :goto_32

    .line 1906
    :cond_3a
    const/16 v31, 0x2

    .line 1907
    .line 1908
    aget-object v9, v9, v31

    .line 1909
    .line 1910
    invoke-static {v9}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v9

    .line 1914
    move-object/from16 v43, v5

    .line 1915
    .line 1916
    move-object/from16 v44, v7

    .line 1917
    .line 1918
    move-object/from16 v45, v9

    .line 1919
    .line 1920
    goto :goto_30

    .line 1921
    :cond_3b
    move-object/from16 v33, v23

    .line 1922
    .line 1923
    move-object/from16 v23, v9

    .line 1924
    .line 1925
    :cond_3c
    move-object/from16 v44, v16

    .line 1926
    .line 1927
    goto :goto_31

    .line 1928
    :goto_32
    invoke-virtual {v14}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v5

    .line 1932
    if-eqz v5, :cond_40

    .line 1933
    .line 1934
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1935
    .line 1936
    .line 1937
    move-result v7

    .line 1938
    const/4 v9, 0x1

    .line 1939
    if-le v7, v9, :cond_40

    .line 1940
    .line 1941
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v7

    .line 1945
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1946
    .line 1947
    .line 1948
    move-result v5

    .line 1949
    const/4 v14, 0x2

    .line 1950
    if-lt v5, v14, :cond_3f

    .line 1951
    .line 1952
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    .line 1953
    .line 1954
    .line 1955
    move-result v5

    .line 1956
    const/16 v9, 0x7c

    .line 1957
    .line 1958
    if-ne v5, v9, :cond_3f

    .line 1959
    .line 1960
    const/4 v5, 0x0

    .line 1961
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    .line 1962
    .line 1963
    .line 1964
    move-result v9

    .line 1965
    const/16 v5, 0x31

    .line 1966
    .line 1967
    if-ne v9, v5, :cond_3d

    .line 1968
    .line 1969
    const/4 v5, 0x1

    .line 1970
    goto :goto_33

    .line 1971
    :cond_3d
    const/4 v5, 0x0

    .line 1972
    :goto_33
    if-nez v5, :cond_3e

    .line 1973
    .line 1974
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v7

    .line 1978
    goto :goto_35

    .line 1979
    :cond_3e
    :goto_34
    const/4 v7, 0x0

    .line 1980
    goto :goto_35

    .line 1981
    :cond_3f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 1982
    .line 1983
    .line 1984
    move-result v5

    .line 1985
    if-lez v5, :cond_40

    .line 1986
    .line 1987
    const/4 v5, 0x0

    .line 1988
    goto :goto_35

    .line 1989
    :cond_40
    const/4 v5, 0x1

    .line 1990
    goto :goto_34

    .line 1991
    :goto_35
    new-instance v9, Ljava/util/HashMap;

    .line 1992
    .line 1993
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1994
    .line 1995
    .line 1996
    const-string v14, "autoDetectNamespace"

    .line 1997
    .line 1998
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v5

    .line 2002
    invoke-virtual {v9, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    .line 2004
    .line 2005
    const-string v5, "pathPrefix"

    .line 2006
    .line 2007
    invoke-virtual {v9, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    new-instance v38, Lcom/fsck/k9/mail/ServerSettings;

    .line 2011
    .line 2012
    const-string v39, "imap"

    .line 2013
    .line 2014
    move-object/from16 v47, v9

    .line 2015
    .line 2016
    invoke-direct/range {v38 .. v47}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2017
    .line 2018
    .line 2019
    move-object/from16 v9, v19

    .line 2020
    .line 2021
    move-object/from16 v5, v33

    .line 2022
    .line 2023
    move-object/from16 v7, v38

    .line 2024
    .line 2025
    move-object/from16 v33, v11

    .line 2026
    .line 2027
    goto/16 :goto_3d

    .line 2028
    .line 2029
    :cond_41
    invoke-static {v3, v7, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v0

    .line 2033
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 2034
    .line 2035
    .line 2036
    return-void

    .line 2037
    :catch_5
    move-exception v0

    .line 2038
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2039
    .line 2040
    const-string v2, "Invalid ImapStore URI"

    .line 2041
    .line 2042
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2043
    .line 2044
    .line 2045
    throw v1

    .line 2046
    :cond_42
    move-object/from16 v32, v5

    .line 2047
    .line 2048
    move-object/from16 v5, v23

    .line 2049
    .line 2050
    const/4 v14, 0x0

    .line 2051
    move-object/from16 v23, v9

    .line 2052
    .line 2053
    move-object/from16 v9, v21

    .line 2054
    .line 2055
    invoke-static {v7, v9, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2056
    .line 2057
    .line 2058
    move-result v21

    .line 2059
    if-eqz v21, :cond_4c

    .line 2060
    .line 2061
    :try_start_8
    new-instance v14, Ljava/net/URI;

    .line 2062
    .line 2063
    invoke-direct {v14, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_6

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v14}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v7

    .line 2070
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2071
    .line 2072
    .line 2073
    move-result v21

    .line 2074
    const/16 v33, 0x6e

    .line 2075
    .line 2076
    if-eqz v21, :cond_43

    .line 2077
    .line 2078
    move-object/from16 v21, v9

    .line 2079
    .line 2080
    move-object/from16 v42, v24

    .line 2081
    .line 2082
    goto :goto_36

    .line 2083
    :cond_43
    move-object/from16 v21, v9

    .line 2084
    .line 2085
    const-string v9, "pop3+tls"

    .line 2086
    .line 2087
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2088
    .line 2089
    .line 2090
    move-result v9

    .line 2091
    if-eqz v9, :cond_44

    .line 2092
    .line 2093
    move-object/from16 v42, v11

    .line 2094
    .line 2095
    goto :goto_36

    .line 2096
    :cond_44
    const-string v9, "pop3+ssl"

    .line 2097
    .line 2098
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2099
    .line 2100
    .line 2101
    move-result v9

    .line 2102
    if-eqz v9, :cond_4b

    .line 2103
    .line 2104
    const/16 v33, 0x3e3

    .line 2105
    .line 2106
    move-object/from16 v42, v23

    .line 2107
    .line 2108
    :goto_36
    invoke-virtual {v14}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v40

    .line 2112
    invoke-virtual {v14}, Ljava/net/URI;->getPort()I

    .line 2113
    .line 2114
    .line 2115
    move-result v7

    .line 2116
    const/4 v9, -0x1

    .line 2117
    if-eq v7, v9, :cond_45

    .line 2118
    .line 2119
    invoke-virtual {v14}, Ljava/net/URI;->getPort()I

    .line 2120
    .line 2121
    .line 2122
    move-result v33

    .line 2123
    :cond_45
    move/from16 v41, v33

    .line 2124
    .line 2125
    invoke-virtual {v14}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v7

    .line 2129
    if-eqz v7, :cond_4a

    .line 2130
    .line 2131
    invoke-virtual {v14}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v7

    .line 2135
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v9

    .line 2139
    array-length v14, v9

    .line 2140
    move-object/from16 v33, v11

    .line 2141
    .line 2142
    const/4 v11, 0x2

    .line 2143
    if-gt v14, v11, :cond_46

    .line 2144
    .line 2145
    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2146
    .line 2147
    .line 2148
    move-result v7

    .line 2149
    if-eqz v7, :cond_47

    .line 2150
    .line 2151
    :cond_46
    const/16 v18, 0x0

    .line 2152
    .line 2153
    goto :goto_37

    .line 2154
    :cond_47
    move-object/from16 v14, v26

    .line 2155
    .line 2156
    const/4 v7, 0x0

    .line 2157
    const/4 v11, 0x1

    .line 2158
    goto :goto_38

    .line 2159
    :goto_37
    aget-object v7, v9, v18

    .line 2160
    .line 2161
    invoke-static {v7}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v7

    .line 2165
    move-object v14, v7

    .line 2166
    const/4 v7, 0x1

    .line 2167
    const/4 v11, 0x2

    .line 2168
    :goto_38
    aget-object v7, v9, v7

    .line 2169
    .line 2170
    invoke-static {v7}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v7

    .line 2174
    move-object/from16 v35, v7

    .line 2175
    .line 2176
    array-length v7, v9

    .line 2177
    if-le v7, v11, :cond_49

    .line 2178
    .line 2179
    if-ne v14, v8, :cond_48

    .line 2180
    .line 2181
    aget-object v7, v9, v11

    .line 2182
    .line 2183
    invoke-static {v7}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v7

    .line 2187
    move-object/from16 v46, v7

    .line 2188
    .line 2189
    move-object/from16 v43, v14

    .line 2190
    .line 2191
    move-object/from16 v44, v35

    .line 2192
    .line 2193
    const/16 v45, 0x0

    .line 2194
    .line 2195
    goto :goto_3b

    .line 2196
    :cond_48
    aget-object v7, v9, v11

    .line 2197
    .line 2198
    invoke-static {v7}, Landroidx/compose/ui/unit/IntRectKt;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v7

    .line 2202
    move-object/from16 v45, v7

    .line 2203
    .line 2204
    move-object/from16 v43, v14

    .line 2205
    .line 2206
    move-object/from16 v44, v35

    .line 2207
    .line 2208
    :goto_39
    const/16 v46, 0x0

    .line 2209
    .line 2210
    goto :goto_3b

    .line 2211
    :cond_49
    move-object/from16 v43, v14

    .line 2212
    .line 2213
    move-object/from16 v44, v35

    .line 2214
    .line 2215
    :goto_3a
    const/16 v45, 0x0

    .line 2216
    .line 2217
    goto :goto_39

    .line 2218
    :cond_4a
    move-object/from16 v33, v11

    .line 2219
    .line 2220
    move-object/from16 v44, v16

    .line 2221
    .line 2222
    move-object/from16 v43, v26

    .line 2223
    .line 2224
    goto :goto_3a

    .line 2225
    :goto_3b
    new-instance v38, Lcom/fsck/k9/mail/ServerSettings;

    .line 2226
    .line 2227
    const-string v39, "pop3"

    .line 2228
    .line 2229
    invoke-direct/range {v38 .. v46}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    .line 2231
    .line 2232
    move-object/from16 v9, v19

    .line 2233
    .line 2234
    :goto_3c
    move-object/from16 v7, v38

    .line 2235
    .line 2236
    goto :goto_3d

    .line 2237
    :cond_4b
    invoke-static {v3, v7, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2238
    .line 2239
    .line 2240
    move-result-object v0

    .line 2241
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 2242
    .line 2243
    .line 2244
    return-void

    .line 2245
    :catch_6
    move-exception v0

    .line 2246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2247
    .line 2248
    const-string v2, "Invalid Pop3Store URI"

    .line 2249
    .line 2250
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2251
    .line 2252
    .line 2253
    throw v1

    .line 2254
    :cond_4c
    move-object/from16 v21, v9

    .line 2255
    .line 2256
    move-object/from16 v33, v11

    .line 2257
    .line 2258
    move-object/from16 v9, v19

    .line 2259
    .line 2260
    const/4 v14, 0x0

    .line 2261
    invoke-static {v7, v9, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2262
    .line 2263
    .line 2264
    move-result v11

    .line 2265
    if-eqz v11, :cond_4d

    .line 2266
    .line 2267
    invoke-static {v7}, Landroidx/room/util/RelationUtil;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v38

    .line 2271
    goto :goto_3c

    .line 2272
    :goto_3d
    invoke-virtual {v0, v7}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v7

    .line 2276
    new-instance v11, Ljava/lang/StringBuilder;

    .line 2277
    .line 2278
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2279
    .line 2280
    .line 2281
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    .line 2283
    .line 2284
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    .line 2286
    .line 2287
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v11

    .line 2291
    invoke-static {v1, v11, v7}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    .line 2293
    .line 2294
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2295
    .line 2296
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2297
    .line 2298
    .line 2299
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    .line 2301
    .line 2302
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2303
    .line 2304
    .line 2305
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v7

    .line 2309
    const/4 v11, 0x0

    .line 2310
    invoke-static {v1, v7, v11}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    .line 2312
    .line 2313
    :goto_3e
    move-object/from16 v7, v37

    .line 2314
    .line 2315
    goto :goto_3f

    .line 2316
    :cond_4d
    invoke-static/range {v27 .. v27}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2317
    .line 2318
    .line 2319
    return-void

    .line 2320
    :goto_3f
    invoke-static {v1, v6, v7}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2321
    .line 2322
    .line 2323
    move-result-object v11

    .line 2324
    if-eqz v11, :cond_4e

    .line 2325
    .line 2326
    invoke-static {v11}, Lcom/fsck/k9/mail/filter/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v11

    .line 2330
    if-nez v11, :cond_4f

    .line 2331
    .line 2332
    :cond_4e
    move-object/from16 v19, v15

    .line 2333
    .line 2334
    const/4 v4, 0x0

    .line 2335
    const/4 v14, 0x3

    .line 2336
    const/4 v15, 0x2

    .line 2337
    goto/16 :goto_46

    .line 2338
    .line 2339
    :cond_4f
    const-string v14, "smtp"

    .line 2340
    .line 2341
    move-object/from16 v19, v15

    .line 2342
    .line 2343
    const/4 v15, 0x0

    .line 2344
    invoke-static {v11, v14, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2345
    .line 2346
    .line 2347
    move-result v35

    .line 2348
    if-eqz v35, :cond_59

    .line 2349
    .line 2350
    :try_start_9
    new-instance v15, Ljava/net/URI;

    .line 2351
    .line 2352
    invoke-direct {v15, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_7

    .line 2353
    .line 2354
    .line 2355
    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v11

    .line 2359
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2360
    .line 2361
    .line 2362
    move-result v14

    .line 2363
    const/16 v27, 0x24b

    .line 2364
    .line 2365
    if-eqz v14, :cond_50

    .line 2366
    .line 2367
    move-object/from16 v41, v24

    .line 2368
    .line 2369
    goto :goto_40

    .line 2370
    :cond_50
    const-string v14, "smtp+tls"

    .line 2371
    .line 2372
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2373
    .line 2374
    .line 2375
    move-result v14

    .line 2376
    if-eqz v14, :cond_51

    .line 2377
    .line 2378
    move-object/from16 v41, v33

    .line 2379
    .line 2380
    goto :goto_40

    .line 2381
    :cond_51
    const-string v14, "smtp+ssl"

    .line 2382
    .line 2383
    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2384
    .line 2385
    .line 2386
    move-result v14

    .line 2387
    if-eqz v14, :cond_58

    .line 2388
    .line 2389
    const/16 v27, 0x1d1

    .line 2390
    .line 2391
    move-object/from16 v41, v23

    .line 2392
    .line 2393
    :goto_40
    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 2394
    .line 2395
    .line 2396
    move-result-object v39

    .line 2397
    invoke-virtual {v15}, Ljava/net/URI;->getPort()I

    .line 2398
    .line 2399
    .line 2400
    move-result v3

    .line 2401
    const/4 v14, -0x1

    .line 2402
    if-eq v3, v14, :cond_52

    .line 2403
    .line 2404
    invoke-virtual {v15}, Ljava/net/URI;->getPort()I

    .line 2405
    .line 2406
    .line 2407
    move-result v27

    .line 2408
    :cond_52
    move/from16 v40, v27

    .line 2409
    .line 2410
    invoke-virtual {v15}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 2411
    .line 2412
    .line 2413
    move-result-object v3

    .line 2414
    if-eqz v3, :cond_56

    .line 2415
    .line 2416
    invoke-virtual {v15}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v3

    .line 2420
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v3

    .line 2424
    array-length v4, v3

    .line 2425
    const/4 v11, 0x1

    .line 2426
    if-ne v4, v11, :cond_53

    .line 2427
    .line 2428
    const/16 v18, 0x0

    .line 2429
    .line 2430
    aget-object v3, v3, v18

    .line 2431
    .line 2432
    invoke-static {v3}, Landroidx/core/util/DebugUtils;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v3

    .line 2436
    move-object/from16 v43, v3

    .line 2437
    .line 2438
    move-object/from16 v42, v26

    .line 2439
    .line 2440
    const/4 v14, 0x3

    .line 2441
    const/4 v15, 0x2

    .line 2442
    :goto_41
    const/16 v44, 0x0

    .line 2443
    .line 2444
    :goto_42
    const/16 v45, 0x0

    .line 2445
    .line 2446
    goto :goto_43

    .line 2447
    :cond_53
    const/16 v18, 0x0

    .line 2448
    .line 2449
    array-length v4, v3

    .line 2450
    const/4 v15, 0x2

    .line 2451
    if-ne v4, v15, :cond_54

    .line 2452
    .line 2453
    aget-object v4, v3, v18

    .line 2454
    .line 2455
    invoke-static {v4}, Landroidx/core/util/DebugUtils;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2456
    .line 2457
    .line 2458
    move-result-object v4

    .line 2459
    aget-object v3, v3, v11

    .line 2460
    .line 2461
    invoke-static {v3}, Landroidx/core/util/DebugUtils;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2462
    .line 2463
    .line 2464
    move-result-object v3

    .line 2465
    move-object/from16 v44, v3

    .line 2466
    .line 2467
    move-object/from16 v43, v4

    .line 2468
    .line 2469
    move-object/from16 v42, v26

    .line 2470
    .line 2471
    const/4 v14, 0x3

    .line 2472
    goto :goto_42

    .line 2473
    :cond_54
    array-length v4, v3

    .line 2474
    const/4 v14, 0x3

    .line 2475
    if-ne v4, v14, :cond_57

    .line 2476
    .line 2477
    aget-object v4, v3, v15

    .line 2478
    .line 2479
    invoke-static {v4}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v4

    .line 2483
    aget-object v17, v3, v18

    .line 2484
    .line 2485
    invoke-static/range {v17 .. v17}, Landroidx/core/util/DebugUtils;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v17

    .line 2489
    if-ne v4, v8, :cond_55

    .line 2490
    .line 2491
    aget-object v3, v3, v11

    .line 2492
    .line 2493
    invoke-static {v3}, Landroidx/core/util/DebugUtils;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2494
    .line 2495
    .line 2496
    move-result-object v3

    .line 2497
    move-object/from16 v45, v3

    .line 2498
    .line 2499
    move-object/from16 v42, v4

    .line 2500
    .line 2501
    move-object/from16 v43, v17

    .line 2502
    .line 2503
    const/16 v44, 0x0

    .line 2504
    .line 2505
    goto :goto_43

    .line 2506
    :cond_55
    aget-object v3, v3, v11

    .line 2507
    .line 2508
    invoke-static {v3}, Landroidx/core/util/DebugUtils;->decodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    .line 2509
    .line 2510
    .line 2511
    move-result-object v3

    .line 2512
    move-object/from16 v44, v3

    .line 2513
    .line 2514
    move-object/from16 v42, v4

    .line 2515
    .line 2516
    move-object/from16 v43, v17

    .line 2517
    .line 2518
    goto :goto_42

    .line 2519
    :cond_56
    const/4 v14, 0x3

    .line 2520
    const/4 v15, 0x2

    .line 2521
    :cond_57
    move-object/from16 v43, v16

    .line 2522
    .line 2523
    move-object/from16 v42, v26

    .line 2524
    .line 2525
    goto :goto_41

    .line 2526
    :goto_43
    new-instance v37, Lcom/fsck/k9/mail/ServerSettings;

    .line 2527
    .line 2528
    const-string v38, "smtp"

    .line 2529
    .line 2530
    invoke-direct/range {v37 .. v45}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    .line 2532
    .line 2533
    const/4 v4, 0x0

    .line 2534
    :goto_44
    move-object/from16 v3, v37

    .line 2535
    .line 2536
    goto :goto_45

    .line 2537
    :cond_58
    invoke-static {v3, v11, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v0

    .line 2541
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 2542
    .line 2543
    .line 2544
    return-void

    .line 2545
    :catch_7
    move-exception v0

    .line 2546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 2547
    .line 2548
    const-string v2, "Invalid SmtpTransport URI"

    .line 2549
    .line 2550
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2551
    .line 2552
    .line 2553
    throw v1

    .line 2554
    :cond_59
    const/4 v4, 0x0

    .line 2555
    const/4 v14, 0x3

    .line 2556
    const/4 v15, 0x2

    .line 2557
    invoke-static {v11, v9, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2558
    .line 2559
    .line 2560
    move-result v3

    .line 2561
    if-eqz v3, :cond_5a

    .line 2562
    .line 2563
    invoke-static {v11}, Landroidx/room/util/RelationUtil;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v37

    .line 2567
    goto :goto_44

    .line 2568
    :goto_45
    invoke-virtual {v0, v3}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 2569
    .line 2570
    .line 2571
    move-result-object v3

    .line 2572
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2573
    .line 2574
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2575
    .line 2576
    .line 2577
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    .line 2579
    .line 2580
    const-string v11, ".outgoingServerSettings"

    .line 2581
    .line 2582
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    .line 2584
    .line 2585
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v8

    .line 2589
    invoke-static {v1, v8, v3}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    .line 2591
    .line 2592
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2593
    .line 2594
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2595
    .line 2596
    .line 2597
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    .line 2599
    .line 2600
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    .line 2602
    .line 2603
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2604
    .line 2605
    .line 2606
    move-result-object v3

    .line 2607
    const/4 v11, 0x0

    .line 2608
    invoke-static {v1, v3, v11}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    .line 2610
    .line 2611
    goto :goto_46

    .line 2612
    :cond_5a
    invoke-static/range {v27 .. v27}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2613
    .line 2614
    .line 2615
    return-void

    .line 2616
    :goto_46
    move/from16 v18, v4

    .line 2617
    .line 2618
    move-object/from16 v23, v5

    .line 2619
    .line 2620
    move-object/from16 v37, v7

    .line 2621
    .line 2622
    move v14, v15

    .line 2623
    move-object/from16 v15, v19

    .line 2624
    .line 2625
    move-object/from16 v5, v32

    .line 2626
    .line 2627
    const/16 v3, 0x9

    .line 2628
    .line 2629
    const/4 v4, 0x0

    .line 2630
    move-object/from16 v19, v9

    .line 2631
    .line 2632
    goto/16 :goto_2d

    .line 2633
    .line 2634
    :cond_5b
    :goto_47
    move/from16 v4, v18

    .line 2635
    .line 2636
    const/16 v0, 0xd

    .line 2637
    .line 2638
    if-ge v10, v0, :cond_5d

    .line 2639
    .line 2640
    const-string v0, "hideSpecialAccounts"

    .line 2641
    .line 2642
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 2643
    .line 2644
    .line 2645
    move-result-object v3

    .line 2646
    if-eqz v3, :cond_5c

    .line 2647
    .line 2648
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2649
    .line 2650
    .line 2651
    move-result v3

    .line 2652
    :goto_48
    const/16 v20, 0x1

    .line 2653
    .line 2654
    goto :goto_49

    .line 2655
    :cond_5c
    move v3, v4

    .line 2656
    goto :goto_48

    .line 2657
    :goto_49
    xor-int/lit8 v3, v3, 0x1

    .line 2658
    .line 2659
    const-string v4, "showUnifiedInbox"

    .line 2660
    .line 2661
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 2662
    .line 2663
    .line 2664
    move-result-object v3

    .line 2665
    invoke-static {v1, v4, v3}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    .line 2667
    .line 2668
    const/4 v11, 0x0

    .line 2669
    invoke-static {v1, v0, v11}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    .line 2671
    .line 2672
    :cond_5d
    const/16 v0, 0xe

    .line 2673
    .line 2674
    if-ge v10, v0, :cond_62

    .line 2675
    .line 2676
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    .line 2677
    .line 2678
    move-object/from16 v9, p1

    .line 2679
    .line 2680
    const/16 v3, 0x9

    .line 2681
    .line 2682
    invoke-direct {v0, v1, v9, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;I)V

    .line 2683
    .line 2684
    .line 2685
    iget-object v3, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 2686
    .line 2687
    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    .line 2688
    .line 2689
    invoke-static {v3, v12}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 2690
    .line 2691
    .line 2692
    move-result-object v4

    .line 2693
    if-eqz v4, :cond_61

    .line 2694
    .line 2695
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 2696
    .line 2697
    .line 2698
    move-result v5

    .line 2699
    if-nez v5, :cond_5e

    .line 2700
    .line 2701
    goto :goto_4b

    .line 2702
    :cond_5e
    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    .line 2703
    .line 2704
    .line 2705
    move-result-object v5

    .line 2706
    const/4 v7, 0x6

    .line 2707
    invoke-static {v4, v5, v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 2708
    .line 2709
    .line 2710
    move-result-object v4

    .line 2711
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2712
    .line 2713
    .line 2714
    move-result-object v4

    .line 2715
    :cond_5f
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2716
    .line 2717
    .line 2718
    move-result v5

    .line 2719
    if-eqz v5, :cond_61

    .line 2720
    .line 2721
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2722
    .line 2723
    .line 2724
    move-result-object v5

    .line 2725
    check-cast v5, Ljava/lang/String;

    .line 2726
    .line 2727
    invoke-static {v3, v5, v2}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2728
    .line 2729
    .line 2730
    move-result-object v6

    .line 2731
    if-nez v6, :cond_60

    .line 2732
    .line 2733
    goto :goto_4a

    .line 2734
    :cond_60
    iget-object v7, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 2735
    .line 2736
    check-cast v7, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 2737
    .line 2738
    invoke-virtual {v7, v6}, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->deserialize(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    .line 2739
    .line 2740
    .line 2741
    move-result-object v6

    .line 2742
    iget-object v6, v6, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 2743
    .line 2744
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2745
    .line 2746
    .line 2747
    move-result v6

    .line 2748
    if-nez v6, :cond_5f

    .line 2749
    .line 2750
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2751
    .line 2752
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2753
    .line 2754
    .line 2755
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    .line 2757
    .line 2758
    const-string v5, ".folderPushMode"

    .line 2759
    .line 2760
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2761
    .line 2762
    .line 2763
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2764
    .line 2765
    .line 2766
    move-result-object v5

    .line 2767
    const-string v6, "NONE"

    .line 2768
    .line 2769
    invoke-static {v3, v5, v6}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    .line 2771
    .line 2772
    goto :goto_4a

    .line 2773
    :cond_61
    :goto_4b
    const/16 v0, 0xf

    .line 2774
    .line 2775
    goto :goto_4c

    .line 2776
    :cond_62
    move-object/from16 v9, p1

    .line 2777
    .line 2778
    goto :goto_4b

    .line 2779
    :goto_4c
    if-ge v10, v0, :cond_63

    .line 2780
    .line 2781
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2782
    .line 2783
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2784
    .line 2785
    .line 2786
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteIdleRefreshInterval()V

    .line 2787
    .line 2788
    .line 2789
    :cond_63
    const/16 v0, 0x10

    .line 2790
    .line 2791
    if-ge v10, v0, :cond_66

    .line 2792
    .line 2793
    const-string v0, "registeredNameColor"

    .line 2794
    .line 2795
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v2

    .line 2799
    if-eqz v2, :cond_64

    .line 2800
    .line 2801
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2802
    .line 2803
    .line 2804
    move-result v2

    .line 2805
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2806
    .line 2807
    .line 2808
    move-result-object v7

    .line 2809
    goto :goto_4d

    .line 2810
    :cond_64
    const/4 v7, 0x0

    .line 2811
    :goto_4d
    if-nez v7, :cond_65

    .line 2812
    .line 2813
    goto :goto_4e

    .line 2814
    :cond_65
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 2815
    .line 2816
    .line 2817
    move-result v2

    .line 2818
    const v3, -0xffff71

    .line 2819
    .line 2820
    .line 2821
    if-ne v2, v3, :cond_66

    .line 2822
    .line 2823
    const-string v2, "-15690763"

    .line 2824
    .line 2825
    invoke-static {v1, v0, v2}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    .line 2827
    .line 2828
    :cond_66
    :goto_4e
    const/16 v0, 0x11

    .line 2829
    .line 2830
    if-ge v10, v0, :cond_67

    .line 2831
    .line 2832
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2833
    .line 2834
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2835
    .line 2836
    .line 2837
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteNotificationLightSettings()V

    .line 2838
    .line 2839
    .line 2840
    :cond_67
    const/16 v0, 0x12

    .line 2841
    .line 2842
    if-ge v10, v0, :cond_68

    .line 2843
    .line 2844
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2845
    .line 2846
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2847
    .line 2848
    .line 2849
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->rewriteImapCompressionSettings()V

    .line 2850
    .line 2851
    .line 2852
    :cond_68
    const/16 v0, 0x13

    .line 2853
    .line 2854
    if-ge v10, v0, :cond_69

    .line 2855
    .line 2856
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2857
    .line 2858
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2859
    .line 2860
    .line 2861
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->markGmailAccounts()V

    .line 2862
    .line 2863
    .line 2864
    :cond_69
    const/16 v0, 0x14

    .line 2865
    .line 2866
    if-ge v10, v0, :cond_6a

    .line 2867
    .line 2868
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2869
    .line 2870
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2871
    .line 2872
    .line 2873
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->fixIdentities()V

    .line 2874
    .line 2875
    .line 2876
    :cond_6a
    const/16 v0, 0x15

    .line 2877
    .line 2878
    if-ge v10, v0, :cond_6d

    .line 2879
    .line 2880
    const-string v0, "messageViewReturnToList"

    .line 2881
    .line 2882
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 2883
    .line 2884
    .line 2885
    move-result-object v2

    .line 2886
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2887
    .line 2888
    .line 2889
    move-result v2

    .line 2890
    const-string v3, "messageViewShowNext"

    .line 2891
    .line 2892
    invoke-static {v1, v3}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 2893
    .line 2894
    .line 2895
    move-result-object v4

    .line 2896
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2897
    .line 2898
    .line 2899
    move-result v4

    .line 2900
    if-eqz v2, :cond_6b

    .line 2901
    .line 2902
    const-string v2, "ReturnToMessageList"

    .line 2903
    .line 2904
    goto :goto_4f

    .line 2905
    :cond_6b
    if-eqz v4, :cond_6c

    .line 2906
    .line 2907
    const-string v2, "ShowNextMessage"

    .line 2908
    .line 2909
    goto :goto_4f

    .line 2910
    :cond_6c
    const-string v2, "ShowPreviousMessage"

    .line 2911
    .line 2912
    :goto_4f
    const-string v4, "messageViewPostDeleteAction"

    .line 2913
    .line 2914
    invoke-static {v1, v4, v2}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    .line 2916
    .line 2917
    const/4 v11, 0x0

    .line 2918
    invoke-static {v1, v0, v11}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    .line 2920
    .line 2921
    invoke-static {v1, v3, v11}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2922
    .line 2923
    .line 2924
    :cond_6d
    const/16 v0, 0x16

    .line 2925
    .line 2926
    if-ge v10, v0, :cond_6e

    .line 2927
    .line 2928
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2929
    .line 2930
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2931
    .line 2932
    .line 2933
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->fixServerSettings()V

    .line 2934
    .line 2935
    .line 2936
    :cond_6e
    const/16 v0, 0x17

    .line 2937
    .line 2938
    if-ge v10, v0, :cond_6f

    .line 2939
    .line 2940
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2941
    .line 2942
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2943
    .line 2944
    .line 2945
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->renameSendClientId()V

    .line 2946
    .line 2947
    .line 2948
    :cond_6f
    const/16 v0, 0x18

    .line 2949
    .line 2950
    if-ge v10, v0, :cond_70

    .line 2951
    .line 2952
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2953
    .line 2954
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2955
    .line 2956
    .line 2957
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->removeLegacyAuthenticationModes()V

    .line 2958
    .line 2959
    .line 2960
    :cond_70
    const/16 v0, 0x19

    .line 2961
    .line 2962
    if-ge v10, v0, :cond_71

    .line 2963
    .line 2964
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2965
    .line 2966
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2967
    .line 2968
    .line 2969
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->convertToAuthTypeNone()V

    .line 2970
    .line 2971
    .line 2972
    :cond_71
    const/16 v0, 0x1a

    .line 2973
    .line 2974
    if-ge v10, v0, :cond_72

    .line 2975
    .line 2976
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    .line 2977
    .line 2978
    const/16 v2, 0xa

    .line 2979
    .line 2980
    invoke-direct {v0, v1, v9, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;I)V

    .line 2981
    .line 2982
    .line 2983
    invoke-virtual {v0}, Lcom/google/zxing/BinaryBitmap;->fixIdentities()V

    .line 2984
    .line 2985
    .line 2986
    :cond_72
    const/16 v0, 0x1b

    .line 2987
    .line 2988
    if-ge v10, v0, :cond_73

    .line 2989
    .line 2990
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2991
    .line 2992
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 2993
    .line 2994
    .line 2995
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->addAvatarMonogram()V

    .line 2996
    .line 2997
    .line 2998
    :cond_73
    const/16 v0, 0x1c

    .line 2999
    .line 3000
    if-ge v10, v0, :cond_74

    .line 3001
    .line 3002
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 3003
    .line 3004
    invoke-direct {v0, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/jcraft/jzlib/Adler32;)V

    .line 3005
    .line 3006
    .line 3007
    invoke-virtual {v0}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->ensureAvatarSet()V

    .line 3008
    .line 3009
    .line 3010
    :cond_74
    const/16 v0, 0x1d

    .line 3011
    .line 3012
    if-ge v10, v0, :cond_75

    .line 3013
    .line 3014
    const-string v0, "account_setup_auto_expand_folder"

    .line 3015
    .line 3016
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 3017
    .line 3018
    .line 3019
    move-result-object v2

    .line 3020
    if-eqz v2, :cond_75

    .line 3021
    .line 3022
    const-string v3, "auto_select_folder"

    .line 3023
    .line 3024
    invoke-static {v1, v3, v2}, Lcom/jcraft/jzlib/Adler32;->insertValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    .line 3026
    .line 3027
    const/4 v11, 0x0

    .line 3028
    invoke-static {v1, v0, v11}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    .line 3030
    .line 3031
    :cond_75
    const/16 v0, 0x1e

    .line 3032
    .line 3033
    if-ge v10, v0, :cond_77

    .line 3034
    .line 3035
    const-string v0, "animations"

    .line 3036
    .line 3037
    invoke-static {v1, v0}, Lcom/jcraft/jzlib/Adler32;->readValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 3038
    .line 3039
    .line 3040
    move-result-object v2

    .line 3041
    const-string v3, "true"

    .line 3042
    .line 3043
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3044
    .line 3045
    .line 3046
    move-result v3

    .line 3047
    if-eqz v3, :cond_76

    .line 3048
    .line 3049
    const-string v2, "ON"

    .line 3050
    .line 3051
    invoke-static {v1, v0, v2}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    .line 3053
    .line 3054
    goto :goto_50

    .line 3055
    :cond_76
    const-string v3, "false"

    .line 3056
    .line 3057
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3058
    .line 3059
    .line 3060
    move-result v2

    .line 3061
    if-eqz v2, :cond_77

    .line 3062
    .line 3063
    const-string v2, "OFF"

    .line 3064
    .line 3065
    invoke-static {v1, v0, v2}, Lcom/jcraft/jzlib/Adler32;->writeValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    .line 3067
    .line 3068
    :cond_77
    :goto_50
    return-void
.end method
