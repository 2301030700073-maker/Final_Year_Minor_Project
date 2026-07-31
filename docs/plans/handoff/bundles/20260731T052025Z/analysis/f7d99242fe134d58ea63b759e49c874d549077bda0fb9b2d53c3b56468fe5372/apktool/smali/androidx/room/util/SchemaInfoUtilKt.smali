.class public abstract Landroidx/room/util/SchemaInfoUtilKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# static fields
.field public static _attachment:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static _security:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public static sDrawableCacheField:Ljava/lang/reflect/Field;

.field public static sDrawableCacheFieldFetched:Z

.field public static sResourcesImplField:Ljava/lang/reflect/Field;

.field public static sResourcesImplFieldFetched:Z

.field public static sThemedResourceCacheClazz:Ljava/lang/Class;

.field public static sThemedResourceCacheClazzFetched:Z

.field public static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field public static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method public static final AutoDiscoveryResultBodyView(Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-object/from16 v10, p3

    .line 12
    .line 13
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    const v0, -0x4c65b360

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v3, 0x2

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v3

    .line 31
    :goto_0
    or-int v0, p4, v0

    .line 32
    .line 33
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/16 v5, 0x20

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    move v4, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v4, 0x10

    .line 44
    .line 45
    :goto_1
    or-int/2addr v0, v4

    .line 46
    or-int/lit16 v0, v0, 0x180

    .line 47
    .line 48
    and-int/lit16 v4, v0, 0x93

    .line 49
    .line 50
    const/16 v6, 0x92

    .line 51
    .line 52
    const/4 v13, 0x1

    .line 53
    const/4 v14, 0x0

    .line 54
    if-eq v4, v6, :cond_2

    .line 55
    .line 56
    move v4, v13

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v4, v14

    .line 59
    :goto_2
    and-int/lit8 v6, v0, 0x1

    .line 60
    .line 61
    invoke-virtual {v10, v6, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_7

    .line 66
    .line 67
    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 68
    .line 69
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 70
    .line 71
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const/high16 v15, 0x41000000    # 8.0f

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-static {v7, v15, v6, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 88
    .line 89
    invoke-interface {v3, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 103
    .line 104
    new-instance v8, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    const/4 v9, 0x7

    .line 107
    invoke-direct {v8, v9}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v4, v15, v13, v8}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 111
    .line 112
    .line 113
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 114
    .line 115
    invoke-static {v4, v8, v10, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-wide v8, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 120
    .line 121
    ushr-long v11, v8, v5

    .line 122
    .line 123
    xor-long/2addr v8, v11

    .line 124
    long-to-int v5, v8

    .line 125
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-static {v10, v3}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 139
    .line 140
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 141
    .line 142
    .line 143
    iget-boolean v11, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 144
    .line 145
    if-eqz v11, :cond_3

    .line 146
    .line 147
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 152
    .line 153
    .line 154
    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 155
    .line 156
    invoke-static {v10, v4, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 157
    .line 158
    .line 159
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 160
    .line 161
    invoke-static {v10, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 169
    .line 170
    invoke-static {v10, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 171
    .line 172
    .line 173
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 174
    .line 175
    invoke-static {v10, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 176
    .line 177
    .line 178
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 179
    .line 180
    invoke-static {v10, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    iget-boolean v3, v1, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->isTrusted:Z

    .line 184
    .line 185
    if-nez v3, :cond_4

    .line 186
    .line 187
    const v3, 0x52131ef7

    .line 188
    .line 189
    .line 190
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 191
    .line 192
    .line 193
    sget-object v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 194
    .line 195
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v6, v15}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v10, v3}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 209
    .line 210
    .line 211
    const v3, 0x7f12016e

    .line 212
    .line 213
    .line 214
    invoke-static {v10, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    const/16 v11, 0x30

    .line 219
    .line 220
    const/16 v12, 0x7c

    .line 221
    .line 222
    move-object v4, v6

    .line 223
    const-wide/16 v5, 0x0

    .line 224
    .line 225
    move-object v8, v4

    .line 226
    move-object v4, v7

    .line 227
    const/4 v7, 0x0

    .line 228
    move-object v9, v8

    .line 229
    const/4 v8, 0x0

    .line 230
    move-object/from16 v16, v9

    .line 231
    .line 232
    const/4 v9, 0x0

    .line 233
    move-object/from16 v13, v16

    .line 234
    .line 235
    invoke-static/range {v3 .. v12}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_4
    move-object v13, v6

    .line 243
    move-object v4, v7

    .line 244
    const v3, 0x52181f0c

    .line 245
    .line 246
    .line 247
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 251
    .line 252
    .line 253
    :goto_4
    iget-object v3, v1, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->incomingServerSettings:Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 254
    .line 255
    instance-of v5, v3, Lapp/k9mail/autodiscovery/api/ImapServerSettings;

    .line 256
    .line 257
    if-eqz v5, :cond_5

    .line 258
    .line 259
    const v5, 0x521a5412

    .line 260
    .line 261
    .line 262
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 263
    .line 264
    .line 265
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 266
    .line 267
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-static {v13, v15}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-static {v10, v5}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 281
    .line 282
    .line 283
    move-object v7, v4

    .line 284
    iget-object v4, v3, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->hostname:Ljava/lang/String;

    .line 285
    .line 286
    iget v5, v3, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->port:I

    .line 287
    .line 288
    iget-object v6, v3, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 289
    .line 290
    iget-object v8, v3, Lapp/k9mail/autodiscovery/api/ImapServerSettings;->username:Ljava/lang/String;

    .line 291
    .line 292
    const/4 v9, 0x1

    .line 293
    const v11, 0x186006

    .line 294
    .line 295
    .line 296
    const-string v3, "IMAP"

    .line 297
    .line 298
    invoke-static/range {v3 .. v11}, Lkotlin/math/MathKt;->AutoDiscoveryServerSettingsView-Zl2X39w(Ljava/lang/String;Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V

    .line 299
    .line 300
    .line 301
    move-object v4, v7

    .line 302
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_5
    const v3, 0x522237ac

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 313
    .line 314
    .line 315
    :goto_5
    iget-object v3, v1, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->outgoingServerSettings:Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 316
    .line 317
    instance-of v5, v3, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;

    .line 318
    .line 319
    if-eqz v5, :cond_6

    .line 320
    .line 321
    const v5, 0x52246cd1

    .line 322
    .line 323
    .line 324
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 325
    .line 326
    .line 327
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 328
    .line 329
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 334
    .line 335
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-static {v13, v15}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-static {v10, v5}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 343
    .line 344
    .line 345
    move-object v7, v4

    .line 346
    iget-object v4, v3, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->hostname:Ljava/lang/String;

    .line 347
    .line 348
    iget v5, v3, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->port:I

    .line 349
    .line 350
    iget-object v6, v3, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->connectionSecurity:Lapp/k9mail/autodiscovery/api/ConnectionSecurity;

    .line 351
    .line 352
    iget-object v8, v3, Lapp/k9mail/autodiscovery/api/SmtpServerSettings;->username:Ljava/lang/String;

    .line 353
    .line 354
    const/4 v9, 0x0

    .line 355
    const v11, 0x186006

    .line 356
    .line 357
    .line 358
    const-string v3, "SMTP"

    .line 359
    .line 360
    invoke-static/range {v3 .. v11}, Lkotlin/math/MathKt;->AutoDiscoveryServerSettingsView-Zl2X39w(Ljava/lang/String;Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_6
    const v3, 0x522c542c

    .line 368
    .line 369
    .line 370
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 374
    .line 375
    .line 376
    :goto_6
    and-int/lit8 v0, v0, 0x70

    .line 377
    .line 378
    const/4 v3, 0x0

    .line 379
    invoke-static {v3, v2, v10, v0}, Landroidx/room/util/SchemaInfoUtilKt;->EditConfigurationButton(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 380
    .line 381
    .line 382
    const/4 v0, 0x1

    .line 383
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 384
    .line 385
    .line 386
    move-object v3, v13

    .line 387
    goto :goto_7

    .line 388
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 389
    .line 390
    .line 391
    move-object/from16 v3, p2

    .line 392
    .line 393
    :goto_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    if-eqz v6, :cond_8

    .line 398
    .line 399
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4;

    .line 400
    .line 401
    const/4 v5, 0x1

    .line 402
    move/from16 v4, p4

    .line 403
    .line 404
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultViewKt$$ExternalSyntheticLambda4;-><init>(Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;II)V

    .line 405
    .line 406
    .line 407
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 408
    .line 409
    :cond_8
    return-void
.end method

.method public static final BottomBar(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v8, p3

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p3, 0x1e806a18

    .line 5
    .line 6
    .line 7
    invoke-virtual {v8, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    const/4 p3, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p3, 0x2

    .line 19
    :goto_0
    or-int/2addr p3, p4

    .line 20
    invoke-virtual {v8, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr p3, v0

    .line 32
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x100

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v0, 0x80

    .line 42
    .line 43
    :goto_2
    or-int/2addr p3, v0

    .line 44
    and-int/lit16 v0, p3, 0x93

    .line 45
    .line 46
    const/16 v1, 0x92

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    if-eq v0, v1, :cond_3

    .line 50
    .line 51
    move v0, v2

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const/4 v0, 0x0

    .line 54
    :goto_3
    and-int/2addr p3, v2

    .line 55
    invoke-virtual {v8, p3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_5

    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/compose/foundation/ScrollState;->getCanScrollForward()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    const/high16 p3, 0x41000000    # 8.0f

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    const/4 p3, 0x0

    .line 71
    :goto_4
    const/16 v0, 0x180

    .line 72
    .line 73
    const/16 v1, 0xa

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-static {p3, v2, v8, v0, v1}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/SpringSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Landroidx/compose/ui/unit/Dp;

    .line 85
    .line 86
    iget v6, p3, Landroidx/compose/ui/unit/Dp;->value:F

    .line 87
    .line 88
    new-instance p3, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;

    .line 89
    .line 90
    invoke-direct {p3, p0, p1}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;-><init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    const v0, -0x3e874da5

    .line 94
    .line 95
    .line 96
    invoke-static {v0, p3, v8}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const/high16 v9, 0x30000

    .line 101
    .line 102
    const/16 v10, 0xf

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    const/4 v1, 0x0

    .line 106
    const-wide/16 v2, 0x0

    .line 107
    .line 108
    const-wide/16 v4, 0x0

    .line 109
    .line 110
    invoke-static/range {v0 .. v10}, Lkotlin/math/MathKt;->Surface-_UMDTes(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 115
    .line 116
    .line 117
    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    if-eqz p3, :cond_6

    .line 122
    .line 123
    new-instance v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    invoke-direct {v0, p0, p1, p2, p4}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/ScrollState;I)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 129
    .line 130
    :cond_6
    return-void
.end method

.method public static final CardOutlined(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move/from16 v8, p8

    .line 4
    .line 5
    move-object/from16 v6, p7

    .line 6
    .line 7
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v1, 0x3c95301a

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v1, v8, 0x6

    .line 16
    .line 17
    move-object/from16 v10, p0

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int/2addr v1, v8

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v8

    .line 33
    :goto_1
    and-int/lit8 v2, p9, 0x2

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    or-int/lit8 v1, v1, 0x30

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
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v1, v4

    .line 60
    :goto_3
    and-int/lit16 v4, v8, 0x180

    .line 61
    .line 62
    if-nez v4, :cond_7

    .line 63
    .line 64
    and-int/lit8 v4, p9, 0x4

    .line 65
    .line 66
    if-nez v4, :cond_5

    .line 67
    .line 68
    move-object/from16 v4, p2

    .line 69
    .line 70
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_6

    .line 75
    .line 76
    const/16 v5, 0x100

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move-object/from16 v4, p2

    .line 80
    .line 81
    :cond_6
    const/16 v5, 0x80

    .line 82
    .line 83
    :goto_4
    or-int/2addr v1, v5

    .line 84
    goto :goto_5

    .line 85
    :cond_7
    move-object/from16 v4, p2

    .line 86
    .line 87
    :goto_5
    and-int/lit16 v5, v8, 0xc00

    .line 88
    .line 89
    if-nez v5, :cond_a

    .line 90
    .line 91
    and-int/lit8 v5, p9, 0x8

    .line 92
    .line 93
    if-nez v5, :cond_9

    .line 94
    .line 95
    and-int/lit16 v5, v8, 0x1000

    .line 96
    .line 97
    if-nez v5, :cond_8

    .line 98
    .line 99
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    goto :goto_6

    .line 104
    :cond_8
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    :goto_6
    if-eqz v5, :cond_9

    .line 109
    .line 110
    const/16 v5, 0x800

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_9
    const/16 v5, 0x400

    .line 114
    .line 115
    :goto_7
    or-int/2addr v1, v5

    .line 116
    :cond_a
    and-int/lit16 v5, v8, 0x6000

    .line 117
    .line 118
    if-nez v5, :cond_b

    .line 119
    .line 120
    or-int/lit16 v1, v1, 0x2000

    .line 121
    .line 122
    :cond_b
    const/high16 v5, 0x30000

    .line 123
    .line 124
    and-int/2addr v5, v8

    .line 125
    if-nez v5, :cond_e

    .line 126
    .line 127
    and-int/lit8 v5, p9, 0x20

    .line 128
    .line 129
    if-nez v5, :cond_c

    .line 130
    .line 131
    move-object/from16 v5, p5

    .line 132
    .line 133
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_d

    .line 138
    .line 139
    const/high16 v7, 0x20000

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_c
    move-object/from16 v5, p5

    .line 143
    .line 144
    :cond_d
    const/high16 v7, 0x10000

    .line 145
    .line 146
    :goto_8
    or-int/2addr v1, v7

    .line 147
    goto :goto_9

    .line 148
    :cond_e
    move-object/from16 v5, p5

    .line 149
    .line 150
    :goto_9
    const/high16 v7, 0x180000

    .line 151
    .line 152
    and-int/2addr v7, v8

    .line 153
    if-nez v7, :cond_10

    .line 154
    .line 155
    move-object/from16 v7, p6

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_f

    .line 162
    .line 163
    const/high16 v9, 0x100000

    .line 164
    .line 165
    goto :goto_a

    .line 166
    :cond_f
    const/high16 v9, 0x80000

    .line 167
    .line 168
    :goto_a
    or-int/2addr v1, v9

    .line 169
    goto :goto_b

    .line 170
    :cond_10
    move-object/from16 v7, p6

    .line 171
    .line 172
    :goto_b
    const v9, 0x92493

    .line 173
    .line 174
    .line 175
    and-int/2addr v9, v1

    .line 176
    const v11, 0x92492

    .line 177
    .line 178
    .line 179
    const/4 v12, 0x0

    .line 180
    if-eq v9, v11, :cond_11

    .line 181
    .line 182
    const/4 v9, 0x1

    .line 183
    goto :goto_c

    .line 184
    :cond_11
    move v9, v12

    .line 185
    :goto_c
    and-int/lit8 v11, v1, 0x1

    .line 186
    .line 187
    invoke-virtual {v6, v11, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    if-eqz v9, :cond_1f

    .line 192
    .line 193
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 194
    .line 195
    .line 196
    and-int/lit8 v9, v8, 0x1

    .line 197
    .line 198
    const v11, -0x7e001

    .line 199
    .line 200
    .line 201
    const v13, -0xe001

    .line 202
    .line 203
    .line 204
    if-eqz v9, :cond_16

    .line 205
    .line 206
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v9, :cond_12

    .line 211
    .line 212
    goto :goto_d

    .line 213
    :cond_12
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 214
    .line 215
    .line 216
    and-int/lit8 v2, p9, 0x4

    .line 217
    .line 218
    if-eqz v2, :cond_13

    .line 219
    .line 220
    and-int/lit16 v1, v1, -0x381

    .line 221
    .line 222
    :cond_13
    and-int/lit8 v2, p9, 0x8

    .line 223
    .line 224
    if-eqz v2, :cond_14

    .line 225
    .line 226
    and-int/lit16 v1, v1, -0x1c01

    .line 227
    .line 228
    :cond_14
    and-int v2, v1, v13

    .line 229
    .line 230
    and-int/lit8 v9, p9, 0x20

    .line 231
    .line 232
    if-eqz v9, :cond_15

    .line 233
    .line 234
    and-int v2, v1, v11

    .line 235
    .line 236
    :cond_15
    move-object/from16 v19, v0

    .line 237
    .line 238
    move-object v9, v3

    .line 239
    move-object v1, v4

    .line 240
    move-object v15, v5

    .line 241
    move-object/from16 v0, p4

    .line 242
    .line 243
    goto/16 :goto_12

    .line 244
    .line 245
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 246
    .line 247
    const/4 v2, 0x0

    .line 248
    goto :goto_e

    .line 249
    :cond_17
    move-object v2, v3

    .line 250
    :goto_e
    and-int/lit8 v3, p9, 0x4

    .line 251
    .line 252
    if-eqz v3, :cond_18

    .line 253
    .line 254
    sget-object v3, Landroidx/compose/material3/tokens/ListTokens;->ContainerShape$4:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 255
    .line 256
    invoke-static {v3, v6}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    and-int/lit16 v1, v1, -0x381

    .line 261
    .line 262
    goto :goto_f

    .line 263
    :cond_18
    move-object v3, v4

    .line 264
    :goto_f
    and-int/lit8 v4, p9, 0x8

    .line 265
    .line 266
    if-eqz v4, :cond_1a

    .line 267
    .line 268
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 269
    .line 270
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Landroidx/compose/material3/ColorScheme;

    .line 275
    .line 276
    iget-object v4, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedCardColorsCached:Landroidx/compose/material3/CardColors;

    .line 277
    .line 278
    if-nez v4, :cond_19

    .line 279
    .line 280
    new-instance v14, Landroidx/compose/material3/CardColors;

    .line 281
    .line 282
    sget-object v4, Landroidx/compose/material3/tokens/ListTokens;->ContainerColor$7:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 283
    .line 284
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 285
    .line 286
    .line 287
    move-result-wide v15

    .line 288
    move/from16 p7, v13

    .line 289
    .line 290
    move-object/from16 p1, v14

    .line 291
    .line 292
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v13

    .line 296
    invoke-static {v0, v13, v14}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    .line 297
    .line 298
    .line 299
    move-result-wide v17

    .line 300
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 301
    .line 302
    .line 303
    move-result-wide v19

    .line 304
    invoke-static {v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    .line 305
    .line 306
    .line 307
    move-result-wide v13

    .line 308
    invoke-static {v0, v13, v14}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    .line 309
    .line 310
    .line 311
    move-result-wide v13

    .line 312
    const v4, 0x3ec28f5c    # 0.38f

    .line 313
    .line 314
    .line 315
    invoke-static {v4, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 316
    .line 317
    .line 318
    move-result-wide v21

    .line 319
    move-object/from16 v14, p1

    .line 320
    .line 321
    invoke-direct/range {v14 .. v22}, Landroidx/compose/material3/CardColors;-><init>(JJJJ)V

    .line 322
    .line 323
    .line 324
    iput-object v14, v0, Landroidx/compose/material3/ColorScheme;->defaultOutlinedCardColorsCached:Landroidx/compose/material3/CardColors;

    .line 325
    .line 326
    move-object v4, v14

    .line 327
    goto :goto_10

    .line 328
    :cond_19
    move/from16 p7, v13

    .line 329
    .line 330
    :goto_10
    invoke-static {v4}, Landroidx/core/util/DebugUtils;->toCardColors(Landroidx/compose/material3/CardColors;)Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    and-int/lit16 v1, v1, -0x1c01

    .line 335
    .line 336
    goto :goto_11

    .line 337
    :cond_1a
    move/from16 p7, v13

    .line 338
    .line 339
    :goto_11
    sget-object v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevationsKt;->LocalThemeElevations:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 340
    .line 341
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v9

    .line 345
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 346
    .line 347
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 355
    .line 356
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeElevations;

    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    new-instance v4, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation$OutlinedCardElevation;

    .line 369
    .line 370
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 371
    .line 372
    .line 373
    and-int v9, v1, p7

    .line 374
    .line 375
    and-int/lit8 v13, p9, 0x20

    .line 376
    .line 377
    if-eqz v13, :cond_1d

    .line 378
    .line 379
    const v5, 0x7d953eee

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 383
    .line 384
    .line 385
    sget-object v5, Landroidx/compose/material3/tokens/ListTokens;->OutlineColor$1:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 386
    .line 387
    invoke-static {v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 388
    .line 389
    .line 390
    move-result-wide v13

    .line 391
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6, v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v9

    .line 402
    if-nez v5, :cond_1b

    .line 403
    .line 404
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 405
    .line 406
    if-ne v9, v5, :cond_1c

    .line 407
    .line 408
    :cond_1b
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->OutlineWidth:F

    .line 409
    .line 410
    invoke-static {v5, v13, v14}, Landroidx/compose/foundation/ImageKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    :cond_1c
    move-object v5, v9

    .line 418
    check-cast v5, Landroidx/compose/foundation/BorderStroke;

    .line 419
    .line 420
    and-int/2addr v1, v11

    .line 421
    move-object/from16 v19, v0

    .line 422
    .line 423
    move-object v9, v2

    .line 424
    move-object v0, v4

    .line 425
    move-object v15, v5

    .line 426
    move v2, v1

    .line 427
    move-object v1, v3

    .line 428
    goto :goto_12

    .line 429
    :cond_1d
    move v1, v9

    .line 430
    move-object v9, v2

    .line 431
    move v2, v1

    .line 432
    move-object/from16 v19, v0

    .line 433
    .line 434
    move-object v1, v3

    .line 435
    move-object v0, v4

    .line 436
    move-object v15, v5

    .line 437
    :goto_12
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 438
    .line 439
    .line 440
    if-eqz v9, :cond_1e

    .line 441
    .line 442
    const v3, 0x152ee417

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 446
    .line 447
    .line 448
    invoke-static/range {v19 .. v19}, Landroidx/core/util/DebugUtils;->toMaterial3CardColors(Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;)Landroidx/compose/material3/CardColors;

    .line 449
    .line 450
    .line 451
    move-result-object v13

    .line 452
    invoke-interface {v0, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;->toMaterial3CardElevation(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/CardElevation;

    .line 453
    .line 454
    .line 455
    move-result-object v14

    .line 456
    shr-int/lit8 v3, v2, 0x3

    .line 457
    .line 458
    and-int/lit8 v3, v3, 0xe

    .line 459
    .line 460
    shl-int/lit8 v4, v2, 0x3

    .line 461
    .line 462
    and-int/lit8 v5, v4, 0x70

    .line 463
    .line 464
    or-int/2addr v3, v5

    .line 465
    and-int/lit16 v5, v4, 0x1c00

    .line 466
    .line 467
    or-int/2addr v3, v5

    .line 468
    const/high16 v5, 0x380000

    .line 469
    .line 470
    and-int/2addr v4, v5

    .line 471
    or-int/2addr v3, v4

    .line 472
    const/high16 v4, 0xe000000

    .line 473
    .line 474
    shl-int/lit8 v2, v2, 0x6

    .line 475
    .line 476
    and-int/2addr v2, v4

    .line 477
    or-int v18, v3, v2

    .line 478
    .line 479
    const/4 v11, 0x0

    .line 480
    move/from16 v16, v12

    .line 481
    .line 482
    move-object v12, v1

    .line 483
    move/from16 v1, v16

    .line 484
    .line 485
    move-object/from16 v17, v6

    .line 486
    .line 487
    move-object/from16 v16, v7

    .line 488
    .line 489
    invoke-static/range {v9 .. v18}, Landroidx/compose/material3/CardKt;->OutlinedCard(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 493
    .line 494
    .line 495
    move-object v10, v0

    .line 496
    goto :goto_13

    .line 497
    :cond_1e
    move/from16 v23, v12

    .line 498
    .line 499
    move-object v12, v1

    .line 500
    move/from16 v1, v23

    .line 501
    .line 502
    const v3, 0x15339576

    .line 503
    .line 504
    .line 505
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 506
    .line 507
    .line 508
    move v3, v2

    .line 509
    invoke-static/range {v19 .. v19}, Landroidx/core/util/DebugUtils;->toMaterial3CardColors(Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardColors;)Landroidx/compose/material3/CardColors;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    move v4, v3

    .line 514
    invoke-interface {v0, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/card/CardElevation;->toMaterial3CardElevation(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/CardElevation;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    and-int/lit8 v5, v4, 0xe

    .line 519
    .line 520
    shr-int/lit8 v4, v4, 0x3

    .line 521
    .line 522
    and-int/lit8 v7, v4, 0x70

    .line 523
    .line 524
    or-int/2addr v5, v7

    .line 525
    const v7, 0xe000

    .line 526
    .line 527
    .line 528
    and-int/2addr v7, v4

    .line 529
    or-int/2addr v5, v7

    .line 530
    const/high16 v7, 0x70000

    .line 531
    .line 532
    and-int/2addr v4, v7

    .line 533
    or-int v7, v5, v4

    .line 534
    .line 535
    move-object/from16 v5, p6

    .line 536
    .line 537
    move-object v10, v0

    .line 538
    move v11, v1

    .line 539
    move-object v1, v12

    .line 540
    move-object v4, v15

    .line 541
    move-object/from16 v0, p0

    .line 542
    .line 543
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/CardKt;->OutlinedCard(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 547
    .line 548
    .line 549
    :goto_13
    move-object/from16 v17, v6

    .line 550
    .line 551
    move-object v2, v9

    .line 552
    move-object v5, v10

    .line 553
    move-object v3, v12

    .line 554
    move-object v6, v15

    .line 555
    move-object/from16 v4, v19

    .line 556
    .line 557
    goto :goto_14

    .line 558
    :cond_1f
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 559
    .line 560
    .line 561
    move-object v2, v3

    .line 562
    move-object v3, v4

    .line 563
    move-object/from16 v17, v6

    .line 564
    .line 565
    move-object v4, v0

    .line 566
    move-object v6, v5

    .line 567
    move-object/from16 v5, p4

    .line 568
    .line 569
    :goto_14
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 570
    .line 571
    .line 572
    move-result-object v11

    .line 573
    if-eqz v11, :cond_20

    .line 574
    .line 575
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt$$ExternalSyntheticLambda0;

    .line 576
    .line 577
    const/4 v10, 0x1

    .line 578
    move-object/from16 v1, p0

    .line 579
    .line 580
    move-object/from16 v7, p6

    .line 581
    .line 582
    move/from16 v9, p9

    .line 583
    .line 584
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 585
    .line 586
    .line 587
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 588
    .line 589
    :cond_20
    return-void
.end method

.method public static final ContentArea(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x4047aa92

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    or-int/2addr v0, p3

    .line 20
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x20

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    move v2, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 v2, 0x10

    .line 31
    .line 32
    :goto_1
    or-int/2addr v0, v2

    .line 33
    and-int/lit8 v2, v0, 0x13

    .line 34
    .line 35
    const/16 v4, 0x12

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v2, v4, :cond_2

    .line 40
    .line 41
    move v2, v6

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v2, v5

    .line 44
    :goto_2
    and-int/lit8 v4, v0, 0x1

    .line 45
    .line 46
    invoke-virtual {p2, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 53
    .line 54
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    .line 55
    .line 56
    sget-object v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 57
    .line 58
    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const/high16 v7, 0x41800000    # 16.0f

    .line 68
    .line 69
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 74
    .line 75
    const/4 v8, 0x6

    .line 76
    invoke-static {v2, v7, p2, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-wide v7, p2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 81
    .line 82
    ushr-long v9, v7, v3

    .line 83
    .line 84
    xor-long/2addr v7, v9

    .line 85
    long-to-int v3, v7

    .line 86
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {p2, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 100
    .line 101
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 102
    .line 103
    .line 104
    iget-boolean v9, p2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 105
    .line 106
    if-eqz v9, :cond_3

    .line 107
    .line 108
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 113
    .line 114
    .line 115
    :goto_3
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 116
    .line 117
    invoke-static {p2, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 121
    .line 122
    invoke-static {p2, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 130
    .line 131
    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    .line 133
    .line 134
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 135
    .line 136
    invoke-static {p2, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 137
    .line 138
    .line 139
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 140
    .line 141
    invoke-static {p2, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    iget-boolean v2, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->isLoading:Z

    .line 145
    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    const v0, 0x69e4f54c

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 152
    .line 153
    .line 154
    const/4 v0, 0x0

    .line 155
    invoke-static {v0, p2, v5}, Landroidx/room/util/SchemaInfoUtilKt;->DelayedCircularProgressIndicator(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_4
    const v2, 0x69e5ecef

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 166
    .line 167
    .line 168
    and-int/lit8 v0, v0, 0x7e

    .line 169
    .line 170
    invoke-static {p0, p1, p2, v0}, Landroidx/room/util/SchemaInfoUtilKt;->PermissionBoxes(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 174
    .line 175
    .line 176
    :goto_4
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 181
    .line 182
    .line 183
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    if-eqz p2, :cond_6

    .line 188
    .line 189
    new-instance v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;

    .line 190
    .line 191
    invoke-direct {v0, p0, p1, p3, v1}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;-><init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;II)V

    .line 192
    .line 193
    .line 194
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 195
    .line 196
    :cond_6
    return-void
.end method

.method public static final DelayedCircularProgressIndicator(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, 0x617da790

    .line 5
    .line 6
    .line 7
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    or-int/lit8 p1, p2, 0x6

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    move v0, v6

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    and-int/2addr p1, v6

    .line 22
    invoke-virtual {v3, p1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 33
    .line 34
    if-ne p0, p1, :cond_1

    .line 35
    .line 36
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-ne v0, p1, :cond_2

    .line 52
    .line 53
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 54
    .line 55
    const/16 p1, 0x14

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, p0, v1, p1}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    invoke-static {v3, p1, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    xor-int/2addr p0, v6

    .line 82
    invoke-static {p0}, Landroidx/room/util/SchemaInfoUtilKt;->hide(Z)Landroidx/compose/ui/Modifier;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 87
    .line 88
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v5, 0x2

    .line 94
    const-wide/16 v1, 0x0

    .line 95
    .line 96
    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/sasl/OAuthBearer;->CircularProgressIndicator-iJQMabo(Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 97
    .line 98
    .line 99
    move-object p0, p1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    new-instance v0, Landroidx/compose/foundation/layout/BoxKt$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {v0, p0, p2, v6}, Landroidx/compose/foundation/layout/BoxKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 116
    .line 117
    :cond_4
    return-void
.end method

.method public static final DividerVertical-9IZ8Weo(FIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 6

    .line 1
    move-object v4, p4

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p4, -0x76c49c53

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v4, p5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    const/4 p4, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p4, 0x2

    .line 19
    :goto_0
    or-int/2addr p4, p1

    .line 20
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->changed(F)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x20

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_1
    or-int/2addr p4, v0

    .line 32
    or-int/lit16 p4, p4, 0x80

    .line 33
    .line 34
    and-int/lit16 v0, p4, 0x93

    .line 35
    .line 36
    const/16 v1, 0x92

    .line 37
    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_2
    and-int/lit8 v1, p4, 0x1

    .line 44
    .line 45
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 52
    .line 53
    .line 54
    and-int/lit8 v0, p1, 0x1

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 66
    .line 67
    .line 68
    :goto_3
    and-int/lit16 p4, p4, -0x381

    .line 69
    .line 70
    move-wide v2, p2

    .line 71
    goto :goto_5

    .line 72
    :cond_4
    :goto_4
    sget p2, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    .line 73
    .line 74
    sget-object p2, Landroidx/compose/material3/tokens/ListTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 75
    .line 76
    invoke-static {p2, v4}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    .line 77
    .line 78
    .line 79
    move-result-wide p2

    .line 80
    goto :goto_3

    .line 81
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 82
    .line 83
    .line 84
    and-int/lit16 v1, p4, 0x3fe

    .line 85
    .line 86
    move v0, p0

    .line 87
    move-object v5, p5

    .line 88
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/CardKt;->VerticalDivider-9IZ8Weo(FIJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 89
    .line 90
    .line 91
    move-wide p3, v2

    .line 92
    goto :goto_6

    .line 93
    :cond_5
    move v0, p0

    .line 94
    move-object v5, p5

    .line 95
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 96
    .line 97
    .line 98
    move-wide p3, p2

    .line 99
    :goto_6
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    new-instance p0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda15;

    .line 106
    .line 107
    move p5, p1

    .line 108
    move p2, v0

    .line 109
    move-object p1, v5

    .line 110
    invoke-direct/range {p0 .. p5}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$$ExternalSyntheticLambda15;-><init>(Landroidx/compose/ui/Modifier;FJI)V

    .line 111
    .line 112
    .line 113
    iput-object p0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 114
    .line 115
    :cond_6
    return-void
.end method

.method public static final EditConfigurationButton(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v6, p2

    .line 5
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p2, 0x478ac0f8    # 71041.94f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    or-int/lit8 p2, p3, 0x6

    .line 14
    .line 15
    and-int/lit8 v0, p3, 0x30

    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v0, 0x10

    .line 30
    .line 31
    :goto_0
    or-int/2addr p2, v0

    .line 32
    :cond_1
    and-int/lit8 v0, p2, 0x13

    .line 33
    .line 34
    const/16 v2, 0x12

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    move v0, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_1
    and-int/lit8 v2, p2, 0x1

    .line 43
    .line 44
    invoke-virtual {v6, v2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    sget-object p0, Landroidx/compose/foundation/layout/OffsetKt;->End:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 51
    .line 52
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 53
    .line 54
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 55
    .line 56
    invoke-interface {v0, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 61
    .line 62
    const/4 v3, 0x6

    .line 63
    invoke-static {p0, v2, v6, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget-wide v2, v6, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 68
    .line 69
    ushr-long v4, v2, v1

    .line 70
    .line 71
    xor-long/2addr v2, v4

    .line 72
    long-to-int v1, v2

    .line 73
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v6, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 87
    .line 88
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 89
    .line 90
    .line 91
    iget-boolean v4, v6, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 92
    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 100
    .line 101
    .line 102
    :goto_2
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 103
    .line 104
    invoke-static {v6, p0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 105
    .line 106
    .line 107
    sget-object p0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 108
    .line 109
    invoke-static {v6, v2, p0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 117
    .line 118
    invoke-static {v6, p0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    sget-object p0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 122
    .line 123
    invoke-static {v6, p0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 124
    .line 125
    .line 126
    sget-object p0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 127
    .line 128
    invoke-static {v6, v0, p0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 129
    .line 130
    .line 131
    const p0, 0x7f12016f

    .line 132
    .line 133
    .line 134
    invoke-static {v6, p0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 139
    .line 140
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 145
    .line 146
    iget-wide v1, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->warning:J

    .line 147
    .line 148
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 149
    .line 150
    invoke-direct {v4, v1, v2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 151
    .line 152
    .line 153
    and-int/lit8 v7, p2, 0x70

    .line 154
    .line 155
    const/16 v8, 0x2c

    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    const/4 v3, 0x0

    .line 159
    const/4 v5, 0x0

    .line 160
    move-object v1, p1

    .line 161
    invoke-static/range {v0 .. v8}, Lorg/slf4j/helpers/Util;->ButtonText-jM_yU8I(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 165
    .line 166
    .line 167
    move-object p0, v10

    .line 168
    goto :goto_3

    .line 169
    :cond_4
    move-object v1, p1

    .line 170
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 171
    .line 172
    .line 173
    :goto_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    new-instance p2, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    const/16 v0, 0xa

    .line 182
    .line 183
    invoke-direct {p2, p3, v0, p0, v1}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iput-object p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 187
    .line 188
    :cond_5
    return-void
.end method

.method public static final HeaderArea(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v9, p1

    .line 6
    .line 7
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x2a5e9ab1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    :goto_0
    or-int/2addr v2, v1

    .line 26
    and-int/lit8 v4, v2, 0x3

    .line 27
    .line 28
    const/4 v12, 0x1

    .line 29
    if-eq v4, v3, :cond_1

    .line 30
    .line 31
    move v4, v12

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v4, 0x0

    .line 34
    :goto_1
    and-int/lit8 v5, v2, 0x1

    .line 35
    .line 36
    invoke-virtual {v9, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 43
    .line 44
    sget-object v5, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 45
    .line 46
    const/16 v6, 0x30

    .line 47
    .line 48
    invoke-static {v5, v4, v9, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-wide v5, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 53
    .line 54
    const/16 v7, 0x20

    .line 55
    .line 56
    ushr-long v7, v5, v7

    .line 57
    .line 58
    xor-long/2addr v5, v7

    .line 59
    long-to-int v5, v5

    .line 60
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 65
    .line 66
    invoke-static {v9, v13}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 76
    .line 77
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 78
    .line 79
    .line 80
    iget-boolean v10, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 81
    .line 82
    if-eqz v10, :cond_2

    .line 83
    .line 84
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 89
    .line 90
    .line 91
    :goto_2
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 92
    .line 93
    invoke-static {v9, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 94
    .line 95
    .line 96
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 97
    .line 98
    invoke-static {v9, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 106
    .line 107
    invoke-static {v9, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 108
    .line 109
    .line 110
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 111
    .line 112
    invoke-static {v9, v4}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 116
    .line 117
    invoke-static {v9, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    and-int/lit8 v2, v2, 0xe

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    invoke-static {v0, v4, v9, v2, v3}, Landroidx/room/util/DBUtil;->AppTitleTopHeader(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 124
    .line 125
    .line 126
    const v2, 0x7f120510

    .line 127
    .line 128
    .line 129
    invoke-static {v9, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    sget-object v14, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 134
    .line 135
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    const/high16 v15, 0x41800000    # 16.0f

    .line 146
    .line 147
    invoke-static {v13, v15, v4, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    const/4 v10, 0x0

    .line 152
    const/16 v11, 0x3c

    .line 153
    .line 154
    const-wide/16 v4, 0x0

    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    const/4 v7, 0x0

    .line 158
    const/4 v8, 0x0

    .line 159
    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/unit/IntRectKt;->TextHeadlineSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {v13, v15}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v9, v2}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 183
    .line 184
    .line 185
    :goto_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz v2, :cond_4

    .line 190
    .line 191
    new-instance v3, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    const/16 v4, 0x8

    .line 194
    .line 195
    invoke-direct {v3, v0, v1, v4}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;II)V

    .line 196
    .line 197
    .line 198
    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 199
    .line 200
    :cond_4
    return-void
.end method

.method public static final IncomingServerSettingsScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p2

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
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-object/from16 v7, p4

    .line 13
    .line 14
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const v0, -0x1f7d9079

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    .line 22
    move-object/from16 v3, p0

    .line 23
    .line 24
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v8, 0x2

    .line 29
    const/4 v2, 0x4

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v8

    .line 35
    :goto_0
    or-int v0, p5, v0

    .line 36
    .line 37
    move-object/from16 v5, p1

    .line 38
    .line 39
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    const/16 v4, 0x20

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/16 v4, 0x10

    .line 49
    .line 50
    :goto_1
    or-int/2addr v0, v4

    .line 51
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    const/16 v4, 0x100

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v4, 0x80

    .line 61
    .line 62
    :goto_2
    or-int/2addr v0, v4

    .line 63
    or-int/lit16 v0, v0, 0xc00

    .line 64
    .line 65
    and-int/lit16 v4, v0, 0x493

    .line 66
    .line 67
    const/16 v6, 0x492

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x1

    .line 71
    if-eq v4, v6, :cond_3

    .line 72
    .line 73
    move v4, v10

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move v4, v9

    .line 76
    :goto_3
    and-int/lit8 v6, v0, 0x1

    .line 77
    .line 78
    invoke-virtual {v7, v6, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_d

    .line 83
    .line 84
    shr-int/lit8 v0, v0, 0x6

    .line 85
    .line 86
    iget-object v4, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 87
    .line 88
    invoke-static {v4, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    and-int/lit8 v4, v0, 0xe

    .line 93
    .line 94
    xor-int/lit8 v4, v4, 0x6

    .line 95
    .line 96
    if-le v4, v2, :cond_4

    .line 97
    .line 98
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_5

    .line 103
    .line 104
    :cond_4
    and-int/lit8 v0, v0, 0x6

    .line 105
    .line 106
    if-ne v0, v2, :cond_6

    .line 107
    .line 108
    :cond_5
    move v0, v10

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    move v0, v9

    .line 111
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    if-ne v2, v12, :cond_8

    .line 120
    .line 121
    :cond_7
    new-instance v2, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 122
    .line 123
    invoke-direct {v2, v1, v8}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_8
    move-object v13, v2

    .line 130
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 131
    .line 132
    iget-object v14, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 133
    .line 134
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    const/16 v6, 0x13

    .line 138
    .line 139
    move-object/from16 v4, p2

    .line 140
    .line 141
    invoke-direct/range {v0 .. v6}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    move-object v15, v1

    .line 145
    invoke-static {v7, v14, v0}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-nez v0, :cond_9

    .line 163
    .line 164
    if-ne v1, v12, :cond_a

    .line 165
    .line 166
    :cond_9
    new-instance v1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;

    .line 167
    .line 168
    const/4 v0, 0x0

    .line 169
    invoke-direct {v1, v8, v0, v13}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_a
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 176
    .line 177
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 178
    .line 179
    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-nez v0, :cond_b

    .line 191
    .line 192
    if-ne v1, v12, :cond_c

    .line 193
    .line 194
    :cond_b
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 195
    .line 196
    const/16 v0, 0xb

    .line 197
    .line 198
    invoke-direct {v1, v0, v13}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :cond_c
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 205
    .line 206
    invoke-static {v9, v1, v7, v9, v10}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 207
    .line 208
    .line 209
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 210
    .line 211
    invoke-static {v7}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->navigationBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 216
    .line 217
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 218
    .line 219
    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    new-instance v1, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 224
    .line 225
    const/16 v2, 0x18

    .line 226
    .line 227
    invoke-direct {v1, v2, v15, v13}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    const v2, -0x6553b7bd

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v1, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v2, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 238
    .line 239
    invoke-direct {v2, v8, v13}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 240
    .line 241
    .line 242
    const v3, 0x5cdb23a2

    .line 243
    .line 244
    .line 245
    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    new-instance v3, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 250
    .line 251
    const/4 v4, 0x3

    .line 252
    invoke-direct {v3, v15, v11, v13, v4}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 253
    .line 254
    .line 255
    const v4, 0x322da67b

    .line 256
    .line 257
    .line 258
    invoke-static {v4, v3, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    const v8, 0x1801b0

    .line 263
    .line 264
    .line 265
    const/16 v9, 0x38

    .line 266
    .line 267
    const/4 v3, 0x0

    .line 268
    const/4 v4, 0x0

    .line 269
    const/4 v5, 0x0

    .line 270
    invoke-static/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 271
    .line 272
    .line 273
    move-object v4, v10

    .line 274
    goto :goto_5

    .line 275
    :cond_d
    move-object v15, v1

    .line 276
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 277
    .line 278
    .line 279
    move-object/from16 v4, p3

    .line 280
    .line 281
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    if-eqz v7, :cond_e

    .line 286
    .line 287
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 288
    .line 289
    const/4 v6, 0x5

    .line 290
    move-object/from16 v1, p0

    .line 291
    .line 292
    move-object/from16 v2, p1

    .line 293
    .line 294
    move/from16 v5, p5

    .line 295
    .line 296
    move-object v3, v15

    .line 297
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 298
    .line 299
    .line 300
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 301
    .line 302
    :cond_e
    return-void
.end method

.method public static final LazyList(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V
    .locals 38

    .line 1
    move/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move-object/from16 v2, p5

    .line 8
    .line 9
    move-object/from16 v1, p6

    .line 10
    .line 11
    move-object/from16 v7, p8

    .line 12
    .line 13
    move-object/from16 v9, p9

    .line 14
    .line 15
    move-object/from16 v12, p10

    .line 16
    .line 17
    move/from16 v13, p11

    .line 18
    .line 19
    move-object/from16 v14, p7

    .line 20
    .line 21
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    const v0, 0x37213af3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    .line 29
    and-int/lit8 v0, v10, 0x6

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x2

    .line 42
    :goto_0
    or-int/2addr v0, v10

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v0, v10

    .line 45
    :goto_1
    and-int/lit8 v5, v10, 0x30

    .line 46
    .line 47
    if-nez v5, :cond_3

    .line 48
    .line 49
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    const/16 v5, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v5, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v0, v5

    .line 61
    :cond_3
    and-int/lit16 v5, v10, 0x180

    .line 62
    .line 63
    if-nez v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_4

    .line 70
    .line 71
    const/16 v5, 0x100

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/16 v5, 0x80

    .line 75
    .line 76
    :goto_3
    or-int/2addr v0, v5

    .line 77
    :cond_5
    and-int/lit16 v5, v10, 0xc00

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    const/16 v16, 0x400

    .line 81
    .line 82
    if-nez v5, :cond_7

    .line 83
    .line 84
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_6

    .line 89
    .line 90
    const/16 v5, 0x800

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move/from16 v5, v16

    .line 94
    .line 95
    :goto_4
    or-int/2addr v0, v5

    .line 96
    :cond_7
    and-int/lit16 v5, v10, 0x6000

    .line 97
    .line 98
    const/4 v8, 0x1

    .line 99
    if-nez v5, :cond_9

    .line 100
    .line 101
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_8

    .line 106
    .line 107
    const/16 v5, 0x4000

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_8
    const/16 v5, 0x2000

    .line 111
    .line 112
    :goto_5
    or-int/2addr v0, v5

    .line 113
    :cond_9
    const/high16 v5, 0x30000

    .line 114
    .line 115
    and-int/2addr v5, v10

    .line 116
    if-nez v5, :cond_b

    .line 117
    .line 118
    move-object/from16 v5, p3

    .line 119
    .line 120
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v20

    .line 124
    if-eqz v20, :cond_a

    .line 125
    .line 126
    const/high16 v20, 0x20000

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_a
    const/high16 v20, 0x10000

    .line 130
    .line 131
    :goto_6
    or-int v0, v0, v20

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_b
    move-object/from16 v5, p3

    .line 135
    .line 136
    :goto_7
    const/high16 v20, 0x180000

    .line 137
    .line 138
    and-int v21, v10, v20

    .line 139
    .line 140
    if-nez v21, :cond_d

    .line 141
    .line 142
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 143
    .line 144
    .line 145
    move-result v21

    .line 146
    if-eqz v21, :cond_c

    .line 147
    .line 148
    const/high16 v21, 0x100000

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_c
    const/high16 v21, 0x80000

    .line 152
    .line 153
    :goto_8
    or-int v0, v0, v21

    .line 154
    .line 155
    :cond_d
    const/high16 v21, 0xc00000

    .line 156
    .line 157
    and-int v22, v10, v21

    .line 158
    .line 159
    move-object/from16 v3, p2

    .line 160
    .line 161
    if-nez v22, :cond_f

    .line 162
    .line 163
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v23

    .line 167
    if-eqz v23, :cond_e

    .line 168
    .line 169
    const/high16 v23, 0x800000

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_e
    const/high16 v23, 0x400000

    .line 173
    .line 174
    :goto_9
    or-int v0, v0, v23

    .line 175
    .line 176
    :cond_f
    const/high16 v23, 0x6000000

    .line 177
    .line 178
    and-int v24, v10, v23

    .line 179
    .line 180
    if-nez v24, :cond_10

    .line 181
    .line 182
    const/high16 v24, 0x2000000

    .line 183
    .line 184
    or-int v0, v0, v24

    .line 185
    .line 186
    :cond_10
    const/high16 v24, 0x30000000

    .line 187
    .line 188
    and-int v25, v10, v24

    .line 189
    .line 190
    if-nez v25, :cond_12

    .line 191
    .line 192
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v25

    .line 196
    if-eqz v25, :cond_11

    .line 197
    .line 198
    const/high16 v25, 0x20000000

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_11
    const/high16 v25, 0x10000000

    .line 202
    .line 203
    :goto_a
    or-int v0, v0, v25

    .line 204
    .line 205
    :cond_12
    and-int/lit8 v25, v11, 0x6

    .line 206
    .line 207
    if-nez v25, :cond_14

    .line 208
    .line 209
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v25

    .line 213
    if-eqz v25, :cond_13

    .line 214
    .line 215
    const/16 v17, 0x4

    .line 216
    .line 217
    goto :goto_b

    .line 218
    :cond_13
    const/16 v17, 0x2

    .line 219
    .line 220
    :goto_b
    or-int v17, v11, v17

    .line 221
    .line 222
    move/from16 v6, v17

    .line 223
    .line 224
    goto :goto_c

    .line 225
    :cond_14
    move v6, v11

    .line 226
    :goto_c
    or-int/lit16 v6, v6, 0x1b0

    .line 227
    .line 228
    and-int/lit16 v8, v11, 0xc00

    .line 229
    .line 230
    if-nez v8, :cond_16

    .line 231
    .line 232
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-eqz v8, :cond_15

    .line 237
    .line 238
    const/16 v16, 0x800

    .line 239
    .line 240
    :cond_15
    or-int v6, v6, v16

    .line 241
    .line 242
    :cond_16
    const v8, 0x12492493

    .line 243
    .line 244
    .line 245
    and-int/2addr v8, v0

    .line 246
    const v15, 0x12492492

    .line 247
    .line 248
    .line 249
    if-ne v8, v15, :cond_18

    .line 250
    .line 251
    and-int/lit16 v8, v6, 0x493

    .line 252
    .line 253
    const/16 v15, 0x492

    .line 254
    .line 255
    if-eq v8, v15, :cond_17

    .line 256
    .line 257
    goto :goto_d

    .line 258
    :cond_17
    const/4 v8, 0x0

    .line 259
    goto :goto_e

    .line 260
    :cond_18
    :goto_d
    const/4 v8, 0x1

    .line 261
    :goto_e
    and-int/lit8 v15, v0, 0x1

    .line 262
    .line 263
    invoke-virtual {v14, v15, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-eqz v8, :cond_48

    .line 268
    .line 269
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 270
    .line 271
    .line 272
    and-int/lit8 v8, v10, 0x1

    .line 273
    .line 274
    const v15, -0xe000001

    .line 275
    .line 276
    .line 277
    if-eqz v8, :cond_1a

    .line 278
    .line 279
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eqz v8, :cond_19

    .line 284
    .line 285
    goto :goto_f

    .line 286
    :cond_19
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 287
    .line 288
    .line 289
    :cond_1a
    :goto_f
    and-int/2addr v0, v15

    .line 290
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 291
    .line 292
    .line 293
    shr-int/lit8 v15, v0, 0x3

    .line 294
    .line 295
    and-int/lit8 v8, v15, 0xe

    .line 296
    .line 297
    shr-int/lit8 v27, v6, 0x6

    .line 298
    .line 299
    and-int/lit8 v27, v27, 0x70

    .line 300
    .line 301
    or-int v27, v8, v27

    .line 302
    .line 303
    move/from16 v28, v0

    .line 304
    .line 305
    invoke-static {v12, v14}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    and-int/lit8 v29, v27, 0xe

    .line 310
    .line 311
    xor-int/lit8 v3, v29, 0x6

    .line 312
    .line 313
    const/4 v5, 0x4

    .line 314
    if-le v3, v5, :cond_1b

    .line 315
    .line 316
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-nez v3, :cond_1c

    .line 321
    .line 322
    :cond_1b
    and-int/lit8 v3, v27, 0x6

    .line 323
    .line 324
    if-ne v3, v5, :cond_1d

    .line 325
    .line 326
    :cond_1c
    const/4 v3, 0x1

    .line 327
    goto :goto_10

    .line 328
    :cond_1d
    const/4 v3, 0x0

    .line 329
    :goto_10
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 334
    .line 335
    if-nez v3, :cond_1f

    .line 336
    .line 337
    if-ne v5, v10, :cond_1e

    .line 338
    .line 339
    goto :goto_11

    .line 340
    :cond_1e
    move/from16 v27, v6

    .line 341
    .line 342
    move/from16 v29, v8

    .line 343
    .line 344
    goto :goto_12

    .line 345
    :cond_1f
    :goto_11
    new-instance v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 346
    .line 347
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 348
    .line 349
    .line 350
    new-instance v5, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 351
    .line 352
    move/from16 v27, v6

    .line 353
    .line 354
    const v6, 0x7fffffff

    .line 355
    .line 356
    .line 357
    invoke-direct {v5, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 358
    .line 359
    .line 360
    iput-object v5, v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 361
    .line 362
    new-instance v5, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 363
    .line 364
    invoke-direct {v5, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 365
    .line 366
    .line 367
    iput-object v5, v3, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 368
    .line 369
    sget-object v5, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$1:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 370
    .line 371
    new-instance v6, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;

    .line 372
    .line 373
    move/from16 v29, v8

    .line 374
    .line 375
    const/4 v8, 0x1

    .line 376
    invoke-direct {v6, v0, v8}, Landroidx/compose/material3/TooltipKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 377
    .line 378
    .line 379
    invoke-static {v5, v6}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    new-instance v6, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 384
    .line 385
    const/4 v8, 0x3

    .line 386
    invoke-direct {v6, v0, v1, v3, v8}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 387
    .line 388
    .line 389
    invoke-static {v5, v6}, Landroidx/compose/runtime/Updater;->derivedStateOf(Landroidx/compose/runtime/NeverEqualPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 390
    .line 391
    .line 392
    move-result-object v34

    .line 393
    new-instance v30, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    .line 394
    .line 395
    const/16 v31, 0x0

    .line 396
    .line 397
    const/16 v32, 0x1

    .line 398
    .line 399
    const-class v33, Landroidx/compose/runtime/State;

    .line 400
    .line 401
    const-string/jumbo v35, "value"

    .line 402
    .line 403
    .line 404
    const-string v36, "getValue()Ljava/lang/Object;"

    .line 405
    .line 406
    invoke-direct/range {v30 .. v36}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    move-object/from16 v5, v30

    .line 410
    .line 411
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    :goto_12
    move-object v0, v5

    .line 415
    check-cast v0, Lkotlin/reflect/KProperty0;

    .line 416
    .line 417
    shr-int/lit8 v3, v28, 0x9

    .line 418
    .line 419
    and-int/lit8 v5, v3, 0x70

    .line 420
    .line 421
    or-int v5, v29, v5

    .line 422
    .line 423
    and-int/lit8 v6, v5, 0xe

    .line 424
    .line 425
    xor-int/lit8 v6, v6, 0x6

    .line 426
    .line 427
    const/4 v8, 0x4

    .line 428
    if-le v6, v8, :cond_20

    .line 429
    .line 430
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    if-nez v6, :cond_21

    .line 435
    .line 436
    :cond_20
    and-int/lit8 v6, v5, 0x6

    .line 437
    .line 438
    if-ne v6, v8, :cond_22

    .line 439
    .line 440
    :cond_21
    const/4 v6, 0x1

    .line 441
    goto :goto_13

    .line 442
    :cond_22
    const/4 v6, 0x0

    .line 443
    :goto_13
    and-int/lit8 v8, v5, 0x70

    .line 444
    .line 445
    xor-int/lit8 v8, v8, 0x30

    .line 446
    .line 447
    move-object/from16 v29, v0

    .line 448
    .line 449
    const/16 v0, 0x20

    .line 450
    .line 451
    if-le v8, v0, :cond_23

    .line 452
    .line 453
    const/4 v8, 0x1

    .line 454
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 455
    .line 456
    .line 457
    move-result v26

    .line 458
    if-nez v26, :cond_24

    .line 459
    .line 460
    :cond_23
    and-int/lit8 v5, v5, 0x30

    .line 461
    .line 462
    if-ne v5, v0, :cond_25

    .line 463
    .line 464
    :cond_24
    const/4 v0, 0x1

    .line 465
    goto :goto_14

    .line 466
    :cond_25
    const/4 v0, 0x0

    .line 467
    :goto_14
    or-int/2addr v0, v6

    .line 468
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    if-nez v0, :cond_26

    .line 473
    .line 474
    if-ne v5, v10, :cond_27

    .line 475
    .line 476
    :cond_26
    new-instance v5, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    .line 477
    .line 478
    invoke-direct {v5, v1}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    :cond_27
    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    .line 485
    .line 486
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    if-ne v0, v10, :cond_28

    .line 491
    .line 492
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->createCompositionCoroutineScope(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    :cond_28
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 500
    .line 501
    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 502
    .line 503
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    check-cast v6, Landroidx/compose/ui/graphics/GraphicsContext;

    .line 508
    .line 509
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 510
    .line 511
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v8

    .line 515
    check-cast v8, Ljava/lang/Boolean;

    .line 516
    .line 517
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 518
    .line 519
    .line 520
    move-result v8

    .line 521
    move-object/from16 v30, v0

    .line 522
    .line 523
    if-nez v8, :cond_29

    .line 524
    .line 525
    sget-object v8, Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion;->StickToTopPlacement:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    .line 526
    .line 527
    goto :goto_15

    .line 528
    :cond_29
    const/4 v8, 0x0

    .line 529
    :goto_15
    const v31, 0xfff0

    .line 530
    .line 531
    .line 532
    and-int v28, v28, v31

    .line 533
    .line 534
    const/high16 v31, 0x380000

    .line 535
    .line 536
    and-int v3, v3, v31

    .line 537
    .line 538
    or-int v3, v28, v3

    .line 539
    .line 540
    shl-int/lit8 v28, v27, 0x12

    .line 541
    .line 542
    const/high16 v32, 0x1c00000

    .line 543
    .line 544
    and-int v33, v28, v32

    .line 545
    .line 546
    or-int v3, v3, v33

    .line 547
    .line 548
    const/high16 v33, 0xe000000

    .line 549
    .line 550
    and-int v28, v28, v33

    .line 551
    .line 552
    or-int v3, v3, v28

    .line 553
    .line 554
    shl-int/lit8 v27, v27, 0x1b

    .line 555
    .line 556
    const/high16 v28, 0x70000000

    .line 557
    .line 558
    and-int v27, v27, v28

    .line 559
    .line 560
    or-int v3, v3, v27

    .line 561
    .line 562
    and-int/lit8 v27, v3, 0x70

    .line 563
    .line 564
    xor-int/lit8 v0, v27, 0x30

    .line 565
    .line 566
    move-object/from16 v27, v5

    .line 567
    .line 568
    const/16 v5, 0x20

    .line 569
    .line 570
    if-le v0, v5, :cond_2a

    .line 571
    .line 572
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    if-nez v0, :cond_2b

    .line 577
    .line 578
    :cond_2a
    and-int/lit8 v0, v3, 0x30

    .line 579
    .line 580
    if-ne v0, v5, :cond_2c

    .line 581
    .line 582
    :cond_2b
    const/4 v0, 0x1

    .line 583
    goto :goto_16

    .line 584
    :cond_2c
    const/4 v0, 0x0

    .line 585
    :goto_16
    and-int/lit16 v5, v3, 0x380

    .line 586
    .line 587
    xor-int/lit16 v5, v5, 0x180

    .line 588
    .line 589
    move/from16 v26, v0

    .line 590
    .line 591
    const/16 v0, 0x100

    .line 592
    .line 593
    if-le v5, v0, :cond_2d

    .line 594
    .line 595
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v5

    .line 599
    if-nez v5, :cond_2e

    .line 600
    .line 601
    :cond_2d
    and-int/lit16 v5, v3, 0x180

    .line 602
    .line 603
    if-ne v5, v0, :cond_2f

    .line 604
    .line 605
    :cond_2e
    const/4 v0, 0x1

    .line 606
    goto :goto_17

    .line 607
    :cond_2f
    const/4 v0, 0x0

    .line 608
    :goto_17
    or-int v0, v26, v0

    .line 609
    .line 610
    and-int/lit16 v5, v3, 0x1c00

    .line 611
    .line 612
    xor-int/lit16 v5, v5, 0xc00

    .line 613
    .line 614
    move/from16 p7, v0

    .line 615
    .line 616
    const/16 v0, 0x800

    .line 617
    .line 618
    if-le v5, v0, :cond_30

    .line 619
    .line 620
    const/4 v5, 0x0

    .line 621
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 622
    .line 623
    .line 624
    move-result v19

    .line 625
    if-nez v19, :cond_31

    .line 626
    .line 627
    :cond_30
    and-int/lit16 v5, v3, 0xc00

    .line 628
    .line 629
    if-ne v5, v0, :cond_32

    .line 630
    .line 631
    :cond_31
    const/4 v0, 0x1

    .line 632
    goto :goto_18

    .line 633
    :cond_32
    const/4 v0, 0x0

    .line 634
    :goto_18
    or-int v0, p7, v0

    .line 635
    .line 636
    const v5, 0xe000

    .line 637
    .line 638
    .line 639
    and-int/2addr v5, v3

    .line 640
    xor-int/lit16 v5, v5, 0x6000

    .line 641
    .line 642
    move/from16 p7, v0

    .line 643
    .line 644
    const/16 v0, 0x4000

    .line 645
    .line 646
    if-le v5, v0, :cond_33

    .line 647
    .line 648
    const/4 v5, 0x1

    .line 649
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 650
    .line 651
    .line 652
    move-result v19

    .line 653
    if-nez v19, :cond_34

    .line 654
    .line 655
    goto :goto_19

    .line 656
    :cond_33
    const/4 v5, 0x1

    .line 657
    :goto_19
    and-int/lit16 v5, v3, 0x6000

    .line 658
    .line 659
    if-ne v5, v0, :cond_35

    .line 660
    .line 661
    :cond_34
    const/4 v0, 0x1

    .line 662
    goto :goto_1a

    .line 663
    :cond_35
    const/4 v0, 0x0

    .line 664
    :goto_1a
    or-int v0, p7, v0

    .line 665
    .line 666
    const/4 v5, 0x0

    .line 667
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 668
    .line 669
    .line 670
    move-result v18

    .line 671
    or-int v0, v0, v18

    .line 672
    .line 673
    and-int v18, v3, v31

    .line 674
    .line 675
    xor-int v5, v18, v20

    .line 676
    .line 677
    move/from16 p7, v0

    .line 678
    .line 679
    const/high16 v0, 0x100000

    .line 680
    .line 681
    if-le v5, v0, :cond_36

    .line 682
    .line 683
    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    if-nez v5, :cond_37

    .line 688
    .line 689
    :cond_36
    and-int v5, v3, v20

    .line 690
    .line 691
    if-ne v5, v0, :cond_38

    .line 692
    .line 693
    :cond_37
    const/4 v0, 0x1

    .line 694
    goto :goto_1b

    .line 695
    :cond_38
    const/4 v0, 0x0

    .line 696
    :goto_1b
    or-int v0, p7, v0

    .line 697
    .line 698
    and-int v5, v3, v32

    .line 699
    .line 700
    xor-int v5, v5, v21

    .line 701
    .line 702
    move/from16 p7, v0

    .line 703
    .line 704
    const/high16 v0, 0x800000

    .line 705
    .line 706
    if-le v5, v0, :cond_3a

    .line 707
    .line 708
    const/4 v0, 0x0

    .line 709
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result v5

    .line 713
    if-nez v5, :cond_39

    .line 714
    .line 715
    goto :goto_1c

    .line 716
    :cond_39
    const/4 v5, 0x1

    .line 717
    goto :goto_1d

    .line 718
    :cond_3a
    const/4 v0, 0x0

    .line 719
    :goto_1c
    const/4 v5, 0x0

    .line 720
    :goto_1d
    or-int v5, p7, v5

    .line 721
    .line 722
    and-int v18, v3, v33

    .line 723
    .line 724
    xor-int v0, v18, v23

    .line 725
    .line 726
    const/high16 v1, 0x4000000

    .line 727
    .line 728
    if-le v0, v1, :cond_3c

    .line 729
    .line 730
    const/4 v0, 0x0

    .line 731
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-nez v0, :cond_3b

    .line 736
    .line 737
    goto :goto_1e

    .line 738
    :cond_3b
    const/4 v0, 0x1

    .line 739
    goto :goto_1f

    .line 740
    :cond_3c
    :goto_1e
    const/4 v0, 0x0

    .line 741
    :goto_1f
    or-int/2addr v0, v5

    .line 742
    and-int v1, v3, v28

    .line 743
    .line 744
    xor-int v1, v1, v24

    .line 745
    .line 746
    const/high16 v5, 0x20000000

    .line 747
    .line 748
    if-le v1, v5, :cond_3d

    .line 749
    .line 750
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    if-nez v1, :cond_3e

    .line 755
    .line 756
    :cond_3d
    and-int v1, v3, v24

    .line 757
    .line 758
    if-ne v1, v5, :cond_3f

    .line 759
    .line 760
    :cond_3e
    const/4 v1, 0x1

    .line 761
    goto :goto_20

    .line 762
    :cond_3f
    const/4 v1, 0x0

    .line 763
    :goto_20
    or-int/2addr v0, v1

    .line 764
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    or-int/2addr v0, v1

    .line 769
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    or-int/2addr v0, v1

    .line 774
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    if-nez v0, :cond_41

    .line 779
    .line 780
    if-ne v1, v10, :cond_40

    .line 781
    .line 782
    goto :goto_21

    .line 783
    :cond_40
    move-object v0, v1

    .line 784
    move-object/from16 v37, v27

    .line 785
    .line 786
    move-object/from16 v7, v29

    .line 787
    .line 788
    const/4 v11, 0x0

    .line 789
    const/16 v25, 0x1

    .line 790
    .line 791
    move-object/from16 v1, p6

    .line 792
    .line 793
    goto :goto_22

    .line 794
    :cond_41
    :goto_21
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    .line 795
    .line 796
    move-object v1, v8

    .line 797
    move-object v8, v7

    .line 798
    move-object v7, v1

    .line 799
    move-object/from16 v1, p6

    .line 800
    .line 801
    move-object/from16 v37, v27

    .line 802
    .line 803
    move-object/from16 v3, v29

    .line 804
    .line 805
    move-object/from16 v5, v30

    .line 806
    .line 807
    const/4 v11, 0x0

    .line 808
    const/16 v25, 0x1

    .line 809
    .line 810
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;Landroidx/compose/ui/Alignment$Horizontal;)V

    .line 811
    .line 812
    .line 813
    move-object v7, v3

    .line 814
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    :goto_22
    move-object v8, v0

    .line 818
    check-cast v8, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    .line 819
    .line 820
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 821
    .line 822
    if-eqz v13, :cond_47

    .line 823
    .line 824
    const v0, -0x7bcec0e8

    .line 825
    .line 826
    .line 827
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 828
    .line 829
    .line 830
    and-int/lit8 v0, v15, 0xe

    .line 831
    .line 832
    xor-int/lit8 v0, v0, 0x6

    .line 833
    .line 834
    const/4 v5, 0x4

    .line 835
    if-le v0, v5, :cond_42

    .line 836
    .line 837
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    if-nez v0, :cond_44

    .line 842
    .line 843
    :cond_42
    and-int/lit8 v0, v15, 0x6

    .line 844
    .line 845
    if-ne v0, v5, :cond_43

    .line 846
    .line 847
    goto :goto_23

    .line 848
    :cond_43
    move/from16 v25, v11

    .line 849
    .line 850
    :cond_44
    :goto_23
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 851
    .line 852
    .line 853
    move-result v0

    .line 854
    or-int v0, v25, v0

    .line 855
    .line 856
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v3

    .line 860
    if-nez v0, :cond_45

    .line 861
    .line 862
    if-ne v3, v10, :cond_46

    .line 863
    .line 864
    :cond_45
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    .line 865
    .line 866
    invoke-direct {v3, v1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 870
    .line 871
    .line 872
    :cond_46
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    .line 873
    .line 874
    iget-object v0, v1, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 875
    .line 876
    invoke-static {v3, v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 881
    .line 882
    .line 883
    goto :goto_24

    .line 884
    :cond_47
    const v0, -0x7bc835d1

    .line 885
    .line 886
    .line 887
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 891
    .line 892
    .line 893
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 894
    .line 895
    :goto_24
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    .line 896
    .line 897
    invoke-interface {v9, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    iget-object v4, v1, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 902
    .line 903
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    move-object/from16 v5, v37

    .line 908
    .line 909
    invoke-static {v3, v7, v5, v2, v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    .line 910
    .line 911
    .line 912
    move-result-object v3

    .line 913
    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 918
    .line 919
    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    .line 920
    .line 921
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 926
    .line 927
    move-object/from16 v3, p2

    .line 928
    .line 929
    move-object/from16 v5, p3

    .line 930
    .line 931
    move v4, v13

    .line 932
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ImageKt;->scrollableArea$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;ZLandroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/Modifier;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    move-object v6, v1

    .line 937
    iget-object v2, v6, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 938
    .line 939
    const/4 v5, 0x0

    .line 940
    move-object v1, v0

    .line 941
    move-object v0, v7

    .line 942
    move-object v3, v8

    .line 943
    move-object v4, v14

    .line 944
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;Landroidx/compose/runtime/Composer;I)V

    .line 945
    .line 946
    .line 947
    goto :goto_25

    .line 948
    :cond_48
    move-object v6, v1

    .line 949
    move-object v4, v14

    .line 950
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 951
    .line 952
    .line 953
    :goto_25
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 954
    .line 955
    .line 956
    move-result-object v13

    .line 957
    if-eqz v13, :cond_49

    .line 958
    .line 959
    new-instance v0, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;

    .line 960
    .line 961
    move/from16 v10, p0

    .line 962
    .line 963
    move/from16 v11, p1

    .line 964
    .line 965
    move-object/from16 v4, p3

    .line 966
    .line 967
    move-object/from16 v8, p4

    .line 968
    .line 969
    move-object/from16 v3, p5

    .line 970
    .line 971
    move-object/from16 v7, p8

    .line 972
    .line 973
    move/from16 v5, p11

    .line 974
    .line 975
    move-object v2, v6

    .line 976
    move-object v1, v9

    .line 977
    move-object v9, v12

    .line 978
    move-object/from16 v6, p2

    .line 979
    .line 980
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/ButtonKt$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lkotlin/jvm/functions/Function1;II)V

    .line 981
    .line 982
    .line 983
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 984
    .line 985
    :cond_49
    return-void
.end method

.method public static final LifecycleEventEffect(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x2a486d16

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    or-int/lit8 v0, p4, 0x10

    .line 10
    .line 11
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x100

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x80

    .line 21
    .line 22
    :goto_0
    or-int/2addr v0, v1

    .line 23
    and-int/lit16 v1, v0, 0x93

    .line 24
    .line 25
    const/16 v2, 0x92

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_1
    and-int/2addr v0, v3

    .line 34
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_7

    .line 39
    .line 40
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 41
    .line 42
    .line 43
    and-int/lit8 v0, p4, 0x1

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    :goto_2
    sget-object p1, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 59
    .line 60
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 65
    .line 66
    :goto_3
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 67
    .line 68
    .line 69
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 70
    .line 71
    if-eq p0, v0, :cond_6

    .line 72
    .line 73
    invoke-static {p2, p3}, Landroidx/compose/runtime/Updater;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    or-int/2addr v1, v2

    .line 86
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 93
    .line 94
    if-ne v2, v1, :cond_5

    .line 95
    .line 96
    :cond_4
    new-instance v2, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/16 v1, 0x14

    .line 99
    .line 100
    invoke-direct {v2, p1, p0, v0, v1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 107
    .line 108
    invoke-static {p1, v2, p3}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 109
    .line 110
    .line 111
    :goto_4
    move-object v2, p1

    .line 112
    goto :goto_5

    .line 113
    :cond_6
    const-string p0, "LifecycleEventEffect cannot be used to listen for Lifecycle.Event.ON_DESTROY, since Compose disposes of the composition before ON_DESTROY observers are invoked."

    .line 114
    .line 115
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_7
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 130
    .line 131
    const/4 v5, 0x4

    .line 132
    move-object v1, p0

    .line 133
    move-object v3, p2

    .line 134
    move v4, p4

    .line 135
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 139
    .line 140
    :cond_8
    return-void
.end method

.method public static final LifecycleStartEffect(Ljava/lang/Object;Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x298a3a31

    .line 4
    .line 5
    .line 6
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p5, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p5

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p5

    .line 25
    :goto_1
    and-int/lit8 v1, p5, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit16 v1, p5, 0x180

    .line 42
    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    or-int/lit16 v0, v0, 0x80

    .line 46
    .line 47
    :cond_4
    and-int/lit16 v1, p5, 0xc00

    .line 48
    .line 49
    if-nez v1, :cond_6

    .line 50
    .line 51
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    const/16 v1, 0x800

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    const/16 v1, 0x400

    .line 61
    .line 62
    :goto_3
    or-int/2addr v0, v1

    .line 63
    :cond_6
    and-int/lit16 v1, v0, 0x493

    .line 64
    .line 65
    const/16 v2, 0x492

    .line 66
    .line 67
    if-eq v1, v2, :cond_7

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    goto :goto_4

    .line 71
    :cond_7
    const/4 v1, 0x0

    .line 72
    :goto_4
    and-int/lit8 v2, v0, 0x1

    .line 73
    .line 74
    invoke-virtual {p4, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_c

    .line 79
    .line 80
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 81
    .line 82
    .line 83
    and-int/lit8 v1, p5, 0x1

    .line 84
    .line 85
    if-eqz v1, :cond_9

    .line 86
    .line 87
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_8
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    :goto_5
    and-int/lit16 v0, v0, -0x381

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_9
    :goto_6
    sget-object p2, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 101
    .line 102
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :goto_7
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    or-int/2addr v1, v2

    .line 121
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    or-int/2addr v1, v2

    .line 126
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-nez v1, :cond_a

    .line 131
    .line 132
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 133
    .line 134
    if-ne v2, v1, :cond_b

    .line 135
    .line 136
    :cond_a
    new-instance v2, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 137
    .line 138
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {v2, v1}, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;-><init>(Landroidx/lifecycle/Lifecycle;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p4, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_b
    check-cast v2, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 149
    .line 150
    shr-int/lit8 v0, v0, 0x3

    .line 151
    .line 152
    and-int/lit16 v0, v0, 0x380

    .line 153
    .line 154
    invoke-static {p2, v2, p3, p4, v0}, Landroidx/room/util/SchemaInfoUtilKt;->LifecycleStartEffectImpl(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 155
    .line 156
    .line 157
    :goto_8
    move-object v6, p2

    .line 158
    goto :goto_9

    .line 159
    :cond_c
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 160
    .line 161
    .line 162
    goto :goto_8

    .line 163
    :goto_9
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    if-eqz p2, :cond_d

    .line 168
    .line 169
    new-instance v3, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    move-object v4, p0

    .line 173
    move-object v5, p1

    .line 174
    move-object v7, p3

    .line 175
    move v8, p5

    .line 176
    invoke-direct/range {v3 .. v9}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 177
    .line 178
    .line 179
    iput-object v3, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 180
    .line 181
    :cond_d
    return-void
.end method

.method public static final LifecycleStartEffectImpl(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0xd9cac4e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p4, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    or-int/2addr v0, p4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p4

    .line 25
    :goto_1
    and-int/lit8 v1, p4, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit16 v1, p4, 0x180

    .line 42
    .line 43
    const/16 v2, 0x100

    .line 44
    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    move v1, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/16 v1, 0x80

    .line 56
    .line 57
    :goto_3
    or-int/2addr v0, v1

    .line 58
    :cond_5
    and-int/lit16 v1, v0, 0x93

    .line 59
    .line 60
    const/16 v3, 0x92

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eq v1, v3, :cond_6

    .line 65
    .line 66
    move v1, v5

    .line 67
    goto :goto_4

    .line 68
    :cond_6
    move v1, v4

    .line 69
    :goto_4
    and-int/lit8 v3, v0, 0x1

    .line 70
    .line 71
    invoke-virtual {p3, v3, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_a

    .line 76
    .line 77
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    and-int/lit16 v0, v0, 0x380

    .line 82
    .line 83
    if-ne v0, v2, :cond_7

    .line 84
    .line 85
    move v4, v5

    .line 86
    :cond_7
    or-int v0, v1, v4

    .line 87
    .line 88
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    or-int/2addr v0, v1

    .line 93
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-nez v0, :cond_8

    .line 98
    .line 99
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 100
    .line 101
    if-ne v1, v0, :cond_9

    .line 102
    .line 103
    :cond_8
    new-instance v1, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    const/16 v0, 0x13

    .line 106
    .line 107
    invoke-direct {v1, p0, p1, p2, v0}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    invoke-static {p0, p1, v1, p3}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_a
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 120
    .line 121
    .line 122
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    if-eqz p3, :cond_b

    .line 127
    .line 128
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 129
    .line 130
    const/16 v5, 0xe

    .line 131
    .line 132
    move-object v1, p0

    .line 133
    move-object v2, p1

    .line 134
    move-object v3, p2

    .line 135
    move v4, p4

    .line 136
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 140
    .line 141
    :cond_b
    return-void
.end method

.method public static final LoadingItem(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    move/from16 v4, p4

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v9, p3

    .line 7
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const p3, 0x3069a368

    .line 10
    .line 11
    .line 12
    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 p3, v4, 0x6

    .line 16
    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    const/4 p3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p3, 0x2

    .line 28
    :goto_0
    or-int/2addr p3, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move p3, v4

    .line 31
    :goto_1
    or-int/lit8 p3, p3, 0x30

    .line 32
    .line 33
    and-int/lit16 v0, v4, 0x180

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const/16 v0, 0x100

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v0, 0x80

    .line 47
    .line 48
    :goto_2
    or-int/2addr p3, v0

    .line 49
    :cond_3
    and-int/lit16 v0, p3, 0x93

    .line 50
    .line 51
    const/16 v1, 0x92

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-eq v0, v1, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    move v0, v2

    .line 59
    :goto_3
    and-int/lit8 v1, p3, 0x1

    .line 60
    .line 61
    invoke-virtual {v9, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    new-instance p1, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    invoke-direct {p1, p2, v2}, Lapp/k9mail/feature/account/common/ui/item/LoadingItemKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    const v0, 0x219c7e88

    .line 73
    .line 74
    .line 75
    invoke-static {v0, p1, v9}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    and-int/lit8 p1, p3, 0xe

    .line 80
    .line 81
    or-int/lit16 p1, p1, 0xc00

    .line 82
    .line 83
    and-int/lit8 p3, p3, 0x70

    .line 84
    .line 85
    or-int v10, p1, p3

    .line 86
    .line 87
    const/4 v11, 0x2

    .line 88
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    move-object v5, p0

    .line 92
    invoke-static/range {v5 .. v11}, Landroidx/appcompat/app/ActionBar;->ListItem(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 93
    .line 94
    .line 95
    move-object v2, v6

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 98
    .line 99
    .line 100
    move-object v2, p1

    .line 101
    :goto_4
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    new-instance v0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;

    .line 108
    .line 109
    const/16 v5, 0x12

    .line 110
    .line 111
    move-object v1, p0

    .line 112
    move-object v3, p2

    .line 113
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 117
    .line 118
    :cond_6
    return-void
.end method

.method public static final LoadingView(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, 0x7bea40a7

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v1, p5, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v2, p4, 0x6

    .line 18
    .line 19
    move v4, v2

    .line 20
    move-object/from16 v2, p0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    and-int/lit8 v2, p4, 0x6

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v4, 0x2

    .line 38
    :goto_0
    or-int v4, p4, v4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object/from16 v2, p0

    .line 42
    .line 43
    move/from16 v4, p4

    .line 44
    .line 45
    :goto_1
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/16 v10, 0x20

    .line 50
    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    move v5, v10

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/16 v5, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v4, v5

    .line 58
    or-int/lit16 v4, v4, 0x180

    .line 59
    .line 60
    and-int/lit16 v5, v4, 0x93

    .line 61
    .line 62
    const/16 v6, 0x92

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    if-eq v5, v6, :cond_4

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move v5, v11

    .line 70
    :goto_3
    and-int/lit8 v6, v4, 0x1

    .line 71
    .line 72
    invoke-virtual {v3, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_a

    .line 77
    .line 78
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    move-object v14, v13

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move-object v14, v2

    .line 85
    :goto_4
    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 86
    .line 87
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 88
    .line 89
    invoke-interface {v1, v14}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v5, 0x3

    .line 94
    shr-int/2addr v4, v5

    .line 95
    invoke-static {v15, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    iget-wide v7, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 100
    .line 101
    ushr-long v16, v7, v10

    .line 102
    .line 103
    xor-long v7, v7, v16

    .line 104
    .line 105
    long-to-int v7, v7

    .line 106
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-static {v3, v2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 115
    .line 116
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 120
    .line 121
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 122
    .line 123
    .line 124
    move/from16 p3, v10

    .line 125
    .line 126
    iget-boolean v10, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 127
    .line 128
    if-eqz v10, :cond_6

    .line 129
    .line 130
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 135
    .line 136
    .line 137
    :goto_5
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 138
    .line 139
    invoke-static {v3, v6, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 143
    .line 144
    invoke-static {v3, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 152
    .line 153
    invoke-static {v3, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 154
    .line 155
    .line 156
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 157
    .line 158
    invoke-static {v3, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 159
    .line 160
    .line 161
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 162
    .line 163
    invoke-static {v3, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 164
    .line 165
    .line 166
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 167
    .line 168
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    const/high16 v2, 0x41c00000    # 24.0f

    .line 178
    .line 179
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 184
    .line 185
    sget-object v11, Landroidx/compose/foundation/layout/OffsetKt;->Center:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 186
    .line 187
    const/16 v5, 0x36

    .line 188
    .line 189
    invoke-static {v11, v2, v3, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    move/from16 p2, v4

    .line 194
    .line 195
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 196
    .line 197
    ushr-long v18, v4, p3

    .line 198
    .line 199
    xor-long v4, v4, v18

    .line 200
    .line 201
    long-to-int v4, v4

    .line 202
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-static {v3, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 211
    .line 212
    .line 213
    iget-boolean v11, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 214
    .line 215
    if-eqz v11, :cond_7

    .line 216
    .line 217
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 218
    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_7
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 222
    .line 223
    .line 224
    :goto_6
    invoke-static {v3, v2, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v3, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v4, v3, v8, v3, v7}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v3, v1, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 234
    .line 235
    .line 236
    if-eqz v0, :cond_8

    .line 237
    .line 238
    const v1, 0x5d464b87

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 242
    .line 243
    .line 244
    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    .line 245
    .line 246
    const/4 v1, 0x3

    .line 247
    invoke-direct {v4, v1}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 248
    .line 249
    .line 250
    and-int/lit8 v1, p2, 0xe

    .line 251
    .line 252
    move-object v2, v9

    .line 253
    const/16 v9, 0x36

    .line 254
    .line 255
    move-object v5, v8

    .line 256
    move v8, v1

    .line 257
    const/4 v1, 0x0

    .line 258
    move-object v11, v2

    .line 259
    move-object/from16 v18, v7

    .line 260
    .line 261
    move-object v7, v3

    .line 262
    const-wide/16 v2, 0x0

    .line 263
    .line 264
    move-object/from16 v19, v5

    .line 265
    .line 266
    const/4 v5, 0x0

    .line 267
    move-object/from16 v20, v6

    .line 268
    .line 269
    const/4 v6, 0x0

    .line 270
    move-object/from16 p2, v12

    .line 271
    .line 272
    move-object/from16 p0, v15

    .line 273
    .line 274
    move-object/from16 v12, v18

    .line 275
    .line 276
    move-object/from16 v15, v19

    .line 277
    .line 278
    move-object/from16 v18, v14

    .line 279
    .line 280
    move-object/from16 v14, v20

    .line 281
    .line 282
    invoke-static/range {v0 .. v9}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 283
    .line 284
    .line 285
    const/4 v0, 0x0

    .line 286
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_8
    move-object v11, v9

    .line 291
    move-object/from16 p2, v12

    .line 292
    .line 293
    move-object/from16 v18, v14

    .line 294
    .line 295
    move-object/from16 p0, v15

    .line 296
    .line 297
    const/4 v0, 0x0

    .line 298
    move-object v14, v6

    .line 299
    move-object v12, v7

    .line 300
    move-object v15, v8

    .line 301
    move-object v7, v3

    .line 302
    const v1, 0x5d48861f

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 309
    .line 310
    .line 311
    :goto_7
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 312
    .line 313
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    const/high16 v0, 0x43000000    # 128.0f

    .line 323
    .line 324
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 329
    .line 330
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 331
    .line 332
    const/16 v3, 0x30

    .line 333
    .line 334
    invoke-static {v2, v1, v7, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    iget-wide v2, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 339
    .line 340
    ushr-long v4, v2, p3

    .line 341
    .line 342
    xor-long/2addr v2, v4

    .line 343
    long-to-int v2, v2

    .line 344
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-static {v7, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 353
    .line 354
    .line 355
    iget-boolean v4, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 356
    .line 357
    if-eqz v4, :cond_9

    .line 358
    .line 359
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 364
    .line 365
    .line 366
    :goto_8
    invoke-static {v7, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 367
    .line 368
    .line 369
    invoke-static {v7, v3, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 370
    .line 371
    .line 372
    invoke-static {v2, v7, v15, v7, v12}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 373
    .line 374
    .line 375
    move-object/from16 v1, p2

    .line 376
    .line 377
    invoke-static {v7, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 378
    .line 379
    .line 380
    const/4 v4, 0x0

    .line 381
    const/4 v5, 0x3

    .line 382
    const/4 v0, 0x0

    .line 383
    const-wide/16 v1, 0x0

    .line 384
    .line 385
    move-object v3, v7

    .line 386
    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/sasl/OAuthBearer;->CircularProgressIndicator-iJQMabo(Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 387
    .line 388
    .line 389
    const/4 v0, 0x1

    .line 390
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 397
    .line 398
    .line 399
    move-object/from16 v3, p0

    .line 400
    .line 401
    move-object/from16 v1, v18

    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_a
    move-object v7, v3

    .line 405
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 406
    .line 407
    .line 408
    move-object/from16 v3, p2

    .line 409
    .line 410
    move-object v1, v2

    .line 411
    :goto_9
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    if-eqz v6, :cond_b

    .line 416
    .line 417
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/IconKt$$ExternalSyntheticLambda0;

    .line 418
    .line 419
    move-object/from16 v2, p1

    .line 420
    .line 421
    move/from16 v4, p4

    .line 422
    .line 423
    move/from16 v5, p5

    .line 424
    .line 425
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/IconKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;II)V

    .line 426
    .line 427
    .line 428
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 429
    .line 430
    :cond_b
    return-void
.end method

.method public static final PermissionBoxes(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v5, p2

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, 0x7629618e

    .line 5
    .line 6
    .line 7
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x2

    .line 19
    :goto_0
    or-int/2addr p2, p3

    .line 20
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v7, 0x20

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move v0, v7

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 v0, 0x10

    .line 31
    .line 32
    :goto_1
    or-int/2addr p2, v0

    .line 33
    and-int/lit8 v0, p2, 0x13

    .line 34
    .line 35
    const/16 v1, 0x12

    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    const/4 v9, 0x0

    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    move v0, v8

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v0, v9

    .line 44
    :goto_2
    and-int/lit8 v1, p2, 0x1

    .line 45
    .line 46
    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_a

    .line 51
    .line 52
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Person:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 53
    .line 54
    iget-object v1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->contactsPermissionState:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 55
    .line 56
    const v2, 0x7f12050d

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const v3, 0x7f12050c

    .line 64
    .line 65
    .line 66
    invoke-static {v5, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    and-int/lit8 p2, p2, 0x70

    .line 71
    .line 72
    if-ne p2, v7, :cond_3

    .line 73
    .line 74
    move v4, v8

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    move v4, v9

    .line 77
    :goto_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 82
    .line 83
    if-nez v4, :cond_4

    .line 84
    .line 85
    if-ne v6, v10, :cond_5

    .line 86
    .line 87
    :cond_4
    new-instance v6, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 88
    .line 89
    const/16 v4, 0x15

    .line 90
    .line 91
    invoke-direct {v6, v4, p1}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    move-object v4, v6

    .line 98
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-static/range {v0 .. v6}, Landroidx/appcompat/app/ActionBar;->PermissionBox(Landroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 102
    .line 103
    .line 104
    iget-boolean v0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->isNotificationsPermissionVisible:Z

    .line 105
    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    const v0, -0x6668dc80

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 115
    .line 116
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 121
    .line 122
    const/high16 v1, 0x42000000    # 32.0f

    .line 123
    .line 124
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 125
    .line 126
    invoke-static {v0, v2, v1, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Filled;->Notifications:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 130
    .line 131
    iget-object v1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;->notificationsPermissionState:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;

    .line 132
    .line 133
    const v2, 0x7f12050f

    .line 134
    .line 135
    .line 136
    invoke-static {v5, v2}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const v3, 0x7f12050e

    .line 141
    .line 142
    .line 143
    invoke-static {v5, v3}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-ne p2, v7, :cond_6

    .line 148
    .line 149
    move p2, v8

    .line 150
    goto :goto_4

    .line 151
    :cond_6
    move p2, v9

    .line 152
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-nez p2, :cond_7

    .line 157
    .line 158
    if-ne v4, v10, :cond_8

    .line 159
    .line 160
    :cond_7
    new-instance v4, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 161
    .line 162
    const/16 p2, 0x16

    .line 163
    .line 164
    invoke-direct {v4, p2, p1}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 171
    .line 172
    const/4 v6, 0x0

    .line 173
    invoke-static/range {v0 .. v6}, Landroidx/appcompat/app/ActionBar;->PermissionBox(Landroidx/compose/ui/graphics/vector/ImageVector;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$UiPermissionState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_9
    const p2, -0x6661878c

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 191
    .line 192
    .line 193
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    if-eqz p2, :cond_b

    .line 198
    .line 199
    new-instance v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;

    .line 200
    .line 201
    invoke-direct {v0, p0, p1, p3, v8}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda4;-><init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;II)V

    .line 202
    .line 203
    .line 204
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 205
    .line 206
    :cond_b
    return-void
.end method

.method public static final PermissionsContent(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v7, p4

    .line 5
    .line 6
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, -0x6d9a02ff

    .line 9
    .line 10
    .line 11
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x2

    .line 23
    :goto_0
    or-int v0, p5, v0

    .line 24
    .line 25
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const/16 v3, 0x20

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v3, 0x10

    .line 35
    .line 36
    :goto_1
    or-int/2addr v0, v3

    .line 37
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const/16 v4, 0x100

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v4, 0x80

    .line 47
    .line 48
    :goto_2
    or-int/2addr v0, v4

    .line 49
    or-int/lit16 v0, v0, 0xc00

    .line 50
    .line 51
    and-int/lit16 v4, v0, 0x493

    .line 52
    .line 53
    const/16 v5, 0x492

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    if-eq v4, v5, :cond_3

    .line 57
    .line 58
    move v4, v6

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/4 v4, 0x0

    .line 61
    :goto_3
    and-int/2addr v0, v6

    .line 62
    invoke-virtual {v7, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-static {v7}, Landroidx/compose/foundation/ImageKt;->rememberScrollState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 73
    .line 74
    invoke-static {v7}, Landroidx/compose/foundation/layout/FlowRowOverflow;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->navigationBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 79
    .line 80
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 81
    .line 82
    invoke-static {v10, v4}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    new-instance v4, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    invoke-direct {v4, p0, p1, v0}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/ScrollState;)V

    .line 89
    .line 90
    .line 91
    const v5, 0x40e33806

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v4, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    move-object v1, v0

    .line 99
    new-instance v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    move-object v3, p0

    .line 103
    move-object v4, p1

    .line 104
    move-object v2, p2

    .line 105
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;I)V

    .line 106
    .line 107
    .line 108
    const v1, 0x236e6d8d

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    move-object v2, v8

    .line 116
    const v8, 0x180180

    .line 117
    .line 118
    .line 119
    const/16 v9, 0x3a

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    const/4 v3, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v5, 0x0

    .line 125
    move-object v11, v6

    .line 126
    move-object v6, v0

    .line 127
    move-object v0, v11

    .line 128
    invoke-static/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 129
    .line 130
    .line 131
    move-object v4, v10

    .line 132
    goto :goto_4

    .line 133
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 134
    .line 135
    .line 136
    move-object v4, p3

    .line 137
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_5

    .line 142
    .line 143
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 144
    .line 145
    const/16 v6, 0x9

    .line 146
    .line 147
    move-object v1, p0

    .line 148
    move-object v2, p1

    .line 149
    move-object v3, p2

    .line 150
    move/from16 v5, p5

    .line 151
    .line 152
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 156
    .line 157
    :cond_5
    return-void
.end method

.method public static final SimpleLayout(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x6e8e8303

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v1, v0, 0x13

    .line 20
    .line 21
    const/16 v2, 0x12

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    move v1, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_1
    and-int/2addr v0, v3

    .line 30
    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1$1;

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 50
    .line 51
    iget-wide v1, p2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 52
    .line 53
    const/16 v4, 0x20

    .line 54
    .line 55
    ushr-long v4, v1, v4

    .line 56
    .line 57
    xor-long/2addr v1, v4

    .line 58
    long-to-int v1, v1

    .line 59
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, p0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 73
    .line 74
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 75
    .line 76
    .line 77
    iget-boolean v6, p2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 78
    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 86
    .line 87
    .line 88
    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 89
    .line 90
    invoke-static {p2, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 94
    .line 95
    invoke-static {p2, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 103
    .line 104
    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 108
    .line 109
    invoke-static {p2, v0}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 113
    .line 114
    invoke-static {p2, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x6

    .line 118
    invoke-static {v0, p1, p2, v3}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    new-instance v0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;

    .line 132
    .line 133
    const/16 v1, 0xb

    .line 134
    .line 135
    invoke-direct {v0, p3, v1, p0, p1}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 139
    .line 140
    :cond_5
    return-void
.end method

.method public static final actionCompose(Landroid/content/Context;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 27
    .line 28
    sget-object p1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountSetup;->INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$AccountSetup;

    .line 29
    .line 30
    invoke-static {p0, p1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    :cond_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_0
    if-eqz v1, :cond_4

    .line 47
    .line 48
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 49
    .line 50
    const-class v0, Lcom/fsck/k9/activity/MessageCompose;

    .line 51
    .line 52
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "account"

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const-string v0, "com.fsck.k9.intent.action.COMPOSE"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Unexpected state. At this point, either account ("

    .line 72
    .line 73
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, ") or defaultAccount ("

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, ") must have a value."

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public static final actionEditDraft(Landroid/content/Context;Lapp/k9mail/legacy/message/controller/MessageReference;)V
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
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "message_reference"

    .line 15
    .line 16
    invoke-virtual {p1}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string p1, "com.fsck.k9.intent.action.EDIT_DRAFT"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final actionReply(Landroid/content/Context;Lapp/k9mail/legacy/message/controller/MessageReference;ZLorg/openintents/openpgp/OpenPgpDecryptionResult;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-class v1, Lcom/fsck/k9/activity/MessageCompose;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "message_decryption_result"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p3, "message_reference"

    .line 17
    .line 18
    invoke-virtual {p1}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const-string p1, "com.fsck.k9.intent.action.REPLY_ALL"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "com.fsck.k9.intent.action.REPLY"

    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-wide v3, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/16 v5, 0x20

    .line 22
    .line 23
    if-gt v0, v2, :cond_1

    .line 24
    .line 25
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    sub-int/2addr v7, v2

    .line 43
    move v8, v1

    .line 44
    :goto_0
    if-ge v8, v7, :cond_2

    .line 45
    .line 46
    add-int/lit8 v8, v8, 0x1

    .line 47
    .line 48
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    move-object v10, v9

    .line 53
    check-cast v10, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 54
    .line 55
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 56
    .line 57
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {v11}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 62
    .line 63
    .line 64
    move-result-wide v11

    .line 65
    shr-long/2addr v11, v5

    .line 66
    long-to-int v11, v11

    .line 67
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    invoke-virtual {v12}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 76
    .line 77
    .line 78
    move-result-wide v12

    .line 79
    shr-long/2addr v12, v5

    .line 80
    long-to-int v12, v12

    .line 81
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    sub-float/2addr v11, v12

    .line 86
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 95
    .line 96
    .line 97
    move-result-wide v12

    .line 98
    and-long/2addr v12, v3

    .line 99
    long-to-int v6, v12

    .line 100
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->getBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-virtual {v10}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 109
    .line 110
    .line 111
    move-result-wide v12

    .line 112
    and-long/2addr v12, v3

    .line 113
    long-to-int v10, v12

    .line 114
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    sub-float/2addr v6, v10

    .line 119
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    int-to-long v10, v10

    .line 128
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    int-to-long v12, v6

    .line 133
    shl-long/2addr v10, v5

    .line 134
    and-long/2addr v12, v3

    .line 135
    or-long/2addr v10, v12

    .line 136
    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    .line 137
    .line 138
    invoke-direct {v6, v10, v11}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-object v6, v9

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    move-object p0, v0

    .line 147
    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ne v0, v2, :cond_3

    .line 152
    .line 153
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    .line 158
    .line 159
    iget-wide v6, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    const-string v0, "Empty collection can\'t be reduced."

    .line 169
    .line 170
    invoke-static {v0}, Landroidx/compose/ui/util/ListUtilsKt;->throwUnsupportedOperationException(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    sub-int/2addr v6, v2

    .line 182
    if-gt v2, v6, :cond_5

    .line 183
    .line 184
    move v7, v2

    .line 185
    :goto_2
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v8, Landroidx/compose/ui/geometry/Offset;

    .line 190
    .line 191
    iget-wide v8, v8, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 192
    .line 193
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 194
    .line 195
    iget-wide v10, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 196
    .line 197
    invoke-static {v10, v11, v8, v9}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v8

    .line 201
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    .line 202
    .line 203
    invoke-direct {v0, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 204
    .line 205
    .line 206
    if-eq v7, v6, :cond_5

    .line 207
    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 212
    .line 213
    iget-wide v6, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 214
    .line 215
    :goto_3
    shr-long v8, v6, v5

    .line 216
    .line 217
    long-to-int p0, v8

    .line 218
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    and-long/2addr v3, v6

    .line 223
    long-to-int v0, v3

    .line 224
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    cmpg-float p0, v0, p0

    .line 229
    .line 230
    if-gez p0, :cond_6

    .line 231
    .line 232
    :goto_4
    return v2

    .line 233
    :cond_6
    return v1
.end method

.method public static final checkElementIndex$runtime(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-ge p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "index: "

    .line 7
    .line 8
    const-string v1, ", size: "

    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final checkPositionIndex$runtime(II)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    if-gt p0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "index: "

    .line 7
    .line 8
    const-string v1, ", size: "

    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final checkRangeIndexes$runtime(III)V
    .locals 3

    .line 1
    const-string v0, "fromIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, " > toIndex: "

    .line 11
    .line 12
    invoke-static {p0, p1, v0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v1, ", toIndex: "

    .line 21
    .line 22
    const-string v2, ", size: "

    .line 23
    .line 24
    invoke-static {v0, p0, v1, p1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p2, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final varargs contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_a

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    instance-of v5, v3, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    instance-of v5, v3, Ljava/lang/Integer;

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    instance-of v5, v3, Ljava/lang/Long;

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    check-cast v3, Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    instance-of v5, v3, Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    check-cast v3, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    instance-of v5, v3, Ljava/lang/Float;

    .line 66
    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    check-cast v3, Ljava/lang/Float;

    .line 70
    .line 71
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    instance-of v5, v3, Ljava/lang/Double;

    .line 76
    .line 77
    if-eqz v5, :cond_6

    .line 78
    .line 79
    check-cast v3, Ljava/lang/Double;

    .line 80
    .line 81
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    instance-of v5, v3, [B

    .line 86
    .line 87
    if-eqz v5, :cond_7

    .line 88
    .line 89
    check-cast v3, [B

    .line 90
    .line 91
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_7
    instance-of v5, v3, Ljava/lang/Byte;

    .line 96
    .line 97
    if-eqz v5, :cond_8

    .line 98
    .line 99
    check-cast v3, Ljava/lang/Byte;

    .line 100
    .line 101
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_8
    instance-of v5, v3, Ljava/lang/Short;

    .line 106
    .line 107
    if-eqz v5, :cond_9

    .line 108
    .line 109
    check-cast v3, Ljava/lang/Short;

    .line 110
    .line 111
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string v0, " for key \""

    .line 126
    .line 127
    const/16 v1, 0x22

    .line 128
    .line 129
    const-string v2, "Illegal value type "

    .line 130
    .line 131
    invoke-static {v2, p0, v0, v4, v1}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    const/4 p0, 0x0

    .line 135
    return-object p0

    .line 136
    :cond_a
    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlin/Pair;

    .line 7
    .line 8
    const-string v2, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 9
    .line 10
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    new-array p0, p0, [Lkotlin/Pair;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, p0, v2

    .line 18
    .line 19
    invoke-static {v0, p0}, Landroidx/work/OperationKt;->withArguments(Landroidx/fragment/app/Fragment;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static createIsolatedReader(IIII)Lcom/fsck/k9/mailstore/LocalFolder$12;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroid/media/ImageReader;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public static final createNavController$NavHostControllerKt__NavHostController_androidKt(Landroid/content/Context;)Landroidx/navigation/NavHostController;
    .locals 3

    .line 1
    new-instance v0, Landroidx/navigation/NavHostController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 12
    .line 13
    new-instance v2, Landroidx/navigation/compose/ComposeNavGraphNavigator;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 22
    .line 23
    new-instance v1, Landroidx/navigation/compose/ComposeNavigator;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/navigation/compose/ComposeNavigator;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/navigation/compose/DialogNavigator;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static flushThemedResourcesCache(Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/room/util/SchemaInfoUtilKt;->sThemedResourceCacheClazzFetched:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "ResourcesFlusher"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Landroidx/room/util/SchemaInfoUtilKt;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v3, "Could not find ThemedResourceCache class"

    .line 19
    .line 20
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    sput-boolean v1, Landroidx/room/util/SchemaInfoUtilKt;->sThemedResourceCacheClazzFetched:Z

    .line 24
    .line 25
    :cond_0
    sget-object v0, Landroidx/room/util/SchemaInfoUtilKt;->sThemedResourceCacheClazz:Ljava/lang/Class;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    sget-boolean v3, Landroidx/room/util/SchemaInfoUtilKt;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    :try_start_1
    const-string v3, "mUnthemedEntries"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Landroidx/room/util/SchemaInfoUtilKt;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception v0

    .line 47
    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 48
    .line 49
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_1
    sput-boolean v1, Landroidx/room/util/SchemaInfoUtilKt;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 53
    .line 54
    :cond_2
    sget-object v0, Landroidx/room/util/SchemaInfoUtilKt;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_2
    move-exception p0

    .line 67
    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 68
    .line 69
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    :goto_2
    if-eqz p0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_3
    return-void
.end method

.method public static final fromDatabaseFolderType(Ljava/lang/String;)Lcom/fsck/k9/mail/FolderType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sparse-switch v0, :sswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :sswitch_0
    const-string v0, "regular"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/fsck/k9/mail/FolderType;->REGULAR:Lcom/fsck/k9/mail/FolderType;

    .line 21
    .line 22
    return-object p0

    .line 23
    :sswitch_1
    const-string v0, "trash"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget-object p0, Lcom/fsck/k9/mail/FolderType;->TRASH:Lcom/fsck/k9/mail/FolderType;

    .line 32
    .line 33
    return-object p0

    .line 34
    :sswitch_2
    const-string v0, "inbox"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    sget-object p0, Lcom/fsck/k9/mail/FolderType;->INBOX:Lcom/fsck/k9/mail/FolderType;

    .line 43
    .line 44
    return-object p0

    .line 45
    :sswitch_3
    const-string v0, "spam"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    sget-object p0, Lcom/fsck/k9/mail/FolderType;->SPAM:Lcom/fsck/k9/mail/FolderType;

    .line 54
    .line 55
    return-object p0

    .line 56
    :sswitch_4
    const-string v0, "sent"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    sget-object p0, Lcom/fsck/k9/mail/FolderType;->SENT:Lcom/fsck/k9/mail/FolderType;

    .line 65
    .line 66
    return-object p0

    .line 67
    :sswitch_5
    const-string v0, "archive"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    sget-object p0, Lcom/fsck/k9/mail/FolderType;->ARCHIVE:Lcom/fsck/k9/mail/FolderType;

    .line 76
    .line 77
    return-object p0

    .line 78
    :sswitch_6
    const-string v0, "outbox"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    sget-object p0, Lcom/fsck/k9/mail/FolderType;->OUTBOX:Lcom/fsck/k9/mail/FolderType;

    .line 87
    .line 88
    return-object p0

    .line 89
    :sswitch_7
    const-string v0, "drafts"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    sget-object p0, Lcom/fsck/k9/mail/FolderType;->DRAFTS:Lcom/fsck/k9/mail/FolderType;

    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_0
    :goto_0
    const-string v0, "Unknown folder type: "

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const/4 p0, 0x0

    .line 110
    return-object p0

    .line 111
    :sswitch_data_0
    .sparse-switch
        -0x4ee7450e -> :sswitch_7
        -0x3bef1c43 -> :sswitch_6
        -0x2c971f3e -> :sswitch_5
        0x35cf98 -> :sswitch_4
        0x35f749 -> :sswitch_3
        0x5fb2286 -> :sswitch_2
        0x697f338 -> :sswitch_1
        0x40c21f9c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getLegacyAccountsFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)Ljava/util/ArrayList;
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
    invoke-virtual {p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccounts()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->accountUuidSet:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->getAccountUuids()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    check-cast p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v2, v1

    .line 54
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 55
    .line 56
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-object v0
.end method

.method public static final getSecurity()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 13

    .line 1
    sget-object v0, Landroidx/room/util/SchemaInfoUtilKt;->_security:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const-string v2, "Outlined.Security"

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
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    .line 44
    const/high16 v2, 0x41400000    # 12.0f

    .line 45
    .line 46
    invoke-virtual {v6, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 47
    .line 48
    .line 49
    const/high16 v0, 0x40400000    # 3.0f

    .line 50
    .line 51
    const/high16 v4, 0x40a00000    # 5.0f

    .line 52
    .line 53
    invoke-virtual {v6, v0, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 54
    .line 55
    .line 56
    const/high16 v0, 0x40c00000    # 6.0f

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 59
    .line 60
    .line 61
    const/high16 v11, 0x41100000    # 9.0f

    .line 62
    .line 63
    const/high16 v12, 0x41400000    # 12.0f

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    const v8, 0x40b1999a    # 5.55f

    .line 67
    .line 68
    .line 69
    const v9, 0x4075c28f    # 3.84f

    .line 70
    .line 71
    .line 72
    const v10, 0x412bd70a    # 10.74f

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 76
    .line 77
    .line 78
    const/high16 v12, -0x3ec00000    # -12.0f

    .line 79
    .line 80
    const v7, 0x40a51eb8    # 5.16f

    .line 81
    .line 82
    .line 83
    const v8, -0x405eb852    # -1.26f

    .line 84
    .line 85
    .line 86
    const/high16 v9, 0x41100000    # 9.0f

    .line 87
    .line 88
    const v10, -0x3f31999a    # -6.45f

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 92
    .line 93
    .line 94
    const/high16 v0, 0x41a80000    # 21.0f

    .line 95
    .line 96
    invoke-virtual {v6, v0, v4}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 97
    .line 98
    .line 99
    const/high16 v0, -0x3ef00000    # -9.0f

    .line 100
    .line 101
    const/high16 v5, -0x3f800000    # -4.0f

    .line 102
    .line 103
    invoke-virtual {v6, v0, v5}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 107
    .line 108
    .line 109
    const v0, 0x413fd70a    # 11.99f

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 113
    .line 114
    .line 115
    const/high16 v0, 0x40e00000    # 7.0f

    .line 116
    .line 117
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 118
    .line 119
    .line 120
    const/high16 v11, -0x3f200000    # -7.0f

    .line 121
    .line 122
    const v12, 0x410f0a3d    # 8.94f

    .line 123
    .line 124
    .line 125
    const v7, -0x40f851ec    # -0.53f

    .line 126
    .line 127
    .line 128
    const v8, 0x4083d70a    # 4.12f

    .line 129
    .line 130
    .line 131
    const v9, -0x3fae147b    # -3.28f

    .line 132
    .line 133
    .line 134
    const v10, 0x40f947ae    # 7.79f

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {v6 .. v12}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v2, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v4, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 144
    .line 145
    .line 146
    const v2, 0x40c9999a    # 6.3f

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v4, v2}, Lokhttp3/Headers$Builder;->lineTo(FF)V

    .line 150
    .line 151
    .line 152
    const v2, -0x3fb8f5c3    # -3.11f

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 156
    .line 157
    .line 158
    const v0, 0x410ccccd    # 8.8f

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v0}, Lokhttp3/Headers$Builder;->verticalLineToRelative(F)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Lokhttp3/Headers$Builder;->close()V

    .line 165
    .line 166
    .line 167
    iget-object v2, v6, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 168
    .line 169
    const/high16 v4, 0x3f800000    # 1.0f

    .line 170
    .line 171
    const/high16 v5, 0x3f800000    # 1.0f

    .line 172
    .line 173
    const/high16 v6, 0x3f800000    # 1.0f

    .line 174
    .line 175
    const/4 v7, 0x2

    .line 176
    const/high16 v8, 0x3f800000    # 1.0f

    .line 177
    .line 178
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sput-object v0, Landroidx/room/util/SchemaInfoUtilKt;->_security:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 186
    .line 187
    return-object v0
.end method

.method public static final hide(Z)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    invoke-static {v0, p0}, Landroidx/compose/ui/draw/ClipKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    new-instance v1, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroidx/compose/ui/draw/ClipKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static isAffectedModel(Ljava/util/List;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    return v1
.end method

.method public static isNotTrailingByte(B)Z
    .locals 1

    .line 1
    const/16 v0, -0x41

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static final readForeignKeyFieldMappings(Landroidx/sqlite/SQLiteStatement;)Ljava/util/List;
    .locals 10

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "seq"

    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "from"

    .line 14
    .line 15
    invoke-static {p0, v2}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "to"

    .line 20
    .line 21
    invoke-static {p0, v3}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    new-instance v5, Landroidx/room/util/ForeignKeyWithSequence;

    .line 36
    .line 37
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    long-to-int v6, v6

    .line 42
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    long-to-int v7, v7

    .line 47
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/room/util/ForeignKeyWithSequence;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public static final readIndex(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;Z)Landroidx/room/util/TableInfo$Index;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PRAGMA index_xinfo(`"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "`)"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :try_start_0
    const-string v0, "seqno"

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v1, "cid"

    .line 31
    .line 32
    invoke-static {p0, v1}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "name"

    .line 37
    .line 38
    invoke-static {p0, v2}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const-string v3, "desc"

    .line 43
    .line 44
    invoke-static {p0, v3}, Landroidx/appcompat/app/ActionBar;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, -0x1

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eq v0, v4, :cond_6

    .line 51
    .line 52
    if-eq v1, v4, :cond_6

    .line 53
    .line 54
    if-eq v2, v4, :cond_6

    .line 55
    .line 56
    if-ne v3, v4, :cond_0

    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    long-to-int v7, v7

    .line 81
    if-gez v7, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    long-to-int v7, v7

    .line 89
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    const-wide/16 v11, 0x0

    .line 98
    .line 99
    cmp-long v9, v9, v11

    .line 100
    .line 101
    if-lez v9, :cond_2

    .line 102
    .line 103
    const-string v9, "DESC"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_2
    const-string v9, "ASC"

    .line 110
    .line 111
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-interface {v4, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/Iterable;

    .line 131
    .line 132
    new-instance v1, Landroidx/viewpager/widget/ViewPager$1;

    .line 133
    .line 134
    const/4 v2, 0x6

    .line 135
    invoke-direct {v1, v2}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    .line 143
    .line 144
    const/16 v2, 0xa

    .line 145
    .line 146
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_4

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Ljava/util/Map$Entry;

    .line 168
    .line 169
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Ljava/lang/Iterable;

    .line 188
    .line 189
    new-instance v3, Landroidx/viewpager/widget/ViewPager$1;

    .line 190
    .line 191
    const/4 v4, 0x7

    .line 192
    invoke-direct {v3, v4}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_5

    .line 217
    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Ljava/util/Map$Entry;

    .line 223
    .line 224
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-instance v2, Landroidx/room/util/TableInfo$Index;

    .line 239
    .line 240
    invoke-direct {v2, p1, p2, v0, v1}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .line 242
    .line 243
    invoke-static {p0, v5}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    return-object v2

    .line 247
    :cond_6
    :goto_4
    invoke-static {p0, v5}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    return-object v5

    .line 251
    :goto_5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    :catchall_1
    move-exception p2

    .line 253
    invoke-static {p0, p1}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 254
    .line 255
    .line 256
    throw p2
.end method

.method public static final rememberImageComponent(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;)Lcom/skydoves/landscapist/components/ImagePluginComponent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x76b56d18

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/skydoves/landscapist/components/ImagePluginComponent;-><init>(Ljava/util/ArrayList;)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x30

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p0, v1, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 43
    .line 44
    if-ne p0, v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v1, p0

    .line 51
    :goto_0
    check-cast v1, Lcom/skydoves/landscapist/components/ImagePluginComponent;

    .line 52
    .line 53
    return-object v1
.end method

.method public static final resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    float-to-double v0, v0

    .line 21
    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpl-double v0, v0, v2

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    invoke-interface {p3, p2}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    div-float/2addr p0, p1

    .line 43
    :goto_0
    mul-float/2addr p0, p2

    .line 44
    return p0

    .line 45
    :cond_0
    invoke-interface {p3, p0, p1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0

    .line 50
    :cond_1
    const-wide v2, 0x200000000L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 67
    .line 68
    return p0
.end method

.method public static final setCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :cond_0
    if-nez v0, :cond_c

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getParent()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    move-object v2, v1

    .line 42
    :cond_2
    if-eqz v2, :cond_b

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 49
    .line 50
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object v1, v2

    .line 60
    :goto_0
    check-cast v1, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iget v2, v1, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    .line 65
    .line 66
    if-ltz v2, :cond_b

    .line 67
    .line 68
    iget v1, v1, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    .line 69
    .line 70
    if-gez v1, :cond_4

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x4

    .line 96
    invoke-static {v2, v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui$default(ILandroidx/compose/ui/semantics/SemanticsNode;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v3, 0x0

    .line 105
    move v4, v3

    .line 106
    move v5, v4

    .line 107
    :goto_1
    if-ge v4, v2, :cond_7

    .line 108
    .line 109
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 114
    .line 115
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    sget-object v8, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 120
    .line 121
    iget-object v7, v7, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 122
    .line 123
    invoke-virtual {v7, v8}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_6

    .line 128
    .line 129
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 133
    .line 134
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    iget-object v7, p0, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 139
    .line 140
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-ge v6, v7, :cond_6

    .line 145
    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_b

    .line 156
    .line 157
    invoke-static {v1}, Landroidx/room/util/SchemaInfoUtilKt;->calculateIfHorizontallyStacked(Ljava/util/ArrayList;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    move v1, v3

    .line 164
    goto :goto_2

    .line 165
    :cond_8
    move v1, v5

    .line 166
    :goto_2
    if-eqz v0, :cond_9

    .line 167
    .line 168
    move v3, v5

    .line 169
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/semantics/SemanticsNode;->getConfig()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 174
    .line 175
    iget-object p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    if-nez p0, :cond_a

    .line 182
    .line 183
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 184
    .line 185
    :cond_a
    check-cast p0, Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    const/4 v0, 0x1

    .line 192
    invoke-static {p0, v1, v0, v3, v0}, Lkotlinx/collections/immutable/implementations/immutableList/ObjectRef;->obtain(ZIIII)Lkotlinx/collections/immutable/implementations/immutableList/ObjectRef;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Lkotlinx/collections/immutable/implementations/immutableList/ObjectRef;)V

    .line 197
    .line 198
    .line 199
    :cond_b
    :goto_3
    return-void

    .line 200
    :cond_c
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public static final setColor-RPmYEkk(Landroid/text/Spannable;JII)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x10

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x21

    .line 17
    .line 18
    invoke-interface {p0, v0, p3, p4, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static final setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x100000000L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x21

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 19
    .line 20
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {v0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v0, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-wide v4, 0x200000000L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-direct {p3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p3, p4, p5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public static final setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v2, 0xa

    .line 14
    .line 15
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    new-array p1, p1, [Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, [Ljava/util/Locale;

    .line 52
    .line 53
    array-length v0, p1

    .line 54
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, [Ljava/util/Locale;

    .line 59
    .line 60
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Landroid/os/LocaleList;)Landroid/text/style/LocaleSpan;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    sget-object p1, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 76
    .line 77
    invoke-interface {p1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_1
    new-instance v0, Landroid/text/style/LocaleSpan;

    .line 91
    .line 92
    iget-object p1, p1, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 95
    .line 96
    .line 97
    move-object p1, v0

    .line 98
    :goto_2
    const/16 v0, 0x21

    .line 99
    .line 100
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public static final toDatabaseFolderType(Lcom/fsck/k9/mail/FolderType;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    const-string p0, "archive"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    const-string p0, "spam"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_2
    const-string p0, "trash"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_3
    const-string p0, "sent"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_4
    const-string p0, "drafts"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_5
    const-string p0, "outbox"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_6
    const-string p0, "inbox"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_7
    const-string p0, "regular"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z
    .locals 1

    .line 1
    const-string v0, "ReflectionGuard"

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :cond_0
    return p1

    .line 19
    :catch_0
    const-string p1, "NoSuchField: "

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_1
    const-string p1, "NoSuchMethod: "

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_2
    const-string p1, "ClassNotFound: "

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    const/4 p0, 0x0

    .line 49
    return p0
.end method


# virtual methods
.method public onAnimationCancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .line 1
    return-void
.end method
