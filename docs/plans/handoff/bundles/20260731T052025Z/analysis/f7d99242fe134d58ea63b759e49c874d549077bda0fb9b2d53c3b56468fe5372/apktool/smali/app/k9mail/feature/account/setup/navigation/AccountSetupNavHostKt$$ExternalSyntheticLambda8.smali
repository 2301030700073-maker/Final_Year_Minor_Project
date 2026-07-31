.class public final synthetic Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 11
    iput p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x90

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    iget-object v10, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    check-cast v0, Lkotlinx/collections/immutable/ImmutableSet;

    .line 26
    .line 27
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    move-object/from16 v1, p1

    .line 30
    .line 31
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 32
    .line 33
    move-object/from16 v6, p2

    .line 34
    .line 35
    check-cast v6, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    move-object/from16 v7, p3

    .line 42
    .line 43
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 44
    .line 45
    move-object/from16 v11, p4

    .line 46
    .line 47
    check-cast v11, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    and-int/lit8 v1, v11, 0x30

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    move-object v1, v7

    .line 61
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 62
    .line 63
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    move v3, v4

    .line 70
    :cond_0
    or-int/2addr v11, v3

    .line 71
    :cond_1
    and-int/lit16 v1, v11, 0x91

    .line 72
    .line 73
    if-eq v1, v2, :cond_2

    .line 74
    .line 75
    move v8, v5

    .line 76
    :cond_2
    and-int/lit8 v1, v11, 0x1

    .line 77
    .line 78
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 79
    .line 80
    invoke-virtual {v7, v1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 91
    .line 92
    iget-object v11, v0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;->title:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v12, v0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;->supportingText:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v1, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;

    .line 97
    .line 98
    invoke-direct {v1, v0, v10, v6}, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogKt$$ExternalSyntheticLambda7;-><init>(Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;Lkotlin/jvm/functions/Function1;I)V

    .line 99
    .line 100
    .line 101
    const v0, -0x2e876c96

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    const/16 v18, 0x6180

    .line 109
    .line 110
    const/16 v19, 0x28

    .line 111
    .line 112
    const/4 v14, 0x0

    .line 113
    sget-object v15, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;->Expanded:Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;

    .line 114
    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    move-object/from16 v17, v7

    .line 118
    .line 119
    invoke-static/range {v11 .. v19}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->ErrorBannerInlineNotificationCard(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    move-object/from16 v17, v7

    .line 124
    .line 125
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-object v9

    .line 129
    :pswitch_0
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 130
    .line 131
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 132
    .line 133
    move-object/from16 v1, p1

    .line 134
    .line 135
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 136
    .line 137
    move v6, v5

    .line 138
    move-object/from16 v5, p2

    .line 139
    .line 140
    check-cast v5, Lkotlinx/collections/immutable/ImmutableSet;

    .line 141
    .line 142
    move-object/from16 v7, p3

    .line 143
    .line 144
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 145
    .line 146
    move-object/from16 v11, p4

    .line 147
    .line 148
    check-cast v11, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    and-int/lit8 v1, v11, 0x30

    .line 161
    .line 162
    if-nez v1, :cond_5

    .line 163
    .line 164
    move-object v1, v7

    .line 165
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 166
    .line 167
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    move v3, v4

    .line 174
    :cond_4
    or-int/2addr v11, v3

    .line 175
    :cond_5
    and-int/lit16 v1, v11, 0x91

    .line 176
    .line 177
    if-eq v1, v2, :cond_6

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    move v6, v8

    .line 181
    :goto_1
    and-int/lit8 v1, v11, 0x1

    .line 182
    .line 183
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 184
    .line 185
    invoke-virtual {v7, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-nez v1, :cond_7

    .line 196
    .line 197
    const v1, 0x246fb108

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 201
    .line 202
    .line 203
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 204
    .line 205
    shr-int/lit8 v1, v11, 0x3

    .line 206
    .line 207
    and-int/lit8 v1, v1, 0xe

    .line 208
    .line 209
    or-int/lit16 v1, v1, 0xc00

    .line 210
    .line 211
    move-object v3, v0

    .line 212
    move v0, v1

    .line 213
    move-object v1, v7

    .line 214
    move-object v4, v10

    .line 215
    invoke-static/range {v0 .. v5}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->BannerInlineNotificationListHostLayout(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableSet;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_7
    move-object v1, v7

    .line 223
    const v0, 0x24740fb2

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_8
    move-object v1, v7

    .line 234
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 235
    .line 236
    .line 237
    :goto_2
    return-object v9

    .line 238
    :pswitch_1
    move v6, v5

    .line 239
    move-object v12, v10

    .line 240
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 241
    .line 242
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;

    .line 243
    .line 244
    move-object/from16 v1, p1

    .line 245
    .line 246
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 247
    .line 248
    move-object/from16 v5, p2

    .line 249
    .line 250
    check-cast v5, Ljava/lang/Boolean;

    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    move-object/from16 v7, p3

    .line 257
    .line 258
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 259
    .line 260
    move-object/from16 v10, p4

    .line 261
    .line 262
    check-cast v10, Ljava/lang/Integer;

    .line 263
    .line 264
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    and-int/lit8 v1, v10, 0x30

    .line 272
    .line 273
    if-nez v1, :cond_a

    .line 274
    .line 275
    move-object v1, v7

    .line 276
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 277
    .line 278
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_9

    .line 283
    .line 284
    move v3, v4

    .line 285
    :cond_9
    or-int/2addr v10, v3

    .line 286
    :cond_a
    and-int/lit16 v1, v10, 0x91

    .line 287
    .line 288
    if-eq v1, v2, :cond_b

    .line 289
    .line 290
    move v1, v6

    .line 291
    goto :goto_3

    .line 292
    :cond_b
    move v1, v8

    .line 293
    :goto_3
    and-int/lit8 v2, v10, 0x1

    .line 294
    .line 295
    move-object v15, v7

    .line 296
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 297
    .line 298
    invoke-virtual {v15, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_10

    .line 303
    .line 304
    if-eqz v5, :cond_d

    .line 305
    .line 306
    const v0, -0x3dcf359d

    .line 307
    .line 308
    .line 309
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 310
    .line 311
    .line 312
    sget-object v11, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Check:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 313
    .line 314
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 315
    .line 316
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 321
    .line 322
    iget-wide v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->secondaryContainer:J

    .line 323
    .line 324
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 329
    .line 330
    iget-wide v3, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->secondaryContainer:J

    .line 331
    .line 332
    invoke-static {v3, v4, v15}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v19

    .line 336
    sget-wide v21, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 337
    .line 338
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 339
    .line 340
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 345
    .line 346
    iget-object v3, v0, Landroidx/compose/material3/ColorScheme;->defaultFilledIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    .line 347
    .line 348
    if-nez v3, :cond_c

    .line 349
    .line 350
    new-instance v23, Landroidx/compose/material3/IconButtonColors;

    .line 351
    .line 352
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$5:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 353
    .line 354
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 355
    .line 356
    .line 357
    move-result-wide v24

    .line 358
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->Color$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 359
    .line 360
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 361
    .line 362
    .line 363
    move-result-wide v26

    .line 364
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->DisabledContainerColor$3:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 365
    .line 366
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 367
    .line 368
    .line 369
    move-result-wide v3

    .line 370
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->DisabledContainerOpacity$3:F

    .line 371
    .line 372
    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 373
    .line 374
    .line 375
    move-result-wide v28

    .line 376
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->DisabledColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 377
    .line 378
    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 379
    .line 380
    .line 381
    move-result-wide v3

    .line 382
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->DisabledOpacity:F

    .line 383
    .line 384
    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 385
    .line 386
    .line 387
    move-result-wide v30

    .line 388
    invoke-direct/range {v23 .. v31}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v3, v23

    .line 392
    .line 393
    iput-object v3, v0, Landroidx/compose/material3/ColorScheme;->defaultFilledIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    .line 394
    .line 395
    :cond_c
    move-object/from16 v16, v3

    .line 396
    .line 397
    move-wide/from16 v23, v21

    .line 398
    .line 399
    move-wide/from16 v17, v1

    .line 400
    .line 401
    invoke-virtual/range {v16 .. v24}, Landroidx/compose/material3/IconButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/IconButtonColors;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {v0}, Landroidx/compose/ui/unit/IntRectKt;->toButtonIconColors(Landroidx/compose/material3/IconButtonColors;)Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 410
    .line 411
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    const/high16 v1, 0x42400000    # 48.0f

    .line 421
    .line 422
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 423
    .line 424
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 429
    .line 430
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    const/high16 v2, 0x40800000    # 4.0f

    .line 440
    .line 441
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    const/16 v17, 0x0

    .line 446
    .line 447
    const/16 v18, 0x18

    .line 448
    .line 449
    const/4 v13, 0x0

    .line 450
    const/4 v14, 0x0

    .line 451
    move-object v10, v12

    .line 452
    move-object/from16 v16, v15

    .line 453
    .line 454
    move-object v15, v0

    .line 455
    move-object v12, v1

    .line 456
    invoke-static/range {v10 .. v18}, Landroidx/compose/ui/unit/IntRectKt;->ButtonIcon(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lapp/k9mail/core/ui/compose/designsystem/atom/button/ButtonIconColors;Landroidx/compose/runtime/Composer;II)V

    .line 457
    .line 458
    .line 459
    move-object/from16 v15, v16

    .line 460
    .line 461
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 462
    .line 463
    .line 464
    goto :goto_5

    .line 465
    :cond_d
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 466
    .line 467
    if-eqz v1, :cond_f

    .line 468
    .line 469
    const v1, 0x274c3400

    .line 470
    .line 471
    .line 472
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 473
    .line 474
    .line 475
    iget-object v10, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;->avatar:Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;

    .line 476
    .line 477
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemLeadingConfiguration;->avatarColor:Landroidx/compose/ui/graphics/Color;

    .line 478
    .line 479
    if-nez v0, :cond_e

    .line 480
    .line 481
    const v0, 0x274c4f9c

    .line 482
    .line 483
    .line 484
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 485
    .line 486
    .line 487
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 488
    .line 489
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 494
    .line 495
    iget-wide v0, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->secondaryContainer:J

    .line 496
    .line 497
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 498
    .line 499
    .line 500
    goto :goto_4

    .line 501
    :cond_e
    const v1, 0x274c4a0a

    .line 502
    .line 503
    .line 504
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 508
    .line 509
    .line 510
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 511
    .line 512
    :goto_4
    new-instance v11, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageItemAvatarCircleColors;

    .line 513
    .line 514
    const v2, 0x3e19999a    # 0.15f

    .line 515
    .line 516
    .line 517
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 518
    .line 519
    .line 520
    move-result-wide v19

    .line 521
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 522
    .line 523
    invoke-static {v0, v1, v15}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    .line 524
    .line 525
    .line 526
    move-result-wide v21

    .line 527
    move-wide/from16 v17, v0

    .line 528
    .line 529
    move-object/from16 v16, v11

    .line 530
    .line 531
    invoke-direct/range {v16 .. v22}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageItemAvatarCircleColors;-><init>(JJJ)V

    .line 532
    .line 533
    .line 534
    const/4 v14, 0x0

    .line 535
    const/16 v16, 0x0

    .line 536
    .line 537
    const/4 v13, 0x0

    .line 538
    invoke-static/range {v10 .. v16}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageItemAvatarCircle(Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageItemAvatarCircleColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 542
    .line 543
    .line 544
    goto :goto_5

    .line 545
    :cond_f
    const v0, 0x274c60ae

    .line 546
    .line 547
    .line 548
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 552
    .line 553
    .line 554
    goto :goto_5

    .line 555
    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 556
    .line 557
    .line 558
    :goto_5
    return-object v9

    .line 559
    :pswitch_2
    check-cast v10, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 560
    .line 561
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 562
    .line 563
    move-object/from16 v1, p1

    .line 564
    .line 565
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 566
    .line 567
    move-object/from16 v2, p2

    .line 568
    .line 569
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 570
    .line 571
    move-object/from16 v3, p3

    .line 572
    .line 573
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 574
    .line 575
    move-object/from16 v4, p4

    .line 576
    .line 577
    check-cast v4, Ljava/lang/Integer;

    .line 578
    .line 579
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 586
    .line 587
    .line 588
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 589
    .line 590
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    or-int/2addr v1, v2

    .line 599
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    if-nez v1, :cond_11

    .line 604
    .line 605
    if-ne v2, v6, :cond_12

    .line 606
    .line 607
    :cond_11
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 608
    .line 609
    const/16 v1, 0xd

    .line 610
    .line 611
    invoke-direct {v2, v1, v10, v0}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    :cond_12
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 618
    .line 619
    invoke-static {v7, v7, v2, v3, v8}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->PermissionsScreen(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 620
    .line 621
    .line 622
    return-object v9

    .line 623
    :pswitch_3
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 624
    .line 625
    check-cast v10, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 626
    .line 627
    move-object/from16 v1, p1

    .line 628
    .line 629
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 630
    .line 631
    move-object/from16 v2, p2

    .line 632
    .line 633
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 634
    .line 635
    move-object/from16 v3, p3

    .line 636
    .line 637
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 638
    .line 639
    move-object/from16 v4, p4

    .line 640
    .line 641
    check-cast v4, Ljava/lang/Integer;

    .line 642
    .line 643
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 650
    .line 651
    .line 652
    move-object v14, v3

    .line 653
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 654
    .line 655
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    if-nez v1, :cond_13

    .line 664
    .line 665
    if-ne v2, v6, :cond_14

    .line 666
    .line 667
    :cond_13
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 668
    .line 669
    const/16 v1, 0x1b

    .line 670
    .line 671
    invoke-direct {v2, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    :cond_14
    move-object v11, v2

    .line 678
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 679
    .line 680
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    or-int/2addr v1, v2

    .line 689
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    if-nez v1, :cond_15

    .line 694
    .line 695
    if-ne v2, v6, :cond_16

    .line 696
    .line 697
    :cond_15
    new-instance v2, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 698
    .line 699
    const/16 v1, 0xf

    .line 700
    .line 701
    invoke-direct {v2, v1, v0, v10}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 705
    .line 706
    .line 707
    :cond_16
    move-object v12, v2

    .line 708
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 709
    .line 710
    const/16 v15, 0x180

    .line 711
    .line 712
    const/16 v16, 0x0

    .line 713
    .line 714
    const/4 v13, 0x0

    .line 715
    invoke-static/range {v11 .. v16}, Lcom/fsck/k9/sasl/OAuthBearer;->AccountSetupNavHost(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    .line 716
    .line 717
    .line 718
    return-object v9

    .line 719
    :pswitch_4
    check-cast v10, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;

    .line 720
    .line 721
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 722
    .line 723
    move-object/from16 v1, p1

    .line 724
    .line 725
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 726
    .line 727
    move-object/from16 v2, p2

    .line 728
    .line 729
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 730
    .line 731
    move-object/from16 v3, p3

    .line 732
    .line 733
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 734
    .line 735
    move-object/from16 v4, p4

    .line 736
    .line 737
    check-cast v4, Ljava/lang/Integer;

    .line 738
    .line 739
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 746
    .line 747
    .line 748
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 749
    .line 750
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    or-int/2addr v1, v2

    .line 759
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    if-nez v1, :cond_17

    .line 764
    .line 765
    if-ne v2, v6, :cond_18

    .line 766
    .line 767
    :cond_17
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 768
    .line 769
    const/16 v1, 0xc

    .line 770
    .line 771
    invoke-direct {v2, v1, v10, v0}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    :cond_18
    move-object v11, v2

    .line 778
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 779
    .line 780
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v2

    .line 788
    if-nez v1, :cond_19

    .line 789
    .line 790
    if-ne v2, v6, :cond_1a

    .line 791
    .line 792
    :cond_19
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 793
    .line 794
    const/16 v1, 0x15

    .line 795
    .line 796
    invoke-direct {v2, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    :cond_1a
    move-object v12, v2

    .line 803
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 804
    .line 805
    invoke-static {v3}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v1

    .line 813
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v2

    .line 817
    or-int/2addr v1, v2

    .line 818
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    if-nez v1, :cond_1b

    .line 823
    .line 824
    if-ne v2, v6, :cond_1c

    .line 825
    .line 826
    :cond_1b
    const-class v1, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 827
    .line 828
    invoke-static {v1, v0, v7, v7, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    :cond_1c
    move-object v13, v2

    .line 833
    check-cast v13, Lnet/thunderbird/core/common/provider/AppNameProvider;

    .line 834
    .line 835
    invoke-static {v3}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    or-int/2addr v1, v2

    .line 848
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    if-nez v1, :cond_1d

    .line 853
    .line 854
    if-ne v2, v6, :cond_1e

    .line 855
    .line 856
    :cond_1d
    const-class v1, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;

    .line 857
    .line 858
    invoke-static {v1, v0, v7, v7, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    :cond_1e
    move-object v14, v2

    .line 863
    check-cast v14, Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;

    .line 864
    .line 865
    const/4 v15, 0x0

    .line 866
    const/16 v17, 0x0

    .line 867
    .line 868
    move-object/from16 v16, v3

    .line 869
    .line 870
    invoke-static/range {v11 .. v17}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeScreenKt;->WelcomeScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/core/common/provider/AppNameProvider;Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 871
    .line 872
    .line 873
    return-object v9

    .line 874
    :pswitch_5
    move-object/from16 v18, v10

    .line 875
    .line 876
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 877
    .line 878
    move-object/from16 v19, v0

    .line 879
    .line 880
    check-cast v19, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 881
    .line 882
    move-object/from16 v0, p1

    .line 883
    .line 884
    check-cast v0, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 885
    .line 886
    move-object/from16 v1, p2

    .line 887
    .line 888
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 889
    .line 890
    move-object/from16 v21, p3

    .line 891
    .line 892
    check-cast v21, Landroidx/compose/runtime/Composer;

    .line 893
    .line 894
    move-object/from16 v2, p4

    .line 895
    .line 896
    check-cast v2, Ljava/lang/Integer;

    .line 897
    .line 898
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    const/16 v22, 0x0

    .line 908
    .line 909
    const/16 v23, 0x4

    .line 910
    .line 911
    const/16 v20, 0x0

    .line 912
    .line 913
    invoke-static/range {v18 .. v23}, Lcom/fsck/k9/sasl/OAuthBearer;->AccountSetupNavHost(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    .line 914
    .line 915
    .line 916
    return-object v9

    .line 917
    :pswitch_6
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 918
    .line 919
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 920
    .line 921
    move-object/from16 v1, p1

    .line 922
    .line 923
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 924
    .line 925
    move-object/from16 v2, p2

    .line 926
    .line 927
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 928
    .line 929
    move-object/from16 v3, p3

    .line 930
    .line 931
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 932
    .line 933
    move-object/from16 v4, p4

    .line 934
    .line 935
    check-cast v4, Ljava/lang/Integer;

    .line 936
    .line 937
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 944
    .line 945
    .line 946
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 947
    .line 948
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    if-nez v1, :cond_1f

    .line 957
    .line 958
    if-ne v2, v6, :cond_20

    .line 959
    .line 960
    :cond_1f
    new-instance v2, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;

    .line 961
    .line 962
    const/4 v1, 0x2

    .line 963
    invoke-direct {v2, v1, v10}, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 967
    .line 968
    .line 969
    :cond_20
    move-object v11, v2

    .line 970
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 971
    .line 972
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    move-result v1

    .line 976
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    if-nez v1, :cond_21

    .line 981
    .line 982
    if-ne v2, v6, :cond_22

    .line 983
    .line 984
    :cond_21
    new-instance v2, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 985
    .line 986
    const/16 v1, 0x13

    .line 987
    .line 988
    invoke-direct {v2, v0, v1}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 992
    .line 993
    .line 994
    :cond_22
    move-object v12, v2

    .line 995
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 996
    .line 997
    invoke-static {v3}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    if-eqz v0, :cond_25

    .line 1002
    .line 1003
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v15

    .line 1007
    invoke-static {v3}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v17

    .line 1011
    const-class v1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 1012
    .line 1013
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v13

    .line 1017
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v14

    .line 1021
    const/16 v16, 0x0

    .line 1022
    .line 1023
    const/16 v18, 0x0

    .line 1024
    .line 1025
    invoke-static/range {v13 .. v18}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    move-object v13, v0

    .line 1030
    check-cast v13, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;

    .line 1031
    .line 1032
    invoke-static {v3}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v1

    .line 1040
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v2

    .line 1044
    or-int/2addr v1, v2

    .line 1045
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v2

    .line 1049
    if-nez v1, :cond_23

    .line 1050
    .line 1051
    if-ne v2, v6, :cond_24

    .line 1052
    .line 1053
    :cond_23
    const-class v1, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 1054
    .line 1055
    invoke-static {v1, v0, v7, v7, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    :cond_24
    move-object v14, v2

    .line 1060
    check-cast v14, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 1061
    .line 1062
    const/4 v15, 0x0

    .line 1063
    const/16 v17, 0x200

    .line 1064
    .line 1065
    move-object/from16 v16, v3

    .line 1066
    .line 1067
    invoke-static/range {v11 .. v17}, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountScreenKt;->CreateAccountScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 1068
    .line 1069
    .line 1070
    move-object v7, v9

    .line 1071
    goto :goto_6

    .line 1072
    :cond_25
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 1073
    .line 1074
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    :goto_6
    return-object v7

    .line 1078
    nop

    .line 1079
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
