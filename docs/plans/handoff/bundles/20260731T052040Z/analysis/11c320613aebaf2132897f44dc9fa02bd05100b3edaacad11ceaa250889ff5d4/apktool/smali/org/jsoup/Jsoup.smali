.class public abstract Lorg/jsoup/Jsoup;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/Jsoup;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, 0x3145f7ad

    .line 12
    .line 13
    .line 14
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v8, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int/2addr v0, v8

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v8

    .line 33
    :goto_1
    and-int/lit8 v2, p5, 0x2

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    or-int/lit8 v0, v0, 0x30

    .line 38
    .line 39
    :cond_2
    move-object/from16 v3, p1

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    and-int/lit8 v3, v8, 0x30

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    const/16 v4, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v4, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v4

    .line 60
    :goto_3
    and-int/lit16 v4, v8, 0x180

    .line 61
    .line 62
    if-nez v4, :cond_6

    .line 63
    .line 64
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_5

    .line 69
    .line 70
    const/16 v4, 0x100

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    const/16 v4, 0x80

    .line 74
    .line 75
    :goto_4
    or-int/2addr v0, v4

    .line 76
    :cond_6
    move v12, v0

    .line 77
    and-int/lit16 v0, v12, 0x93

    .line 78
    .line 79
    const/16 v4, 0x92

    .line 80
    .line 81
    const/4 v14, 0x0

    .line 82
    if-eq v0, v4, :cond_7

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    goto :goto_5

    .line 86
    :cond_7
    move v0, v14

    .line 87
    :goto_5
    and-int/lit8 v4, v12, 0x1

    .line 88
    .line 89
    invoke-virtual {v9, v4, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_12

    .line 94
    .line 95
    if-eqz v2, :cond_8

    .line 96
    .line 97
    new-instance v0, Landroidx/compose/ui/window/DialogProperties;

    .line 98
    .line 99
    invoke-direct {v0}, Landroidx/compose/ui/window/DialogProperties;-><init>()V

    .line 100
    .line 101
    .line 102
    move-object v2, v0

    .line 103
    goto :goto_6

    .line 104
    :cond_8
    move-object v2, v3

    .line 105
    :goto_6
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 106
    .line 107
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    move-object v3, v0

    .line 112
    check-cast v3, Landroid/view/View;

    .line 113
    .line 114
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 115
    .line 116
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v5, v0

    .line 121
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 122
    .line 123
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 124
    .line 125
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move-object v4, v0

    .line 130
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 131
    .line 132
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->rememberCompositionContext(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    invoke-static {v7, v9}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-array v6, v14, [Ljava/lang/Object;

    .line 141
    .line 142
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 147
    .line 148
    if-ne v11, v10, :cond_9

    .line 149
    .line 150
    sget-object v11, Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;->INSTANCE$1:Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;

    .line 151
    .line 152
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_9
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 156
    .line 157
    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    sget-object v14, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/cardview/widget/CardView$1;

    .line 162
    .line 163
    const/16 v13, 0xd80

    .line 164
    .line 165
    invoke-static {v6, v14, v11, v9, v13}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Ljava/util/UUID;

    .line 170
    .line 171
    iget v11, v2, Landroidx/compose/ui/window/DialogProperties;->windowType:I

    .line 172
    .line 173
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    or-int/2addr v13, v14

    .line 182
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    or-int/2addr v11, v13

    .line 187
    const/4 v13, 0x0

    .line 188
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    or-int/2addr v11, v13

    .line 193
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    if-nez v11, :cond_a

    .line 198
    .line 199
    if-ne v13, v10, :cond_b

    .line 200
    .line 201
    :cond_a
    move-object v11, v0

    .line 202
    goto :goto_7

    .line 203
    :cond_b
    const/4 v11, 0x1

    .line 204
    goto :goto_8

    .line 205
    :goto_7
    new-instance v0, Landroidx/compose/ui/window/DialogWrapper;

    .line 206
    .line 207
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/DialogWrapper;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V

    .line 208
    .line 209
    .line 210
    new-instance v3, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;

    .line 211
    .line 212
    invoke-direct {v3, v11}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 213
    .line 214
    .line 215
    new-instance v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 216
    .line 217
    const v6, -0x4fce98d3

    .line 218
    .line 219
    .line 220
    const/4 v11, 0x1

    .line 221
    invoke-direct {v5, v6, v11, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 222
    .line 223
    .line 224
    iget-object v3, v0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 225
    .line 226
    invoke-virtual {v3, v15}, Landroidx/compose/ui/platform/AbstractComposeView;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 227
    .line 228
    .line 229
    iget-object v6, v3, Landroidx/compose/ui/window/DialogLayout;->content$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 230
    .line 231
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iput-boolean v11, v3, Landroidx/compose/ui/window/DialogLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    .line 235
    .line 236
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AbstractComposeView;->createComposition()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    move-object v13, v0

    .line 243
    :goto_8
    check-cast v13, Landroidx/compose/ui/window/DialogWrapper;

    .line 244
    .line 245
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    if-nez v0, :cond_c

    .line 254
    .line 255
    if-ne v3, v10, :cond_d

    .line 256
    .line 257
    :cond_c
    new-instance v3, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1;

    .line 258
    .line 259
    invoke-direct {v3, v13}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 266
    .line 267
    invoke-static {v13, v3, v9}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    and-int/lit8 v3, v12, 0xe

    .line 275
    .line 276
    const/4 v5, 0x4

    .line 277
    if-ne v3, v5, :cond_e

    .line 278
    .line 279
    move v3, v11

    .line 280
    goto :goto_9

    .line 281
    :cond_e
    const/4 v3, 0x0

    .line 282
    :goto_9
    or-int/2addr v0, v3

    .line 283
    and-int/lit8 v3, v12, 0x70

    .line 284
    .line 285
    const/16 v5, 0x20

    .line 286
    .line 287
    if-ne v3, v5, :cond_f

    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_f
    const/4 v11, 0x0

    .line 291
    :goto_a
    or-int/2addr v0, v11

    .line 292
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    or-int/2addr v0, v3

    .line 301
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    if-nez v0, :cond_10

    .line 306
    .line 307
    if-ne v3, v10, :cond_11

    .line 308
    .line 309
    :cond_10
    new-instance v3, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;

    .line 310
    .line 311
    invoke-direct {v3, v13, v1, v2, v4}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :cond_11
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 318
    .line 319
    invoke-static {v3, v9}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 320
    .line 321
    .line 322
    goto :goto_b

    .line 323
    :cond_12
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 324
    .line 325
    .line 326
    move-object v2, v3

    .line 327
    :goto_b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    if-eqz v6, :cond_13

    .line 332
    .line 333
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;

    .line 334
    .line 335
    move/from16 v5, p5

    .line 336
    .line 337
    move-object v3, v7

    .line 338
    move v4, v8

    .line 339
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;II)V

    .line 340
    .line 341
    .line 342
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 343
    .line 344
    :cond_13
    return-void
.end method

.method public static final NavDisplay(Landroidx/navigation3/scene/SceneState;Landroidx/navigationevent/compose/NavigationEventState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    move/from16 v0, p8

    .line 12
    .line 13
    move-object/from16 v11, p7

    .line 14
    .line 15
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v3, -0x121c2265

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v3, v0, 0x6

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x2

    .line 36
    :goto_0
    or-int/2addr v3, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v3, v0

    .line 39
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    const/16 v4, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v4, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v3, v4

    .line 55
    :cond_3
    and-int/lit16 v4, v0, 0x180

    .line 56
    .line 57
    move-object/from16 v13, p2

    .line 58
    .line 59
    if-nez v4, :cond_5

    .line 60
    .line 61
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    const/16 v4, 0x100

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/16 v4, 0x80

    .line 71
    .line 72
    :goto_3
    or-int/2addr v3, v4

    .line 73
    :cond_5
    and-int/lit16 v4, v0, 0xc00

    .line 74
    .line 75
    move-object/from16 v14, p3

    .line 76
    .line 77
    if-nez v4, :cond_7

    .line 78
    .line 79
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_6

    .line 84
    .line 85
    const/16 v4, 0x800

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    const/16 v4, 0x400

    .line 89
    .line 90
    :goto_4
    or-int/2addr v3, v4

    .line 91
    :cond_7
    and-int/lit16 v4, v0, 0x6000

    .line 92
    .line 93
    const/4 v15, 0x0

    .line 94
    if-nez v4, :cond_9

    .line 95
    .line 96
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_8

    .line 101
    .line 102
    const/16 v4, 0x4000

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_8
    const/16 v4, 0x2000

    .line 106
    .line 107
    :goto_5
    or-int/2addr v3, v4

    .line 108
    :cond_9
    const/high16 v4, 0x30000

    .line 109
    .line 110
    and-int v5, v0, v4

    .line 111
    .line 112
    if-nez v5, :cond_b

    .line 113
    .line 114
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_a

    .line 119
    .line 120
    const/high16 v5, 0x20000

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_a
    const/high16 v5, 0x10000

    .line 124
    .line 125
    :goto_6
    or-int/2addr v3, v5

    .line 126
    :cond_b
    const/high16 v5, 0x180000

    .line 127
    .line 128
    and-int v8, v0, v5

    .line 129
    .line 130
    move/from16 p7, v4

    .line 131
    .line 132
    if-nez v8, :cond_d

    .line 133
    .line 134
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_c

    .line 139
    .line 140
    const/high16 v8, 0x100000

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_c
    const/high16 v8, 0x80000

    .line 144
    .line 145
    :goto_7
    or-int/2addr v3, v8

    .line 146
    :cond_d
    const/high16 v8, 0xc00000

    .line 147
    .line 148
    and-int v16, v0, v8

    .line 149
    .line 150
    move/from16 v17, v5

    .line 151
    .line 152
    if-nez v16, :cond_f

    .line 153
    .line 154
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v16

    .line 158
    if-eqz v16, :cond_e

    .line 159
    .line 160
    const/high16 v16, 0x800000

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_e
    const/high16 v16, 0x400000

    .line 164
    .line 165
    :goto_8
    or-int v3, v3, v16

    .line 166
    .line 167
    :cond_f
    const v16, 0x492493

    .line 168
    .line 169
    .line 170
    move/from16 v18, v8

    .line 171
    .line 172
    and-int v8, v3, v16

    .line 173
    .line 174
    const v12, 0x492492

    .line 175
    .line 176
    .line 177
    if-eq v8, v12, :cond_10

    .line 178
    .line 179
    const/4 v8, 0x1

    .line 180
    goto :goto_9

    .line 181
    :cond_10
    const/4 v8, 0x0

    .line 182
    :goto_9
    and-int/lit8 v12, v3, 0x1

    .line 183
    .line 184
    invoke-virtual {v11, v12, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_5d

    .line 189
    .line 190
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 191
    .line 192
    .line 193
    and-int/lit8 v8, v0, 0x1

    .line 194
    .line 195
    if-eqz v8, :cond_12

    .line 196
    .line 197
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_11

    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_11
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 205
    .line 206
    .line 207
    :cond_12
    :goto_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 208
    .line 209
    .line 210
    iget-object v8, v1, Landroidx/navigation3/scene/SceneState;->currentScene:Landroidx/navigation3/scene/Scene;

    .line 211
    .line 212
    iget-object v12, v1, Landroidx/navigation3/scene/SceneState;->entries:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 219
    .line 220
    if-ne v5, v6, :cond_13

    .line 221
    .line 222
    new-instance v5, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 223
    .line 224
    invoke-direct {v5, v8}, Landroidx/compose/animation/core/SeekableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_13
    check-cast v5, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 231
    .line 232
    const-string v4, "scene"

    .line 233
    .line 234
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v19

    .line 238
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    if-nez v19, :cond_15

    .line 243
    .line 244
    if-ne v15, v6, :cond_14

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_14
    move/from16 v19, v3

    .line 248
    .line 249
    goto :goto_d

    .line 250
    :cond_15
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    if-eqz v15, :cond_16

    .line 255
    .line 256
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    .line 257
    .line 258
    .line 259
    move-result-object v19

    .line 260
    move-object/from16 v34, v19

    .line 261
    .line 262
    move/from16 v19, v3

    .line 263
    .line 264
    move-object/from16 v3, v34

    .line 265
    .line 266
    goto :goto_c

    .line 267
    :cond_16
    move/from16 v19, v3

    .line 268
    .line 269
    const/4 v3, 0x0

    .line 270
    :goto_c
    invoke-static {v15}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    :try_start_0
    new-instance v0, Landroidx/compose/animation/core/Transition;

    .line 275
    .line 276
    const/4 v14, 0x0

    .line 277
    invoke-direct {v0, v5, v14, v4}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/TransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .line 279
    .line 280
    invoke-static {v15, v13, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    move-object v15, v0

    .line 287
    :goto_d
    check-cast v15, Landroidx/compose/animation/core/Transition;

    .line 288
    .line 289
    const/4 v0, 0x6

    .line 290
    if-eqz v5, :cond_1c

    .line 291
    .line 292
    const v3, -0x50eb3019

    .line 293
    .line 294
    .line 295
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-ne v3, v6, :cond_17

    .line 303
    .line 304
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :cond_17
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 312
    .line 313
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v13

    .line 321
    or-int/2addr v4, v13

    .line 322
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v13

    .line 326
    if-nez v4, :cond_18

    .line 327
    .line 328
    if-ne v13, v6, :cond_19

    .line 329
    .line 330
    :cond_18
    new-instance v13, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 331
    .line 332
    invoke-direct {v13, v5, v3, v0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :cond_19
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 339
    .line 340
    invoke-static {v3, v13, v11}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 341
    .line 342
    .line 343
    iget-object v3, v5, Landroidx/compose/animation/core/SeekableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 344
    .line 345
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    iget-object v4, v5, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 350
    .line 351
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v13

    .line 359
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v14

    .line 363
    if-nez v13, :cond_1a

    .line 364
    .line 365
    if-ne v14, v6, :cond_1b

    .line 366
    .line 367
    :cond_1a
    new-instance v14, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;

    .line 368
    .line 369
    const/4 v13, 0x0

    .line 370
    invoke-direct {v14, v5, v13}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;-><init>(Landroidx/compose/animation/core/TransitionState;Lkotlin/coroutines/Continuation;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_1b
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 377
    .line 378
    invoke-static {v3, v4, v14, v11}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 379
    .line 380
    .line 381
    const/4 v3, 0x0

    .line 382
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 383
    .line 384
    .line 385
    goto :goto_e

    .line 386
    :cond_1c
    const/4 v3, 0x0

    .line 387
    const v4, -0x50dc2380

    .line 388
    .line 389
    .line 390
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 391
    .line 392
    .line 393
    iget-object v4, v5, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 394
    .line 395
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-virtual {v15, v4, v11, v3}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 403
    .line 404
    .line 405
    :goto_e
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    if-nez v3, :cond_1d

    .line 414
    .line 415
    if-ne v4, v6, :cond_1e

    .line 416
    .line 417
    :cond_1d
    new-instance v4, Landroidx/compose/animation/core/TransitionKt$$ExternalSyntheticLambda4;

    .line 418
    .line 419
    const/4 v3, 0x1

    .line 420
    invoke-direct {v4, v15, v3}, Landroidx/compose/animation/core/TransitionKt$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/animation/core/Transition;I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :cond_1e
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 427
    .line 428
    invoke-static {v15, v4, v11}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 429
    .line 430
    .line 431
    iget-object v3, v15, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    .line 432
    .line 433
    iget-object v4, v15, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 434
    .line 435
    invoke-virtual {v3}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v13

    .line 439
    check-cast v13, Landroidx/navigation3/scene/Scene;

    .line 440
    .line 441
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v13

    .line 445
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v14

    .line 449
    if-nez v13, :cond_1f

    .line 450
    .line 451
    if-ne v14, v6, :cond_20

    .line 452
    .line 453
    :cond_1f
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 454
    .line 455
    .line 456
    move-result-object v14

    .line 457
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :cond_20
    check-cast v14, Ljava/util/List;

    .line 461
    .line 462
    iget-object v13, v1, Landroidx/navigation3/scene/SceneState;->previousScenes:Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v13

    .line 468
    check-cast v13, Landroidx/navigation3/scene/Scene;

    .line 469
    .line 470
    iget-object v0, v2, Landroidx/navigationevent/compose/NavigationEventState;->transitionState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 471
    .line 472
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    check-cast v0, Landroidx/navigationevent/NavigationEventTransitionState;

    .line 477
    .line 478
    instance-of v2, v0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    .line 479
    .line 480
    if-eqz v2, :cond_21

    .line 481
    .line 482
    if-eqz v13, :cond_21

    .line 483
    .line 484
    move-object/from16 v21, v4

    .line 485
    .line 486
    const/4 v4, 0x1

    .line 487
    :goto_f
    move/from16 v22, v2

    .line 488
    .line 489
    goto :goto_10

    .line 490
    :cond_21
    move-object/from16 v21, v4

    .line 491
    .line 492
    const/4 v4, 0x0

    .line 493
    goto :goto_f

    .line 494
    :goto_10
    instance-of v2, v0, Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    .line 495
    .line 496
    move-object/from16 v23, v0

    .line 497
    .line 498
    if-eqz v2, :cond_22

    .line 499
    .line 500
    const/4 v0, 0x0

    .line 501
    goto :goto_11

    .line 502
    :cond_22
    if-eqz v22, :cond_5c

    .line 503
    .line 504
    move-object/from16 v0, v23

    .line 505
    .line 506
    check-cast v0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    .line 507
    .line 508
    iget-object v0, v0, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->latestEvent:Landroidx/navigationevent/NavigationEvent;

    .line 509
    .line 510
    iget v0, v0, Landroidx/navigationevent/NavigationEvent;->progress:F

    .line 511
    .line 512
    :goto_11
    if-eqz v2, :cond_23

    .line 513
    .line 514
    const/4 v2, 0x2

    .line 515
    :goto_12
    move-object/from16 v22, v3

    .line 516
    .line 517
    goto :goto_13

    .line 518
    :cond_23
    if-eqz v22, :cond_5b

    .line 519
    .line 520
    move-object/from16 v2, v23

    .line 521
    .line 522
    check-cast v2, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    .line 523
    .line 524
    iget-object v2, v2, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->latestEvent:Landroidx/navigationevent/NavigationEvent;

    .line 525
    .line 526
    iget v2, v2, Landroidx/navigationevent/NavigationEvent;->swipeEdge:I

    .line 527
    .line 528
    goto :goto_12

    .line 529
    :goto_13
    new-instance v3, Ljava/util/ArrayList;

    .line 530
    .line 531
    const/16 v10, 0xa

    .line 532
    .line 533
    invoke-static {v14, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 534
    .line 535
    .line 536
    move-result v9

    .line 537
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 538
    .line 539
    .line 540
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    .line 546
    .line 547
    move-result v14

    .line 548
    if-eqz v14, :cond_24

    .line 549
    .line 550
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v14

    .line 554
    check-cast v14, Landroidx/navigation3/runtime/NavEntry;

    .line 555
    .line 556
    iget-object v14, v14, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 557
    .line 558
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    goto :goto_14

    .line 562
    :cond_24
    new-instance v9, Ljava/util/ArrayList;

    .line 563
    .line 564
    invoke-static {v12, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 565
    .line 566
    .line 567
    move-result v14

    .line 568
    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 569
    .line 570
    .line 571
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 572
    .line 573
    .line 574
    move-result-object v12

    .line 575
    :goto_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v14

    .line 579
    if-eqz v14, :cond_25

    .line 580
    .line 581
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v14

    .line 585
    check-cast v14, Landroidx/navigation3/runtime/NavEntry;

    .line 586
    .line 587
    iget-object v14, v14, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 588
    .line 589
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    goto :goto_15

    .line 593
    :cond_25
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v12

    .line 597
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v14

    .line 601
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result v12

    .line 605
    if-nez v12, :cond_27

    .line 606
    .line 607
    :cond_26
    :goto_16
    const/4 v3, 0x0

    .line 608
    goto :goto_19

    .line 609
    :cond_27
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 610
    .line 611
    .line 612
    move-result v12

    .line 613
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 614
    .line 615
    .line 616
    move-result v14

    .line 617
    if-le v12, v14, :cond_28

    .line 618
    .line 619
    goto :goto_16

    .line 620
    :cond_28
    new-instance v12, Lkotlin/ranges/IntRange;

    .line 621
    .line 622
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 623
    .line 624
    .line 625
    move-result v14

    .line 626
    const/4 v10, 0x1

    .line 627
    sub-int/2addr v14, v10

    .line 628
    const/4 v7, 0x0

    .line 629
    invoke-direct {v12, v7, v14, v10}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v12}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 633
    .line 634
    .line 635
    move-result-object v7

    .line 636
    :goto_17
    move-object v12, v7

    .line 637
    check-cast v12, Lkotlin/ranges/IntProgressionIterator;

    .line 638
    .line 639
    iget-boolean v12, v12, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 640
    .line 641
    if-eqz v12, :cond_2a

    .line 642
    .line 643
    move-object v12, v7

    .line 644
    check-cast v12, Lkotlin/collections/IntIterator;

    .line 645
    .line 646
    invoke-virtual {v12}, Lkotlin/collections/IntIterator;->next()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v12

    .line 650
    move-object v14, v12

    .line 651
    check-cast v14, Ljava/lang/Number;

    .line 652
    .line 653
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    .line 654
    .line 655
    .line 656
    move-result v14

    .line 657
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v10

    .line 661
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v14

    .line 665
    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v10

    .line 669
    if-nez v10, :cond_29

    .line 670
    .line 671
    goto :goto_18

    .line 672
    :cond_29
    const/4 v10, 0x1

    .line 673
    goto :goto_17

    .line 674
    :cond_2a
    const/4 v12, 0x0

    .line 675
    :goto_18
    check-cast v12, Ljava/lang/Integer;

    .line 676
    .line 677
    if-nez v12, :cond_26

    .line 678
    .line 679
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 680
    .line 681
    .line 682
    move-result v7

    .line 683
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 684
    .line 685
    .line 686
    move-result v3

    .line 687
    if-eq v7, v3, :cond_26

    .line 688
    .line 689
    const/4 v3, 0x1

    .line 690
    :goto_19
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v7

    .line 694
    if-ne v7, v6, :cond_2b

    .line 695
    .line 696
    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 697
    .line 698
    invoke-direct {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;-><init>()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    :cond_2b
    move-object v12, v7

    .line 705
    check-cast v12, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 706
    .line 707
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v7

    .line 711
    if-ne v7, v6, :cond_2c

    .line 712
    .line 713
    sget v7, Landroidx/collection/ObjectFloatMapKt;->$r8$clinit:I

    .line 714
    .line 715
    new-instance v7, Landroidx/collection/MutableObjectFloatMap;

    .line 716
    .line 717
    const/4 v9, 0x6

    .line 718
    invoke-direct {v7, v9}, Landroidx/collection/MutableObjectFloatMap;-><init>(I)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    :cond_2c
    move-object v14, v7

    .line 725
    check-cast v14, Landroidx/collection/MutableObjectFloatMap;

    .line 726
    .line 727
    new-instance v7, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 728
    .line 729
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v9

    .line 733
    check-cast v9, Landroidx/navigation3/scene/Scene;

    .line 734
    .line 735
    invoke-direct {v7, v9}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 736
    .line 737
    .line 738
    new-instance v9, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 739
    .line 740
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v10

    .line 744
    check-cast v10, Landroidx/navigation3/scene/Scene;

    .line 745
    .line 746
    invoke-direct {v9, v10}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v14, v7}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 750
    .line 751
    .line 752
    move-result v10

    .line 753
    if-ltz v10, :cond_2d

    .line 754
    .line 755
    move/from16 v20, v10

    .line 756
    .line 757
    iget-object v10, v14, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 758
    .line 759
    aget v10, v10, v20

    .line 760
    .line 761
    goto :goto_1a

    .line 762
    :cond_2d
    const/4 v10, 0x0

    .line 763
    invoke-virtual {v14, v7, v10}, Landroidx/collection/MutableObjectFloatMap;->set(Landroidx/navigation3/ui/AnimatedSceneKey;F)V

    .line 764
    .line 765
    .line 766
    :goto_1a
    move/from16 v20, v10

    .line 767
    .line 768
    if-nez v4, :cond_2e

    .line 769
    .line 770
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v10

    .line 774
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 775
    .line 776
    .line 777
    move-result v10

    .line 778
    if-nez v10, :cond_2e

    .line 779
    .line 780
    invoke-virtual {v14, v9}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 781
    .line 782
    .line 783
    move-result v10

    .line 784
    if-ltz v10, :cond_2e

    .line 785
    .line 786
    invoke-virtual {v14, v9}, Landroidx/collection/MutableObjectFloatMap;->get(Ljava/lang/Object;)F

    .line 787
    .line 788
    .line 789
    move-result v7

    .line 790
    goto :goto_1c

    .line 791
    :cond_2e
    invoke-virtual {v7, v9}, Landroidx/navigation3/ui/AnimatedSceneKey;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result v7

    .line 795
    if-eqz v7, :cond_2f

    .line 796
    .line 797
    move/from16 v7, v20

    .line 798
    .line 799
    goto :goto_1c

    .line 800
    :cond_2f
    const/high16 v7, 0x3f800000    # 1.0f

    .line 801
    .line 802
    if-nez v3, :cond_31

    .line 803
    .line 804
    if-eqz v4, :cond_30

    .line 805
    .line 806
    goto :goto_1b

    .line 807
    :cond_30
    add-float v7, v20, v7

    .line 808
    .line 809
    goto :goto_1c

    .line 810
    :cond_31
    :goto_1b
    sub-float v7, v20, v7

    .line 811
    .line 812
    :goto_1c
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v10

    .line 816
    invoke-virtual {v12, v9, v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    iget-object v10, v12, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entries:Landroidx/compose/runtime/snapshots/SnapshotMapKeySet;

    .line 820
    .line 821
    invoke-virtual {v14, v9, v7}, Landroidx/collection/MutableObjectFloatMap;->set(Landroidx/navigation3/ui/AnimatedSceneKey;F)V

    .line 822
    .line 823
    .line 824
    iget-object v9, v1, Landroidx/navigation3/scene/SceneState;->overlayScenes:Ljava/util/ArrayList;

    .line 825
    .line 826
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    if-ne v1, v6, :cond_32

    .line 831
    .line 832
    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 833
    .line 834
    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 838
    .line 839
    .line 840
    :cond_32
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 841
    .line 842
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result v24

    .line 846
    move/from16 v25, v7

    .line 847
    .line 848
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v7

    .line 852
    if-nez v24, :cond_34

    .line 853
    .line 854
    if-ne v7, v6, :cond_33

    .line 855
    .line 856
    goto :goto_1d

    .line 857
    :cond_33
    move-object/from16 v24, v12

    .line 858
    .line 859
    goto :goto_1e

    .line 860
    :cond_34
    :goto_1d
    new-instance v7, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$10$1;

    .line 861
    .line 862
    move-object/from16 v24, v12

    .line 863
    .line 864
    const/4 v12, 0x0

    .line 865
    invoke-direct {v7, v9, v1, v12}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$10$1;-><init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    :goto_1e
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 872
    .line 873
    invoke-static {v11, v9, v7}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 874
    .line 875
    .line 876
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 877
    .line 878
    .line 879
    move-result-object v7

    .line 880
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getReadable(Landroidx/compose/runtime/snapshots/SnapshotStateList;)Landroidx/compose/runtime/snapshots/StateListStateRecord;

    .line 884
    .line 885
    .line 886
    move-result-object v12

    .line 887
    iget-object v12, v12, Landroidx/compose/runtime/snapshots/StateListStateRecord;->list:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 888
    .line 889
    move-object/from16 v26, v9

    .line 890
    .line 891
    invoke-virtual {v14}, Landroidx/collection/MutableObjectFloatMap;->toString()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v9

    .line 895
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result v7

    .line 899
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 900
    .line 901
    .line 902
    move-result v12

    .line 903
    or-int/2addr v7, v12

    .line 904
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    move-result v9

    .line 908
    or-int/2addr v7, v9

    .line 909
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v9

    .line 913
    if-nez v7, :cond_36

    .line 914
    .line 915
    if-ne v9, v6, :cond_35

    .line 916
    .line 917
    goto :goto_1f

    .line 918
    :cond_35
    move-object/from16 v33, v1

    .line 919
    .line 920
    move/from16 v27, v3

    .line 921
    .line 922
    move-object/from16 v28, v14

    .line 923
    .line 924
    goto/16 :goto_27

    .line 925
    .line 926
    :cond_36
    :goto_1f
    new-instance v7, Lkotlin/collections/builders/MapBuilder;

    .line 927
    .line 928
    invoke-direct {v7}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 929
    .line 930
    .line 931
    new-instance v9, Ljava/util/ArrayList;

    .line 932
    .line 933
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .line 935
    .line 936
    new-instance v12, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;

    .line 937
    .line 938
    move/from16 v27, v3

    .line 939
    .line 940
    const/4 v3, 0x3

    .line 941
    invoke-direct {v12, v14, v3}, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;-><init>(Ljava/lang/Object;I)V

    .line 942
    .line 943
    .line 944
    invoke-static {v10, v12}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    new-instance v10, Ljava/util/ArrayList;

    .line 949
    .line 950
    move-object/from16 v28, v14

    .line 951
    .line 952
    const/16 v12, 0xa

    .line 953
    .line 954
    invoke-static {v3, v12}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 955
    .line 956
    .line 957
    move-result v14

    .line 958
    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 959
    .line 960
    .line 961
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 966
    .line 967
    .line 968
    move-result v12

    .line 969
    if-eqz v12, :cond_37

    .line 970
    .line 971
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v12

    .line 975
    check-cast v12, Ljava/util/Map$Entry;

    .line 976
    .line 977
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v12

    .line 981
    check-cast v12, Landroidx/navigation3/scene/Scene;

    .line 982
    .line 983
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    goto :goto_20

    .line 987
    :cond_37
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 988
    .line 989
    .line 990
    move-result-object v3

    .line 991
    :cond_38
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 992
    .line 993
    .line 994
    move-result v10

    .line 995
    if-eqz v10, :cond_39

    .line 996
    .line 997
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v10

    .line 1001
    check-cast v10, Landroidx/navigation3/scene/Scene;

    .line 1002
    .line 1003
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v12

    .line 1007
    if-nez v12, :cond_38

    .line 1008
    .line 1009
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    .line 1011
    .line 1012
    goto :goto_21

    .line 1013
    :cond_39
    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v3

    .line 1017
    new-instance v10, Ljava/util/LinkedHashSet;

    .line 1018
    .line 1019
    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v12

    .line 1026
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v9

    .line 1030
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v9

    .line 1034
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1035
    .line 1036
    .line 1037
    move-result v12

    .line 1038
    const/4 v14, 0x0

    .line 1039
    :goto_22
    if-ge v14, v12, :cond_3f

    .line 1040
    .line 1041
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v29

    .line 1045
    move-object/from16 v30, v3

    .line 1046
    .line 1047
    move-object/from16 v3, v29

    .line 1048
    .line 1049
    check-cast v3, Landroidx/navigation3/scene/Scene;

    .line 1050
    .line 1051
    move/from16 v29, v9

    .line 1052
    .line 1053
    invoke-interface {v3}, Landroidx/navigation3/scene/Scene;->getEntries()Ljava/util/List;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v9

    .line 1057
    move/from16 v31, v12

    .line 1058
    .line 1059
    new-instance v12, Ljava/util/ArrayList;

    .line 1060
    .line 1061
    move-object/from16 v33, v1

    .line 1062
    .line 1063
    move/from16 v32, v14

    .line 1064
    .line 1065
    const/16 v14, 0xa

    .line 1066
    .line 1067
    invoke-static {v9, v14}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1068
    .line 1069
    .line 1070
    move-result v1

    .line 1071
    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1072
    .line 1073
    .line 1074
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v1

    .line 1078
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v9

    .line 1082
    if-eqz v9, :cond_3a

    .line 1083
    .line 1084
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v9

    .line 1088
    check-cast v9, Landroidx/navigation3/runtime/NavEntry;

    .line 1089
    .line 1090
    iget-object v9, v9, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 1091
    .line 1092
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    .line 1094
    .line 1095
    goto :goto_23

    .line 1096
    :cond_3a
    new-instance v1, Ljava/util/ArrayList;

    .line 1097
    .line 1098
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v9

    .line 1105
    :cond_3b
    :goto_24
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1106
    .line 1107
    .line 1108
    move-result v12

    .line 1109
    if-eqz v12, :cond_3c

    .line 1110
    .line 1111
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v12

    .line 1115
    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    move-result v14

    .line 1119
    if-nez v14, :cond_3b

    .line 1120
    .line 1121
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    goto :goto_24

    .line 1125
    :cond_3c
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v1

    .line 1129
    if-nez v29, :cond_3e

    .line 1130
    .line 1131
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v9

    .line 1135
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v9

    .line 1139
    if-nez v9, :cond_3e

    .line 1140
    .line 1141
    new-instance v9, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 1142
    .line 1143
    invoke-direct {v9, v3}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v3

    .line 1150
    check-cast v3, Landroidx/navigation3/scene/Scene;

    .line 1151
    .line 1152
    invoke-interface {v3}, Landroidx/navigation3/scene/Scene;->getEntries()Ljava/util/List;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    new-instance v12, Ljava/util/ArrayList;

    .line 1157
    .line 1158
    move-object/from16 v23, v1

    .line 1159
    .line 1160
    const/16 v14, 0xa

    .line 1161
    .line 1162
    invoke-static {v3, v14}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1163
    .line 1164
    .line 1165
    move-result v1

    .line 1166
    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1167
    .line 1168
    .line 1169
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v3

    .line 1177
    if-eqz v3, :cond_3d

    .line 1178
    .line 1179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v3

    .line 1183
    check-cast v3, Landroidx/navigation3/runtime/NavEntry;

    .line 1184
    .line 1185
    iget-object v3, v3, Landroidx/navigation3/runtime/NavEntry;->contentKey:Ljava/lang/Object;

    .line 1186
    .line 1187
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    goto :goto_25

    .line 1191
    :cond_3d
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v1

    .line 1195
    invoke-virtual {v7, v9, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v1

    .line 1199
    check-cast v1, Ljava/util/Set;

    .line 1200
    .line 1201
    goto :goto_26

    .line 1202
    :cond_3e
    move-object/from16 v23, v1

    .line 1203
    .line 1204
    const/16 v14, 0xa

    .line 1205
    .line 1206
    new-instance v1, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 1207
    .line 1208
    invoke-direct {v1, v3}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 1209
    .line 1210
    .line 1211
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1212
    .line 1213
    invoke-direct {v3, v10}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v7, v1, v3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v1

    .line 1220
    check-cast v1, Ljava/util/Set;

    .line 1221
    .line 1222
    :goto_26
    move-object/from16 v1, v23

    .line 1223
    .line 1224
    check-cast v1, Ljava/util/Collection;

    .line 1225
    .line 1226
    invoke-interface {v10, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1227
    .line 1228
    .line 1229
    add-int/lit8 v1, v32, 0x1

    .line 1230
    .line 1231
    move v14, v1

    .line 1232
    move/from16 v9, v29

    .line 1233
    .line 1234
    move-object/from16 v3, v30

    .line 1235
    .line 1236
    move/from16 v12, v31

    .line 1237
    .line 1238
    move-object/from16 v1, v33

    .line 1239
    .line 1240
    goto/16 :goto_22

    .line 1241
    .line 1242
    :cond_3f
    move-object/from16 v33, v1

    .line 1243
    .line 1244
    move/from16 v29, v9

    .line 1245
    .line 1246
    if-nez v29, :cond_40

    .line 1247
    .line 1248
    new-instance v1, Landroidx/navigation3/ui/AnimatedSceneKey;

    .line 1249
    .line 1250
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v3

    .line 1254
    check-cast v3, Landroidx/navigation3/scene/Scene;

    .line 1255
    .line 1256
    invoke-direct {v1, v3}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 1257
    .line 1258
    .line 1259
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 1260
    .line 1261
    invoke-virtual {v7, v1, v3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    :cond_40
    invoke-virtual {v7}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v9

    .line 1268
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1269
    .line 1270
    .line 1271
    :goto_27
    move-object v1, v9

    .line 1272
    check-cast v1, Ljava/util/Map;

    .line 1273
    .line 1274
    cmpl-float v3, v20, v25

    .line 1275
    .line 1276
    if-ltz v3, :cond_41

    .line 1277
    .line 1278
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v3

    .line 1282
    check-cast v3, Landroidx/navigation3/scene/Scene;

    .line 1283
    .line 1284
    goto :goto_28

    .line 1285
    :cond_41
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v3

    .line 1289
    check-cast v3, Landroidx/navigation3/scene/Scene;

    .line 1290
    .line 1291
    :goto_28
    if-eqz v4, :cond_45

    .line 1292
    .line 1293
    const v7, -0x7794dfcb

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v7

    .line 1303
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result v7

    .line 1307
    if-nez v7, :cond_44

    .line 1308
    .line 1309
    const v7, -0x77940e4d

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1313
    .line 1314
    .line 1315
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v7

    .line 1319
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v8

    .line 1323
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v9

    .line 1327
    or-int/2addr v8, v9

    .line 1328
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1329
    .line 1330
    .line 1331
    move-result v9

    .line 1332
    or-int/2addr v8, v9

    .line 1333
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v9

    .line 1337
    if-nez v8, :cond_42

    .line 1338
    .line 1339
    if-ne v9, v6, :cond_43

    .line 1340
    .line 1341
    :cond_42
    new-instance v9, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$11$1;

    .line 1342
    .line 1343
    const/4 v12, 0x0

    .line 1344
    invoke-direct {v9, v5, v0, v13, v12}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$11$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;FLandroidx/navigation3/scene/Scene;Lkotlin/coroutines/Continuation;)V

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1348
    .line 1349
    .line 1350
    :cond_43
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1351
    .line 1352
    invoke-static {v13, v7, v9, v11}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 1353
    .line 1354
    .line 1355
    const/4 v7, 0x0

    .line 1356
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1357
    .line 1358
    .line 1359
    goto :goto_29

    .line 1360
    :cond_44
    const/4 v7, 0x0

    .line 1361
    const v0, -0x7790f279

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1368
    .line 1369
    .line 1370
    :goto_29
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1371
    .line 1372
    .line 1373
    goto :goto_2a

    .line 1374
    :cond_45
    const v0, -0x778fc268

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1381
    .line 1382
    .line 1383
    move-result v0

    .line 1384
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1385
    .line 1386
    .line 1387
    move-result v7

    .line 1388
    or-int/2addr v0, v7

    .line 1389
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v7

    .line 1393
    or-int/2addr v0, v7

    .line 1394
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v7

    .line 1398
    if-nez v0, :cond_46

    .line 1399
    .line 1400
    if-ne v7, v6, :cond_47

    .line 1401
    .line 1402
    :cond_46
    new-instance v7, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$12$1;

    .line 1403
    .line 1404
    const/4 v12, 0x0

    .line 1405
    invoke-direct {v7, v5, v8, v15, v12}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$12$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation3/scene/Scene;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1409
    .line 1410
    .line 1411
    :cond_47
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 1412
    .line 1413
    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1414
    .line 1415
    .line 1416
    const/4 v7, 0x0

    .line 1417
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1418
    .line 1419
    .line 1420
    :goto_2a
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 1421
    .line 1422
    .line 1423
    move-result v0

    .line 1424
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1425
    .line 1426
    .line 1427
    move-result v5

    .line 1428
    or-int/2addr v0, v5

    .line 1429
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v5

    .line 1433
    or-int/2addr v0, v5

    .line 1434
    const/high16 v5, 0x1c00000

    .line 1435
    .line 1436
    and-int v5, v19, v5

    .line 1437
    .line 1438
    xor-int v5, v5, v18

    .line 1439
    .line 1440
    const/high16 v8, 0x800000

    .line 1441
    .line 1442
    if-le v5, v8, :cond_48

    .line 1443
    .line 1444
    move-object/from16 v5, p6

    .line 1445
    .line 1446
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v9

    .line 1450
    if-nez v9, :cond_49

    .line 1451
    .line 1452
    goto :goto_2b

    .line 1453
    :cond_48
    move-object/from16 v5, p6

    .line 1454
    .line 1455
    :goto_2b
    and-int v9, v19, v18

    .line 1456
    .line 1457
    if-ne v9, v8, :cond_4a

    .line 1458
    .line 1459
    :cond_49
    const/4 v8, 0x1

    .line 1460
    goto :goto_2c

    .line 1461
    :cond_4a
    move v8, v7

    .line 1462
    :goto_2c
    or-int/2addr v0, v8

    .line 1463
    move/from16 v8, v27

    .line 1464
    .line 1465
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v9

    .line 1469
    or-int/2addr v0, v9

    .line 1470
    const/high16 v9, 0x380000

    .line 1471
    .line 1472
    and-int v9, v19, v9

    .line 1473
    .line 1474
    xor-int v9, v9, v17

    .line 1475
    .line 1476
    const/high16 v10, 0x100000

    .line 1477
    .line 1478
    if-le v9, v10, :cond_4b

    .line 1479
    .line 1480
    move-object/from16 v9, p5

    .line 1481
    .line 1482
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v12

    .line 1486
    if-nez v12, :cond_4c

    .line 1487
    .line 1488
    goto :goto_2d

    .line 1489
    :cond_4b
    move-object/from16 v9, p5

    .line 1490
    .line 1491
    :goto_2d
    and-int v12, v19, v17

    .line 1492
    .line 1493
    if-ne v12, v10, :cond_4d

    .line 1494
    .line 1495
    :cond_4c
    const/4 v10, 0x1

    .line 1496
    goto :goto_2e

    .line 1497
    :cond_4d
    move v10, v7

    .line 1498
    :goto_2e
    or-int/2addr v0, v10

    .line 1499
    const/high16 v10, 0x70000

    .line 1500
    .line 1501
    and-int v10, v19, v10

    .line 1502
    .line 1503
    xor-int v10, v10, p7

    .line 1504
    .line 1505
    const/high16 v12, 0x20000

    .line 1506
    .line 1507
    if-le v10, v12, :cond_4e

    .line 1508
    .line 1509
    move-object/from16 v10, p4

    .line 1510
    .line 1511
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v13

    .line 1515
    if-nez v13, :cond_4f

    .line 1516
    .line 1517
    goto :goto_2f

    .line 1518
    :cond_4e
    move-object/from16 v10, p4

    .line 1519
    .line 1520
    :goto_2f
    and-int v13, v19, p7

    .line 1521
    .line 1522
    if-ne v13, v12, :cond_50

    .line 1523
    .line 1524
    :cond_4f
    const/4 v7, 0x1

    .line 1525
    :cond_50
    or-int/2addr v0, v7

    .line 1526
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v7

    .line 1530
    if-nez v0, :cond_51

    .line 1531
    .line 1532
    if-ne v7, v6, :cond_52

    .line 1533
    .line 1534
    :cond_51
    move-object v5, v3

    .line 1535
    goto :goto_30

    .line 1536
    :cond_52
    move-object v12, v6

    .line 1537
    move/from16 v0, v19

    .line 1538
    .line 1539
    move/from16 v2, v25

    .line 1540
    .line 1541
    goto :goto_31

    .line 1542
    :goto_30
    new-instance v3, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda3;

    .line 1543
    .line 1544
    move-object/from16 v7, p6

    .line 1545
    .line 1546
    move-object v12, v6

    .line 1547
    move/from16 v0, v19

    .line 1548
    .line 1549
    move v6, v2

    .line 1550
    move/from16 v2, v25

    .line 1551
    .line 1552
    invoke-direct/range {v3 .. v10}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda3;-><init>(ZLandroidx/navigation3/scene/Scene;ILkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1556
    .line 1557
    .line 1558
    move-object v7, v3

    .line 1559
    :goto_31
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 1560
    .line 1561
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1562
    .line 1563
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v4

    .line 1570
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 1571
    .line 1572
    .line 1573
    move-result v5

    .line 1574
    or-int/2addr v4, v5

    .line 1575
    const/4 v13, 0x0

    .line 1576
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1577
    .line 1578
    .line 1579
    move-result v5

    .line 1580
    or-int/2addr v4, v5

    .line 1581
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v5

    .line 1585
    if-nez v4, :cond_53

    .line 1586
    .line 1587
    if-ne v5, v12, :cond_54

    .line 1588
    .line 1589
    :cond_53
    new-instance v5, Landroidx/compose/material3/TabIndicatorOffsetNode$$ExternalSyntheticLambda0;

    .line 1590
    .line 1591
    const/4 v4, 0x2

    .line 1592
    invoke-direct {v5, v7, v2, v4}, Landroidx/compose/material3/TabIndicatorOffsetNode$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;FI)V

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1596
    .line 1597
    .line 1598
    :cond_54
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1599
    .line 1600
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v2

    .line 1604
    if-ne v2, v12, :cond_55

    .line 1605
    .line 1606
    new-instance v2, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;

    .line 1607
    .line 1608
    const/16 v4, 0x1b

    .line 1609
    .line 1610
    invoke-direct {v2, v4}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1611
    .line 1612
    .line 1613
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1614
    .line 1615
    .line 1616
    :cond_55
    move-object v7, v2

    .line 1617
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 1618
    .line 1619
    new-instance v2, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda6;

    .line 1620
    .line 1621
    move-object/from16 v13, v33

    .line 1622
    .line 1623
    invoke-direct {v2, v15, v13, v3, v1}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/Map;)V

    .line 1624
    .line 1625
    .line 1626
    const v1, -0x45956e3c

    .line 1627
    .line 1628
    .line 1629
    invoke-static {v1, v2, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v8

    .line 1633
    shr-int/lit8 v1, v0, 0x3

    .line 1634
    .line 1635
    and-int/lit8 v1, v1, 0x70

    .line 1636
    .line 1637
    const v2, 0x36000

    .line 1638
    .line 1639
    .line 1640
    or-int/2addr v1, v2

    .line 1641
    and-int/lit16 v0, v0, 0x1c00

    .line 1642
    .line 1643
    or-int v10, v1, v0

    .line 1644
    .line 1645
    move-object v9, v11

    .line 1646
    const/4 v11, 0x0

    .line 1647
    move-object/from16 v4, p2

    .line 1648
    .line 1649
    move-object/from16 v6, p3

    .line 1650
    .line 1651
    move-object v3, v15

    .line 1652
    invoke-static/range {v3 .. v11}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result v0

    .line 1659
    move-object/from16 v7, v28

    .line 1660
    .line 1661
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1662
    .line 1663
    .line 1664
    move-result v1

    .line 1665
    or-int/2addr v0, v1

    .line 1666
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v1

    .line 1670
    if-nez v0, :cond_56

    .line 1671
    .line 1672
    if-ne v1, v12, :cond_57

    .line 1673
    .line 1674
    :cond_56
    new-instance v1, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;

    .line 1675
    .line 1676
    move-object/from16 v0, v24

    .line 1677
    .line 1678
    const/4 v14, 0x0

    .line 1679
    invoke-direct {v1, v3, v0, v7, v14}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/snapshots/SnapshotStateMap;Landroidx/collection/MutableObjectFloatMap;Lkotlin/coroutines/Continuation;)V

    .line 1680
    .line 1681
    .line 1682
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1683
    .line 1684
    .line 1685
    :cond_57
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 1686
    .line 1687
    invoke-static {v9, v3, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1688
    .line 1689
    .line 1690
    invoke-virtual {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 1691
    .line 1692
    .line 1693
    move-result v0

    .line 1694
    add-int/lit8 v0, v0, -0x1

    .line 1695
    .line 1696
    if-ltz v0, :cond_5e

    .line 1697
    .line 1698
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v0

    .line 1702
    if-nez v0, :cond_5a

    .line 1703
    .line 1704
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    if-ne v0, v12, :cond_58

    .line 1709
    .line 1710
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v0

    .line 1714
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1715
    .line 1716
    .line 1717
    :cond_58
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 1718
    .line 1719
    const v0, 0x2979348

    .line 1720
    .line 1721
    .line 1722
    const/4 v12, 0x0

    .line 1723
    invoke-virtual {v9, v0, v12}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 1724
    .line 1725
    .line 1726
    invoke-static/range {v26 .. v26}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v0

    .line 1730
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1731
    .line 1732
    .line 1733
    move-result v0

    .line 1734
    if-eqz v0, :cond_59

    .line 1735
    .line 1736
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 1737
    .line 1738
    goto :goto_32

    .line 1739
    :cond_59
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 1740
    .line 1741
    :goto_32
    invoke-static {v0, v9}, Lokhttp3/Cookie$Companion;->rememberLifecycleOwner(Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/compose/ComposeLifecycleOwner;

    .line 1742
    .line 1743
    .line 1744
    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 1745
    .line 1746
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1747
    .line 1748
    .line 1749
    sget-object v0, Landroidx/navigation3/scene/SceneSetupNavEntryDecoratorKt;->LocalEntriesToExcludeFromCurrentScene:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1750
    .line 1751
    throw v12

    .line 1752
    :cond_5a
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    .line 1753
    .line 1754
    .line 1755
    return-void

    .line 1756
    :cond_5b
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 1757
    .line 1758
    .line 1759
    return-void

    .line 1760
    :cond_5c
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 1761
    .line 1762
    .line 1763
    return-void

    .line 1764
    :catchall_0
    move-exception v0

    .line 1765
    invoke-static {v15, v13, v3}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 1766
    .line 1767
    .line 1768
    throw v0

    .line 1769
    :cond_5d
    move-object v9, v11

    .line 1770
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1771
    .line 1772
    .line 1773
    :cond_5e
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v9

    .line 1777
    if-eqz v9, :cond_5f

    .line 1778
    .line 1779
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda5;

    .line 1780
    .line 1781
    move-object/from16 v1, p0

    .line 1782
    .line 1783
    move-object/from16 v2, p1

    .line 1784
    .line 1785
    move-object/from16 v3, p2

    .line 1786
    .line 1787
    move-object/from16 v4, p3

    .line 1788
    .line 1789
    move-object/from16 v5, p4

    .line 1790
    .line 1791
    move-object/from16 v6, p5

    .line 1792
    .line 1793
    move-object/from16 v7, p6

    .line 1794
    .line 1795
    move/from16 v8, p8

    .line 1796
    .line 1797
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda5;-><init>(Landroidx/navigation3/scene/SceneState;Landroidx/navigationevent/compose/NavigationEventState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    .line 1798
    .line 1799
    .line 1800
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1801
    .line 1802
    :cond_5f
    return-void
.end method

.method public static final NavDisplay(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p8

    move/from16 v10, p10

    .line 1803
    move-object/from16 v15, p9

    check-cast v15, Landroidx/compose/runtime/GapComposer;

    const v0, -0x7216c6ad

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, v10, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    and-int/lit8 v6, v10, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v0, v7

    goto :goto_3

    :cond_3
    move-object/from16 v6, p1

    :goto_3
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_5

    move-object/from16 v7, p2

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_4

    :cond_4
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v0, v8

    goto :goto_5

    :cond_5
    move-object/from16 v7, p2

    :goto_5
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_7

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_6

    :cond_6
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v0, v8

    :cond_7
    and-int/lit16 v8, v10, 0x6000

    if-nez v8, :cond_9

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_7

    :cond_8
    const/16 v8, 0x2000

    :goto_7
    or-int/2addr v0, v8

    :cond_9
    const/high16 v8, 0x30000

    and-int/2addr v8, v10

    const/4 v11, 0x0

    if-nez v8, :cond_b

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_8

    :cond_a
    const/high16 v8, 0x10000

    :goto_8
    or-int/2addr v0, v8

    :cond_b
    const/high16 v8, 0x180000

    and-int/2addr v8, v10

    if-nez v8, :cond_d

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v8, 0x80000

    :goto_9
    or-int/2addr v0, v8

    :cond_d
    const/high16 v8, 0xc00000

    and-int/2addr v8, v10

    if-nez v8, :cond_f

    move-object/from16 v8, p5

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v12, 0x400000

    :goto_a
    or-int/2addr v0, v12

    goto :goto_b

    :cond_f
    move-object/from16 v8, p5

    :goto_b
    const/high16 v12, 0x6000000

    and-int/2addr v12, v10

    if-nez v12, :cond_11

    move-object/from16 v12, p6

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/high16 v13, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v13, 0x2000000

    :goto_c
    or-int/2addr v0, v13

    goto :goto_d

    :cond_11
    move-object/from16 v12, p6

    :goto_d
    const/high16 v13, 0x30000000

    and-int/2addr v13, v10

    if-nez v13, :cond_13

    move-object/from16 v13, p7

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x20000000

    goto :goto_e

    :cond_12
    const/high16 v14, 0x10000000

    :goto_e
    or-int/2addr v0, v14

    goto :goto_f

    :cond_13
    move-object/from16 v13, p7

    :goto_f
    and-int/lit8 v14, p11, 0x6

    if-nez v14, :cond_15

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const/4 v14, 0x4

    goto :goto_10

    :cond_14
    const/4 v14, 0x2

    :goto_10
    or-int v14, p11, v14

    goto :goto_11

    :cond_15
    move/from16 v14, p11

    :goto_11
    const v16, 0x12492493

    move-object/from16 p9, v11

    and-int v11, v0, v16

    const v3, 0x12492492

    if-ne v11, v3, :cond_17

    and-int/lit8 v3, v14, 0x3

    const/4 v11, 0x2

    if-eq v3, v11, :cond_16

    goto :goto_12

    :cond_16
    const/4 v3, 0x0

    goto :goto_13

    :cond_17
    :goto_12
    const/4 v3, 0x1

    :goto_13
    and-int/lit8 v11, v0, 0x1

    invoke-virtual {v15, v11, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v3, v10, 0x1

    if-eqz v3, :cond_19

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_14

    .line 1804
    :cond_18
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    :cond_19
    :goto_14
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 1805
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    and-int/lit8 v3, v0, 0xe

    shr-int/lit8 v11, v0, 0x6

    and-int/lit8 v19, v11, 0x70

    or-int v3, v3, v19

    and-int/lit16 v2, v11, 0x380

    or-int/2addr v2, v3

    and-int/lit16 v3, v11, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0xc

    const v20, 0xe000

    and-int v3, v3, v20

    or-int/2addr v2, v3

    .line 1806
    invoke-static {v9, v15}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    const v3, -0x3aae554c

    .line 1807
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    const/4 v3, 0x0

    .line 1808
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1809
    sget-object v3, Landroidx/navigation3/scene/SceneSetupNavEntryDecoratorKt;->LocalEntriesToExcludeFromCurrentScene:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1810
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move/from16 v21, v0

    .line 1811
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v0, :cond_1a

    .line 1812
    new-instance v3, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator;

    move/from16 v22, v2

    .line 1813
    new-instance v2, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-direct {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;-><init>()V

    .line 1814
    new-instance v6, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    const/16 v7, 0x18

    invoke-direct {v6, v2, v7}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 1815
    new-instance v7, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;

    const/4 v8, 0x6

    invoke-direct {v7, v2, v8}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 1816
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v8, -0x6638b76f

    const/4 v10, 0x1

    invoke-direct {v2, v8, v10, v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 1817
    invoke-direct {v3, v6, v2}, Landroidx/navigation3/runtime/NavEntryDecorator;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 1818
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_15

    :cond_1a
    move/from16 v22, v2

    .line 1819
    :goto_15
    check-cast v3, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator;

    and-int/lit8 v2, v22, 0xe

    .line 1820
    invoke-static {v1, v15}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    .line 1821
    new-instance v7, Landroidx/navigation3/runtime/NavEntryDecorator;

    new-instance v8, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;

    const/4 v10, 0x5

    invoke-direct {v8, v6, v10}, Landroidx/compose/material3/TabKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    const v6, 0x403bfc2c

    invoke-static {v6, v8, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    .line 1822
    new-instance v8, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;

    const/16 v10, 0x1a

    invoke-direct {v8, v10}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1823
    invoke-direct {v7, v8, v6}, Landroidx/navigation3/runtime/NavEntryDecorator;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const/4 v6, 0x3

    .line 1824
    new-array v8, v6, [Landroidx/navigation3/runtime/NavEntryDecorator;

    const/16 v18, 0x0

    aput-object p9, v8, v18

    const/16 v19, 0x1

    aput-object v3, v8, v19

    const/16 v17, 0x2

    aput-object v7, v8, v17

    .line 1825
    invoke-static {v8}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1826
    invoke-static {v1, v3, v15, v2}, Landroidx/core/os/BundleKt;->rememberDecoratedNavEntries(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/Composer;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1827
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    .line 1828
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_1c

    if-ne v7, v0, :cond_1b

    goto :goto_16

    :cond_1b
    move/from16 v17, v6

    const/4 v4, 0x0

    goto/16 :goto_1c

    .line 1829
    :cond_1c
    :goto_16
    invoke-static {v2, v4, v5}, Landroidx/navigation3/scene/SceneStateKt;->provideScene(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroidx/navigation3/scene/Scene;

    move-result-object v3

    const/4 v10, 0x1

    new-array v7, v10, [Landroidx/navigation3/scene/Scene;

    const/16 v18, 0x0

    aput-object v3, v7, v18

    .line 1830
    invoke-static {v7}, Lorg/jsoup/Jsoup;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1831
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 1832
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1833
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1834
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v10

    move/from16 v17, v6

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v10, :cond_1d

    .line 1835
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .line 1836
    check-cast v22, Landroidx/navigation3/scene/Scene;

    .line 1837
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v3

    move-object/from16 v3, v22

    check-cast v3, Landroidx/navigation3/scene/OverlayScene;

    .line 1838
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v23

    goto :goto_17

    :cond_1d
    move-object/from16 v23, v3

    .line 1839
    invoke-static/range {v23 .. v23}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation3/scene/Scene;

    const/4 v10, 0x1

    .line 1840
    new-array v6, v10, [Landroidx/navigation3/scene/Scene;

    invoke-static/range {v23 .. v23}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    const/16 v18, 0x0

    aput-object v7, v6, v18

    invoke-static {v6}, Lorg/jsoup/Jsoup;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1841
    :goto_18
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation3/scene/Scene;

    if-eqz v7, :cond_1e

    .line 1842
    invoke-interface {v7}, Landroidx/navigation3/scene/Scene;->getPreviousEntries()Ljava/util/List;

    move-result-object v7

    goto :goto_19

    :cond_1e
    move-object/from16 v7, p9

    :goto_19
    if-eqz v7, :cond_1f

    .line 1843
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_20

    :cond_1f
    const/4 v4, 0x0

    goto :goto_1a

    .line 1844
    :cond_20
    invoke-static {v7, v4, v5}, Landroidx/navigation3/scene/SceneStateKt;->provideScene(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroidx/navigation3/scene/Scene;

    move-result-object v10

    const/4 v4, 0x0

    .line 1845
    invoke-virtual {v6, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1a
    if-eqz v7, :cond_22

    .line 1846
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_1b

    :cond_21
    move-object/from16 v4, p3

    goto :goto_18

    .line 1847
    :cond_22
    :goto_1b
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1848
    new-instance v7, Landroidx/navigation3/scene/SceneState;

    invoke-direct {v7, v2, v8, v3, v6}, Landroidx/navigation3/scene/SceneState;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/navigation3/scene/Scene;Ljava/util/ArrayList;)V

    .line 1849
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1850
    :goto_1c
    check-cast v7, Landroidx/navigation3/scene/SceneState;

    .line 1851
    iget-object v2, v7, Landroidx/navigation3/scene/SceneState;->currentScene:Landroidx/navigation3/scene/Scene;

    .line 1852
    new-instance v3, Landroidx/navigation3/scene/SceneInfo;

    invoke-direct {v3, v2}, Landroidx/navigation3/scene/SceneInfo;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 1853
    iget-object v6, v7, Landroidx/navigation3/scene/SceneState;->previousScenes:Ljava/util/ArrayList;

    .line 1854
    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v6, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1855
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1856
    check-cast v10, Landroidx/navigation3/scene/Scene;

    .line 1857
    new-instance v4, Landroidx/navigation3/scene/SceneInfo;

    invoke-direct {v4, v10}, Landroidx/navigation3/scene/SceneInfo;-><init>(Landroidx/navigation3/scene/Scene;)V

    .line 1858
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_1d

    .line 1859
    :cond_23
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 1860
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-ne v4, v0, :cond_24

    .line 1861
    new-instance v4, Landroidx/navigationevent/compose/NavigationEventState;

    invoke-direct {v4, v3, v8, v6}, Landroidx/navigationevent/compose/NavigationEventState;-><init>(Landroidx/navigation3/scene/SceneInfo;Ljava/util/List;Ljava/util/List;)V

    .line 1862
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1863
    :cond_24
    move-object/from16 v23, v4

    check-cast v23, Landroidx/navigationevent/compose/NavigationEventState;

    .line 1864
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v4, v10

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v4, v10

    .line 1865
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_25

    if-ne v10, v0, :cond_26

    .line 1866
    :cond_25
    new-instance v22, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    const/16 v27, 0x1

    move-object/from16 v24, v3

    move-object/from16 v26, v6

    move-object/from16 v25, v8

    invoke-direct/range {v22 .. v27}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v10, v22

    .line 1867
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1868
    :cond_26
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v10, v15}, Landroidx/compose/runtime/Updater;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 1869
    invoke-interface {v2}, Landroidx/navigation3/scene/Scene;->getPreviousEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/16 v19, 0x1

    xor-int/lit8 v3, v3, 0x1

    .line 1870
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    and-int/lit8 v6, v14, 0xe

    const/4 v8, 0x4

    if-ne v6, v8, :cond_27

    move/from16 v18, v19

    goto :goto_1e

    :cond_27
    const/16 v18, 0x0

    :goto_1e
    or-int v4, v4, v18

    .line 1871
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_28

    if-ne v6, v0, :cond_29

    .line 1872
    :cond_28
    new-instance v6, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {v6, v0, v1, v2, v9}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1873
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1874
    :cond_29
    move-object v14, v6

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x0

    const/4 v13, 0x0

    move v12, v3

    move v0, v11

    move-object/from16 v11, v23

    .line 1875
    invoke-static/range {v11 .. v16}, Lkotlin/ranges/RangesKt;->NavigationBackHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    shl-int/lit8 v2, v21, 0x3

    and-int/lit16 v2, v2, 0x1f80

    and-int v3, v0, v20

    or-int/2addr v2, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v0, v3

    or-int v19, v2, v0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object v11, v7

    move-object/from16 v18, v15

    move-object/from16 v12, v23

    move-object/from16 v15, p5

    .line 1876
    invoke-static/range {v11 .. v19}, Lorg/jsoup/Jsoup;->NavDisplay(Landroidx/navigation3/scene/SceneState;Landroidx/navigationevent/compose/NavigationEventState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v15, v18

    goto :goto_1f

    .line 1877
    :cond_2a
    const-string v0, "NavDisplay entries cannot be empty"

    .line 1878
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    .line 1879
    :cond_2b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1880
    :goto_1f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2c

    new-instance v0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda2;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V

    .line 1881
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method

.method public static final NavDisplay(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move-object/from16 v11, p10

    .line 1882
    move-object/from16 v0, p11

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v2, 0x535ca750

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p12, v2

    or-int/lit16 v2, v2, 0x1b0

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x800

    goto :goto_1

    :cond_1
    const/16 v3, 0x400

    :goto_1
    or-int/2addr v2, v3

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x4000

    goto :goto_2

    :cond_2
    const/16 v3, 0x2000

    :goto_2
    or-int/2addr v2, v3

    const/high16 v3, 0x16d90000

    or-int/2addr v2, v3

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x100

    goto :goto_3

    :cond_3
    const/16 v3, 0x80

    :goto_3
    const/16 v6, 0x12

    or-int/2addr v3, v6

    const v6, 0x12492493

    and-int/2addr v6, v2

    const v7, 0x12492492

    const/4 v8, 0x0

    if-ne v6, v7, :cond_5

    and-int/lit16 v6, v3, 0x93

    const/16 v7, 0x92

    if-eq v6, v7, :cond_4

    goto :goto_4

    :cond_4
    move v6, v8

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x1

    :goto_5
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v6, p12, 0x1

    const v7, -0x70070001

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_6

    .line 1883
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int/2addr v2, v7

    and-int/lit8 v3, v3, -0x7f

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    goto :goto_7

    .line 1884
    :cond_7
    :goto_6
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1885
    new-instance v9, Landroidx/navigation3/scene/SinglePaneSceneStrategy;

    .line 1886
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1887
    invoke-static {v9}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 1888
    new-instance v10, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;

    const/16 v12, 0x1c

    invoke-direct {v10, v12}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;-><init>(I)V

    and-int/2addr v2, v7

    .line 1889
    new-instance v7, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;

    const/16 v12, 0x1d

    invoke-direct {v7, v12}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1890
    new-instance v12, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;-><init>(I)V

    and-int/lit8 v3, v3, -0x7f

    .line 1891
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v14, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v18, v7

    move-object v15, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v12

    move-object/from16 v16, v14

    move-object v14, v6

    .line 1892
    :goto_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 1893
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    and-int/lit8 v6, v2, 0xe

    shr-int/lit8 v2, v2, 0x9

    and-int/lit8 v7, v2, 0x70

    or-int/2addr v6, v7

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v3, v6

    .line 1894
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 1895
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_8

    .line 1896
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v6, :cond_b

    .line 1897
    :cond_8
    instance-of v6, v1, Ljava/util/RandomAccess;

    if-eqz v6, :cond_a

    .line 1898
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1899
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_8
    if-ge v8, v7, :cond_9

    .line 1900
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1901
    invoke-virtual {v11, v9}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation3/runtime/NavEntry;

    .line 1902
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_9
    move-object v7, v6

    goto :goto_a

    .line 1903
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1904
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1905
    invoke-virtual {v11, v8}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation3/runtime/NavEntry;

    .line 1906
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1907
    :goto_a
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1908
    :cond_b
    check-cast v7, Ljava/util/List;

    and-int/lit8 v3, v3, 0x70

    .line 1909
    invoke-static {v7, v5, v0, v3}, Landroidx/core/os/BundleKt;->rememberDecoratedNavEntries(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/Composer;I)Ljava/util/ArrayList;

    move-result-object v12

    const v22, 0x1b61b0

    and-int/lit8 v23, v2, 0xe

    move-object/from16 v21, v0

    move-object/from16 v20, v4

    .line 1910
    invoke-static/range {v12 .. v23}, Lorg/jsoup/Jsoup;->NavDisplay(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v13

    move-object v3, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto :goto_b

    .line 1911
    :cond_c
    const-string v0, "NavDisplay backstack cannot be empty"

    .line 1912
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    return-void

    :cond_d
    move-object/from16 v21, v0

    .line 1913
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 1914
    :goto_b
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_e

    new-instance v0, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda0;

    move-object/from16 v4, p3

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;I)V

    .line 1915
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
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

.method public static final access$DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x4100086b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    or-int/lit8 v1, p3, 0x6

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    and-int/lit8 v1, p3, 0x6

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x2

    .line 29
    :goto_0
    or-int/2addr v1, p3

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v1, p3

    .line 32
    :goto_1
    and-int/lit8 v2, p3, 0x30

    .line 33
    .line 34
    const/16 v3, 0x20

    .line 35
    .line 36
    if-nez v2, :cond_4

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    move v2, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/16 v2, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v1, v2

    .line 49
    :cond_4
    and-int/lit8 v2, v1, 0x13

    .line 50
    .line 51
    const/16 v4, 0x12

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    if-eq v2, v4, :cond_5

    .line 55
    .line 56
    move v2, v5

    .line 57
    goto :goto_3

    .line 58
    :cond_5
    const/4 v2, 0x0

    .line 59
    :goto_3
    and-int/lit8 v4, v1, 0x1

    .line 60
    .line 61
    invoke-virtual {p2, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_9

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 70
    .line 71
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 76
    .line 77
    if-ne v0, v2, :cond_7

    .line 78
    .line 79
    sget-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$1;

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_7
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 85
    .line 86
    shr-int/lit8 v2, v1, 0x3

    .line 87
    .line 88
    and-int/lit8 v2, v2, 0xe

    .line 89
    .line 90
    or-int/lit16 v2, v2, 0x180

    .line 91
    .line 92
    shl-int/lit8 v1, v1, 0x3

    .line 93
    .line 94
    and-int/lit8 v1, v1, 0x70

    .line 95
    .line 96
    or-int/2addr v1, v2

    .line 97
    iget-wide v6, p2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 98
    .line 99
    ushr-long v2, v6, v3

    .line 100
    .line 101
    xor-long/2addr v2, v6

    .line 102
    long-to-int v2, v2

    .line 103
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {p2, p0}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 117
    .line 118
    shl-int/lit8 v1, v1, 0x6

    .line 119
    .line 120
    and-int/lit16 v1, v1, 0x380

    .line 121
    .line 122
    or-int/lit8 v1, v1, 0x6

    .line 123
    .line 124
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 125
    .line 126
    .line 127
    iget-boolean v7, p2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 128
    .line 129
    if-eqz v7, :cond_8

    .line 130
    .line 131
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_8
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 136
    .line 137
    .line 138
    :goto_4
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 139
    .line 140
    invoke-static {p2, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 144
    .line 145
    invoke-static {p2, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 153
    .line 154
    invoke-static {p2, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 158
    .line 159
    invoke-static {p2, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 160
    .line 161
    .line 162
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 163
    .line 164
    invoke-static {p2, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    shr-int/lit8 v0, v1, 0x6

    .line 168
    .line 169
    and-int/lit8 v0, v0, 0xe

    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 183
    .line 184
    .line 185
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    if-eqz p2, :cond_a

    .line 190
    .line 191
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;

    .line 192
    .line 193
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 197
    .line 198
    :cond_a
    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    :goto_1
    if-nez v2, :cond_2

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_2
    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 27
    .line 28
    invoke-virtual {v3, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    if-eq v2, p2, :cond_4

    .line 33
    .line 34
    new-instance v3, Landroidx/collection/MutableScatterSet;

    .line 35
    .line 36
    invoke-direct {v3}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-object p2, v3

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    :goto_2
    move-object p2, v2

    .line 48
    :goto_3
    if-eqz v1, :cond_5

    .line 49
    .line 50
    not-int v0, v0

    .line 51
    iget-object v1, p0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p1, v1, v0

    .line 54
    .line 55
    iget-object p0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p2, p0, v0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    iget-object p0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 61
    .line 62
    aput-object p2, p0, v0

    .line 63
    .line 64
    return-void
.end method

.method public static addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "videoId"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string p1, "cpn"

    .line 10
    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string p1, "contentCheckOk"

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const-string p1, "racyCheckOk"

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static varargs arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v1, Lkotlin/collections/ArrayAsCollection;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static binarySearch$default(Ljava/util/ArrayList;Ljava/lang/Comparable;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, ")."

    .line 14
    .line 15
    if-ltz v0, :cond_4

    .line 16
    .line 17
    if-gt v0, v1, :cond_3

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_0
    if-gt v2, v0, :cond_2

    .line 22
    .line 23
    add-int v1, v2, v0

    .line 24
    .line 25
    ushr-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/Comparable;

    .line 32
    .line 33
    invoke-static {v3, p1}, Landroidx/room/Room;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-gez v3, :cond_0

    .line 38
    .line 39
    add-int/lit8 v2, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    if-lez v3, :cond_1

    .line 43
    .line 44
    add-int/lit8 v0, v1, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return v1

    .line 48
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    neg-int p0, v2

    .line 51
    return p0

    .line 52
    :cond_3
    const-string/jumbo p0, "toIndex ("

    .line 53
    .line 54
    .line 55
    const-string p1, ") is greater than size ("

    .line 56
    .line 57
    invoke-static {p0, v0, p1, v1, v3}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "fromIndex ("

    .line 66
    .line 67
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ") is greater than toIndex ("

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public static buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gtz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x2e

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v0, 0x7b

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static final commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static constructor-impl$default()Landroidx/collection/MutableScatterMap;
    .locals 1

    .line 1
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 2
    .line 3
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static createListBuilder()Lkotlin/collections/builders/ListBuilder;
    .locals 2

    .line 1
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    const/4 v0, 0x0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    const v1, 0x7f0a042e

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    :goto_1
    if-eqz v1, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-static {p0}, Lkotlin/io/CloseableKt;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of v1, p0, Landroid/view/View;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    check-cast p0, Landroid/view/View;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object p0, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-object v0
.end method

.method public static final getAndroidTypefaceStyle-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)I
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 4
    .line 5
    iget v0, v0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ltz p0, :cond_0

    .line 14
    .line 15
    move p0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p0, v0

    .line 18
    :goto_0
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    move p1, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move p1, v0

    .line 23
    :goto_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    return p0

    .line 29
    :cond_2
    if-eqz p0, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    if-eqz p1, :cond_4

    .line 33
    .line 34
    const/4 p0, 0x2

    .line 35
    return p0

    .line 36
    :cond_4
    return v0
.end method

.method public static getLastIndex(Ljava/util/List;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    add-int/lit8 p0, p0, -0x1

    .line 9
    .line 10
    return p0
.end method

.method public static getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 6
    .line 7
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    aget-object v1, v1, v2

    .line 13
    .line 14
    invoke-static {v1, p0, v1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-array v1, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v3, "2"

    .line 21
    .line 22
    aput-object v3, v1, v2

    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    aget-object v1, v1, v2

    .line 30
    .line 31
    invoke-static {v1, v3, v1, v3}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 36
    .line 37
    const-string v4, "User-Agent"

    .line 38
    .line 39
    invoke-direct {v3, v4, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Ljava/util/AbstractMap$SimpleEntry;

    .line 43
    .line 44
    const-string v4, "X-Goog-Api-Format-Version"

    .line 45
    .line 46
    invoke-direct {p0, v4, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    new-array v4, v1, [Ljava/util/Map$Entry;

    .line 51
    .line 52
    aput-object v3, v4, v2

    .line 53
    .line 54
    aput-object p0, v4, v0

    .line 55
    .line 56
    new-instance p0, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {p0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    if-ge v2, v1, :cond_1

    .line 62
    .line 63
    aget-object v0, v4, v2

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const-string p0, "duplicate key: "

    .line 89
    .line 90
    invoke-static {v3, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return-object p0

    .line 99
    :cond_1
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method public static getVisionOsPlayerResponse(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Lorg/jsoup/parser/TokenData;

    .line 8
    .line 9
    new-instance v4, Lokhttp3/Dispatcher;

    .line 10
    .line 11
    const-string v5, "101"

    .line 12
    .line 13
    const-string v6, "WATCH"

    .line 14
    .line 15
    const-string v7, "VISIONOS"

    .line 16
    .line 17
    const-string v8, "1.02"

    .line 18
    .line 19
    invoke-direct {v4, v7, v8, v5, v6}, Lokhttp3/Dispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v9, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 23
    .line 24
    const-string v15, "25.6.0.23O471"

    .line 25
    .line 26
    const/4 v10, -0x1

    .line 27
    const-string v11, "MOBILE"

    .line 28
    .line 29
    const-string v12, "Apple"

    .line 30
    .line 31
    const-string v13, "RealityDevice14,1"

    .line 32
    .line 33
    const-string/jumbo v14, "visionOS"

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/node/RulerTrackingMap;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v5, 0xc

    .line 40
    .line 41
    invoke-direct {v3, v4, v9, v5}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisionOsUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v6}, Lorg/jsoup/Jsoup;->getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v7, "https://www.youtube.com/youtubei/v1/"

    .line 53
    .line 54
    invoke-static {v3, v2, v1, v6, v7}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lorg/jsoup/parser/TokenData;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iput-object v7, v4, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v2, v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/jsoup/parser/TokenData;)Lcom/grack/nanojson/JsonBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    move-object/from16 v3, p1

    .line 65
    .line 66
    invoke-static {v1, v0, v3}, Lorg/jsoup/Jsoup;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v1, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 72
    .line 73
    invoke-static {v1}, Lorg/jsoup/Jsoup;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    .line 84
    .line 85
    invoke-static {v5, v3}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->generate(ILjava/util/Random;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const-string v4, "https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t="

    .line 90
    .line 91
    const-string v5, "&id="

    .line 92
    .line 93
    invoke-static {v4, v3, v5, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v3, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 98
    .line 99
    invoke-virtual {v3, v0, v6, v1, v2}, Lkotlin/io/CloseableKt;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Landroidx/recyclerview/widget/ChildHelper;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Parser;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method

.method public static getWebMetadataPlayerResponse(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 4

    .line 1
    invoke-static {}, Lorg/jsoup/parser/TokenData;->ofWebClient()Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lokhttp3/Dispatcher;

    .line 8
    .line 9
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "https://www.youtube.com/youtubei/v1/"

    .line 20
    .line 21
    invoke-static {v0, p0, p1, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lorg/jsoup/parser/TokenData;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iput-object v3, v1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/jsoup/parser/TokenData;)Lcom/grack/nanojson/JsonBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p1, p2, v0}, Lorg/jsoup/Jsoup;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 38
    .line 39
    invoke-static {p1}, Lorg/jsoup/Jsoup;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object p2, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 50
    .line 51
    const-string v0, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,videoDetails.thumbnail.thumbnails,videoDetails.videoId"

    .line 52
    .line 53
    invoke-virtual {p2, v0, v2, p1, p0}, Lkotlin/io/CloseableKt;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Landroidx/recyclerview/widget/ChildHelper;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public static final headersCheckName(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x21

    .line 22
    .line 23
    if-gt v3, v2, :cond_0

    .line 24
    .line 25
    const/16 v3, 0x7f

    .line 26
    .line 27
    if-ge v2, v3, :cond_0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Unexpected char 0x"

    .line 35
    .line 36
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x10

    .line 40
    .line 41
    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x2

    .line 56
    if-ge v3, v4, :cond_1

    .line 57
    .line 58
    const-string v3, "0"

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v2, " at "

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " in header name: "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_2
    return-void

    .line 98
    :cond_3
    const-string p0, "name is empty"

    .line 99
    .line 100
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static final headersCheckValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x9

    .line 19
    .line 20
    if-eq v2, v3, :cond_3

    .line 21
    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    if-gt v3, v2, :cond_0

    .line 25
    .line 26
    const/16 v3, 0x7f

    .line 27
    .line 28
    if-ge v2, v3, :cond_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Unexpected char 0x"

    .line 34
    .line 35
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x10

    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x2

    .line 55
    if-ge v3, v4, :cond_1

    .line 56
    .line 57
    const-string v3, "0"

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " at "

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, " in "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " value"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lokhttp3/internal/_UtilCommonKt;->isSensitiveHeader(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    const-string p0, ""

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const-string p1, ": "

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    return-void
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

.method public static listOf(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 15
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static varargs listOf([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final migrateDatabase(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "androidx.work.workdb"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Landroidx/work/impl/WorkDatabasePathHelperKt;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "Migrating WorkDatabase to the no-backup directory"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object v1, Landroidx/work/impl/WorkDatabasePathHelperKt;->DATABASE_EXTRA_FILES:[Ljava/lang/String;

    .line 45
    .line 46
    array-length v2, v1

    .line 47
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/16 v3, 0x10

    .line 52
    .line 53
    if-ge v2, v3, :cond_0

    .line 54
    .line 55
    move v2, v3

    .line 56
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 59
    .line 60
    .line 61
    array-length v2, v1

    .line 62
    const/4 v4, 0x0

    .line 63
    :goto_0
    if-ge v4, v2, :cond_1

    .line 64
    .line 65
    aget-object v5, v1, v4

    .line 66
    .line 67
    new-instance v6, Ljava/io/File;

    .line 68
    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v7, Ljava/io/File;

    .line 92
    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v5, Lkotlin/Pair;

    .line 116
    .line 117
    invoke-direct {v5, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    new-instance v1, Lkotlin/Pair;

    .line 135
    .line 136
    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_2

    .line 144
    .line 145
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    goto :goto_1

    .line 150
    :cond_2
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 151
    .line 152
    invoke-direct {p0, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Ljava/io/File;

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Ljava/io/File;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_3

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_4

    .line 209
    .line 210
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sget-object v3, Landroidx/work/impl/WorkDatabasePathHelperKt;->TAG:Ljava/lang/String;

    .line 215
    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v5, "Over-writing contents of "

    .line 219
    .line 220
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger$LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_4
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_5

    .line 238
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string v3, "Migrated "

    .line 242
    .line 243
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string/jumbo v1, "to "

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    goto :goto_3

    .line 263
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v3, "Renaming "

    .line 266
    .line 267
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v1, " to "

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v0, " failed"

    .line 282
    .line 283
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    :goto_3
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    sget-object v2, Landroidx/work/impl/WorkDatabasePathHelperKt;->TAG:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_6
    return-void
.end method

.method public static varargs mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v1, Lkotlin/collections/ArrayAsCollection;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 22
    .line 23
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/StringReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lorg/jsoup/parser/Parser;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->initialiseParse(Ljava/io/Reader;Lorg/jsoup/parser/Parser;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->runParser()V

    .line 20
    .line 21
    .line 22
    iget-object p0, v0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    return p2

    .line 31
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_3
    return v1
.end method

.method public static final removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x2

    .line 5
    .line 6
    if-ltz v1, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    aget-wide v4, v0, v3

    .line 11
    .line 12
    not-long v6, v4

    .line 13
    const/4 v8, 0x7

    .line 14
    shl-long/2addr v6, v8

    .line 15
    and-long/2addr v6, v4

    .line 16
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v6, v8

    .line 22
    cmp-long v6, v6, v8

    .line 23
    .line 24
    if-eqz v6, :cond_4

    .line 25
    .line 26
    sub-int v6, v3, v1

    .line 27
    .line 28
    not-int v6, v6

    .line 29
    ushr-int/lit8 v6, v6, 0x1f

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    rsub-int/lit8 v6, v6, 0x8

    .line 34
    .line 35
    move v8, v2

    .line 36
    :goto_1
    if-ge v8, v6, :cond_3

    .line 37
    .line 38
    const-wide/16 v9, 0xff

    .line 39
    .line 40
    and-long/2addr v9, v4

    .line 41
    const-wide/16 v11, 0x80

    .line 42
    .line 43
    cmp-long v9, v9, v11

    .line 44
    .line 45
    if-gez v9, :cond_2

    .line 46
    .line 47
    shl-int/lit8 v9, v3, 0x3

    .line 48
    .line 49
    add-int/2addr v9, v8

    .line 50
    iget-object v10, p0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 51
    .line 52
    aget-object v10, v10, v9

    .line 53
    .line 54
    iget-object v10, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 55
    .line 56
    aget-object v10, v10, v9

    .line 57
    .line 58
    instance-of v11, v10, Landroidx/collection/MutableScatterSet;

    .line 59
    .line 60
    if-eqz v11, :cond_0

    .line 61
    .line 62
    check-cast v10, Landroidx/collection/MutableScatterSet;

    .line 63
    .line 64
    invoke-virtual {v10, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    if-ne v10, p1, :cond_1

    .line 73
    .line 74
    const/4 v10, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    move v10, v2

    .line 77
    :goto_2
    if-eqz v10, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, v9}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_2
    shr-long/2addr v4, v7

    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-ne v6, v7, :cond_5

    .line 87
    .line 88
    :cond_4
    if-eq v3, v1, :cond_5

    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    return-void
.end method

.method public static showKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public static string(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/grack/nanojson/JsonStringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonStringWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static throwIndexOverflow()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 2
    .line 3
    const-string v1, "Index overflow has happened."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method


# virtual methods
.method public abstract clampViewPositionHorizontal(ILandroid/view/View;)I
.end method

.method public abstract clampViewPositionVertical(ILandroid/view/View;)I
.end method

.method public abstract getCornerPath(Lcom/google/android/material/shape/ShapePath;FF)V
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getViewVerticalDragRange()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/Jsoup;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Lorg/jsoup/Jsoup;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onEdgeDragStarted(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onEdgeTouched()V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewCaptured(ILandroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onViewDragStateChanged(I)V
.end method

.method public abstract onViewPositionChanged(Landroid/view/View;II)V
.end method

.method public abstract onViewReleased(Landroid/view/View;FF)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/Jsoup;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public abstract tryCaptureView(ILandroid/view/View;)Z
.end method
