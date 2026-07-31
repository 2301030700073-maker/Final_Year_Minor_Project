.class public final synthetic Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v1, p1

    .line 17
    .line 18
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 19
    .line 20
    move-object/from16 v2, p2

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    move-object/from16 v7, p3

    .line 25
    .line 26
    check-cast v7, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    and-int/lit8 v1, v7, 0x11

    .line 36
    .line 37
    if-eq v1, v4, :cond_0

    .line 38
    .line 39
    move v5, v6

    .line 40
    :cond_0
    and-int/lit8 v1, v7, 0x1

    .line 41
    .line 42
    move-object v12, v2

    .line 43
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 44
    .line 45
    invoke-virtual {v12, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const v1, 0x7f12058e

    .line 52
    .line 53
    .line 54
    invoke-static {v12, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const/4 v13, 0x0

    .line 59
    const/16 v14, 0x3c

    .line 60
    .line 61
    iget-object v7, v0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    invoke-static/range {v6 .. v14}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f12058f

    .line 71
    .line 72
    .line 73
    invoke-static {v12, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 78
    .line 79
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 84
    .line 85
    iget-wide v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->error:J

    .line 86
    .line 87
    new-instance v10, Landroidx/compose/ui/graphics/Color;

    .line 88
    .line 89
    invoke-direct {v10, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 90
    .line 91
    .line 92
    const/16 v14, 0x2c

    .line 93
    .line 94
    iget-object v7, v0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    invoke-static/range {v6 .. v14}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-object v3

    .line 104
    :pswitch_0
    move-object/from16 v1, p1

    .line 105
    .line 106
    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 107
    .line 108
    move-object/from16 v7, p2

    .line 109
    .line 110
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 111
    .line 112
    move-object/from16 v8, p3

    .line 113
    .line 114
    check-cast v8, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    and-int/lit8 v1, v8, 0x11

    .line 124
    .line 125
    if-eq v1, v4, :cond_2

    .line 126
    .line 127
    move v5, v6

    .line 128
    :cond_2
    and-int/lit8 v1, v8, 0x1

    .line 129
    .line 130
    move-object v12, v7

    .line 131
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 132
    .line 133
    invoke-virtual {v12, v1, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    const-string v1, "thundermail_panel"

    .line 140
    .line 141
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 146
    .line 147
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    const/high16 v8, 0x42000000    # 32.0f

    .line 157
    .line 158
    const/4 v9, 0x7

    .line 159
    const/4 v5, 0x0

    .line 160
    const/4 v6, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    const/4 v11, 0x0

    .line 167
    const/4 v13, 0x0

    .line 168
    iget-object v8, v0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 169
    .line 170
    iget-object v9, v0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 171
    .line 172
    invoke-static/range {v8 .. v13}, Lkotlin/io/CloseableKt;->ThundermailButtonPanel(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Landroidx/compose/runtime/Composer;I)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 177
    .line 178
    .line 179
    :goto_1
    return-object v3

    .line 180
    :pswitch_1
    move-object/from16 v1, p1

    .line 181
    .line 182
    check-cast v1, Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    .line 183
    .line 184
    move-object/from16 v7, p2

    .line 185
    .line 186
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 187
    .line 188
    move-object/from16 v8, p3

    .line 189
    .line 190
    check-cast v8, Ljava/lang/Integer;

    .line 191
    .line 192
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    and-int/lit8 v1, v8, 0x11

    .line 200
    .line 201
    if-eq v1, v4, :cond_4

    .line 202
    .line 203
    move v1, v6

    .line 204
    goto :goto_2

    .line 205
    :cond_4
    move v1, v5

    .line 206
    :goto_2
    and-int/lit8 v4, v8, 0x1

    .line 207
    .line 208
    move-object v11, v7

    .line 209
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 210
    .line 211
    invoke-virtual {v11, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_5

    .line 216
    .line 217
    const v1, 0x7f1202d8

    .line 218
    .line 219
    .line 220
    invoke-static {v11, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    sget-object v4, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 225
    .line 226
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 227
    .line 228
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 233
    .line 234
    iget-wide v6, v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 235
    .line 236
    const/16 v14, 0x3d

    .line 237
    .line 238
    invoke-static {v6, v7, v11, v14}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedButtonColors-5tl4gsc(JLandroidx/compose/runtime/Composer;I)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 247
    .line 248
    iget-wide v9, v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 249
    .line 250
    const/16 v12, 0xc00

    .line 251
    .line 252
    const/4 v13, 0x5

    .line 253
    const/4 v8, 0x0

    .line 254
    invoke-static/range {v8 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedButtonBorder-RIQooxk(ZJLandroidx/compose/runtime/Composer;II)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    const/16 v8, 0xc00

    .line 259
    .line 260
    const/4 v9, 0x3

    .line 261
    invoke-static {v5, v7, v11, v8, v9}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedShape(ZLapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;Landroidx/compose/runtime/Composer;II)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    sget-object v12, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Thundermail:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 266
    .line 267
    const/16 v18, 0x8c

    .line 268
    .line 269
    move v10, v9

    .line 270
    iget-object v9, v0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 271
    .line 272
    move v13, v10

    .line 273
    const/4 v10, 0x0

    .line 274
    move-object/from16 v16, v11

    .line 275
    .line 276
    const/4 v11, 0x0

    .line 277
    const/4 v15, 0x0

    .line 278
    const/16 v17, 0x0

    .line 279
    .line 280
    move/from16 v19, v8

    .line 281
    .line 282
    move-object v8, v1

    .line 283
    move v1, v13

    .line 284
    move-object v13, v6

    .line 285
    move v6, v14

    .line 286
    move-object v14, v7

    .line 287
    move/from16 v7, v19

    .line 288
    .line 289
    invoke-static/range {v8 .. v18}, Lorg/jsoup/helper/Validate;->ButtonOutlined(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 290
    .line 291
    .line 292
    move-object/from16 v11, v16

    .line 293
    .line 294
    sget-object v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 295
    .line 296
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 301
    .line 302
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    const/high16 v8, 0x41800000    # 16.0f

    .line 306
    .line 307
    invoke-static {v2, v8}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 312
    .line 313
    .line 314
    const v2, 0x7f1202d7

    .line 315
    .line 316
    .line 317
    invoke-static {v11, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    check-cast v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 326
    .line 327
    iget-wide v8, v8, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 328
    .line 329
    invoke-static {v8, v9, v11, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedButtonColors-5tl4gsc(JLandroidx/compose/runtime/Composer;I)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 338
    .line 339
    iget-wide v9, v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 340
    .line 341
    const/16 v12, 0xc00

    .line 342
    .line 343
    const/4 v13, 0x5

    .line 344
    const/4 v8, 0x0

    .line 345
    invoke-static/range {v8 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedButtonBorder-RIQooxk(ZJLandroidx/compose/runtime/Composer;II)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-static {v5, v4, v11, v7, v1}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonDefaults;->outlinedShape(ZLapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonBorderStroke;Landroidx/compose/runtime/Composer;II)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;

    .line 350
    .line 351
    .line 352
    move-result-object v14

    .line 353
    sget-object v12, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->QrCode:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 354
    .line 355
    iget-object v9, v0, Lnet/thunderbird/feature/thundermail/ui/component/ThundermailButtonPanelKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function0;

    .line 356
    .line 357
    const/4 v10, 0x0

    .line 358
    const/4 v11, 0x0

    .line 359
    move-object v8, v2

    .line 360
    move-object v13, v6

    .line 361
    invoke-static/range {v8 .. v18}, Lorg/jsoup/helper/Validate;->ButtonOutlined(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonColors;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonShape;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 362
    .line 363
    .line 364
    goto :goto_3

    .line 365
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 366
    .line 367
    .line 368
    :goto_3
    return-object v3

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
