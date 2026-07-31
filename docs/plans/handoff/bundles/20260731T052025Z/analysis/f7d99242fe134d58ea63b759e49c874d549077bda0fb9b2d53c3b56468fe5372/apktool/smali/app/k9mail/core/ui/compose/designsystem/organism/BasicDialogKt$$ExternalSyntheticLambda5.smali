.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$5:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;JLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    iput-wide p4, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    iput-object p7, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$5:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 15
    .line 16
    iput-object p8, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 16
    .line 17
    const/4 v4, 0x6

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    and-int/lit8 v5, v2, 0x3

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    const/4 v7, 0x1

    .line 26
    const/4 v8, 0x0

    .line 27
    if-eq v5, v6, :cond_0

    .line 28
    .line 29
    move v5, v7

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v5, v8

    .line 32
    :goto_0
    and-int/2addr v2, v7

    .line 33
    move-object v13, v1

    .line 34
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {v13, v2, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_b

    .line 41
    .line 42
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 43
    .line 44
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 45
    .line 46
    invoke-static {v1, v2, v13, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-wide v5, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 51
    .line 52
    const/16 v16, 0x20

    .line 53
    .line 54
    ushr-long v9, v5, v16

    .line 55
    .line 56
    xor-long/2addr v5, v9

    .line 57
    long-to-int v5, v5

    .line 58
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 63
    .line 64
    invoke-static {v13, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 69
    .line 70
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 74
    .line 75
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 76
    .line 77
    .line 78
    iget-boolean v12, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 79
    .line 80
    if-eqz v12, :cond_1

    .line 81
    .line 82
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 87
    .line 88
    .line 89
    :goto_1
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 90
    .line 91
    invoke-static {v13, v1, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 95
    .line 96
    invoke-static {v13, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 104
    .line 105
    invoke-static {v13, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 106
    .line 107
    .line 108
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 109
    .line 110
    invoke-static {v13, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 111
    .line 112
    .line 113
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 114
    .line 115
    invoke-static {v13, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    new-instance v10, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 126
    .line 127
    new-instance v15, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    const/4 v8, 0x7

    .line 130
    invoke-direct {v15, v8}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 131
    .line 132
    .line 133
    const/high16 v8, 0x41800000    # 16.0f

    .line 134
    .line 135
    invoke-direct {v10, v8, v7, v15}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const/high16 v15, 0x41c00000    # 24.0f

    .line 167
    .line 168
    invoke-static {v9, v15, v15, v15, v8}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    const/4 v15, 0x0

    .line 173
    invoke-static {v10, v2, v13, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    move-object v10, v8

    .line 178
    iget-wide v7, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 179
    .line 180
    ushr-long v17, v7, v16

    .line 181
    .line 182
    xor-long v7, v7, v17

    .line 183
    .line 184
    long-to-int v7, v7

    .line 185
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-static {v13, v10}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 194
    .line 195
    .line 196
    iget-boolean v15, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 197
    .line 198
    if-eqz v15, :cond_2

    .line 199
    .line 200
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_2
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 205
    .line 206
    .line 207
    :goto_2
    invoke-static {v13, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v13, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v7, v13, v6, v13, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v13, v10, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 217
    .line 218
    .line 219
    iget-object v2, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/functions/Function3;

    .line 220
    .line 221
    sget-object v7, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 222
    .line 223
    if-nez v2, :cond_3

    .line 224
    .line 225
    const v8, -0x4ba1091b

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 229
    .line 230
    .line 231
    const/4 v15, 0x0

    .line 232
    :goto_3
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_3
    const/4 v15, 0x0

    .line 237
    const v8, -0x6dcb6364

    .line 238
    .line 239
    .line 240
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 241
    .line 242
    .line 243
    invoke-interface {v2, v7, v13, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :goto_4
    iget-object v8, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function3;

    .line 248
    .line 249
    if-nez v8, :cond_4

    .line 250
    .line 251
    const v7, -0x4ba05abb

    .line 252
    .line 253
    .line 254
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 255
    .line 256
    .line 257
    :goto_5
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 258
    .line 259
    .line 260
    const/4 v7, 0x1

    .line 261
    goto :goto_6

    .line 262
    :cond_4
    const v10, -0x6dcb5dc4

    .line 263
    .line 264
    .line 265
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v8, v7, v13, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :goto_6
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 273
    .line 274
    .line 275
    iget-boolean v7, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 276
    .line 277
    move-object v10, v11

    .line 278
    move-object v15, v12

    .line 279
    iget-wide v11, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$3:J

    .line 280
    .line 281
    move-object/from16 v17, v10

    .line 282
    .line 283
    const/4 v10, 0x3

    .line 284
    if-eqz v7, :cond_5

    .line 285
    .line 286
    if-nez v2, :cond_6

    .line 287
    .line 288
    if-eqz v8, :cond_5

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_5
    move-object/from16 v18, v4

    .line 292
    .line 293
    move-object/from16 v20, v9

    .line 294
    .line 295
    move v4, v10

    .line 296
    move-object v8, v15

    .line 297
    move-object/from16 v2, v17

    .line 298
    .line 299
    const/4 v15, 0x0

    .line 300
    move/from16 v17, v7

    .line 301
    .line 302
    move-object v7, v14

    .line 303
    goto :goto_8

    .line 304
    :cond_6
    :goto_7
    const v2, 0x3f422bf3

    .line 305
    .line 306
    .line 307
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 308
    .line 309
    .line 310
    move-object v2, v9

    .line 311
    invoke-static {v2, v10}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    move-object v8, v14

    .line 316
    const/4 v14, 0x6

    .line 317
    move-object/from16 v18, v15

    .line 318
    .line 319
    const/4 v15, 0x2

    .line 320
    move/from16 v19, v10

    .line 321
    .line 322
    const/4 v10, 0x0

    .line 323
    move-object/from16 v20, v2

    .line 324
    .line 325
    move-object/from16 v2, v17

    .line 326
    .line 327
    move/from16 v17, v7

    .line 328
    .line 329
    move-object v7, v8

    .line 330
    move-object/from16 v8, v18

    .line 331
    .line 332
    move-object/from16 v18, v4

    .line 333
    .line 334
    move/from16 v4, v19

    .line 335
    .line 336
    invoke-static/range {v9 .. v15}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 337
    .line 338
    .line 339
    const/4 v15, 0x0

    .line 340
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 341
    .line 342
    .line 343
    goto :goto_9

    .line 344
    :goto_8
    const v9, 0x3f44647c

    .line 345
    .line 346
    .line 347
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 351
    .line 352
    .line 353
    :goto_9
    const v9, 0x3f44da30

    .line 354
    .line 355
    .line 356
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 357
    .line 358
    .line 359
    invoke-static {v15}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->weight(Z)Landroidx/compose/ui/Modifier;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    iget-object v10, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$5:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 364
    .line 365
    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 370
    .line 371
    .line 372
    move-result-object v10

    .line 373
    iget-wide v14, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 374
    .line 375
    ushr-long v21, v14, v16

    .line 376
    .line 377
    xor-long v14, v14, v21

    .line 378
    .line 379
    long-to-int v14, v14

    .line 380
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 381
    .line 382
    .line 383
    move-result-object v15

    .line 384
    invoke-static {v13, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 389
    .line 390
    .line 391
    iget-boolean v4, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 392
    .line 393
    if-eqz v4, :cond_7

    .line 394
    .line 395
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 396
    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 400
    .line 401
    .line 402
    :goto_a
    invoke-static {v13, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v13, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 406
    .line 407
    .line 408
    invoke-static {v14, v13, v6, v13, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v13, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 412
    .line 413
    .line 414
    const/4 v4, 0x0

    .line 415
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    iget-object v10, v0, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 420
    .line 421
    invoke-virtual {v10, v13, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    const/4 v9, 0x1

    .line 425
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 429
    .line 430
    .line 431
    if-eqz v17, :cond_8

    .line 432
    .line 433
    const v9, 0x3f49e053

    .line 434
    .line 435
    .line 436
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v10, v20

    .line 440
    .line 441
    const/4 v9, 0x3

    .line 442
    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    const/4 v14, 0x6

    .line 447
    const/4 v15, 0x2

    .line 448
    const/4 v10, 0x0

    .line 449
    move-object/from16 v0, v20

    .line 450
    .line 451
    invoke-static/range {v9 .. v15}, Landroidx/appcompat/app/ActionBar;->DividerHorizontal-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 455
    .line 456
    .line 457
    goto :goto_b

    .line 458
    :cond_8
    move-object/from16 v0, v20

    .line 459
    .line 460
    const v9, 0x3f4c18dc

    .line 461
    .line 462
    .line 463
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 467
    .line 468
    .line 469
    :goto_b
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 470
    .line 471
    new-instance v9, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    .line 472
    .line 473
    invoke-direct {v9, v4}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    .line 474
    .line 475
    .line 476
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    invoke-static {v13}, Lkotlin/io/ByteStreamsKt;->getSpacings(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    const/high16 v23, 0x41c00000    # 24.0f

    .line 498
    .line 499
    const/16 v24, 0x2

    .line 500
    .line 501
    const/high16 v20, 0x41c00000    # 24.0f

    .line 502
    .line 503
    const/16 v21, 0x0

    .line 504
    .line 505
    const/high16 v22, 0x41c00000    # 24.0f

    .line 506
    .line 507
    move-object/from16 v19, v9

    .line 508
    .line 509
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    const/4 v15, 0x0

    .line 514
    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    iget-wide v9, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 519
    .line 520
    ushr-long v11, v9, v16

    .line 521
    .line 522
    xor-long/2addr v9, v11

    .line 523
    long-to-int v9, v9

    .line 524
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 525
    .line 526
    .line 527
    move-result-object v10

    .line 528
    invoke-static {v13, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 533
    .line 534
    .line 535
    iget-boolean v11, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 536
    .line 537
    if-eqz v11, :cond_9

    .line 538
    .line 539
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 540
    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 544
    .line 545
    .line 546
    :goto_c
    invoke-static {v13, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 547
    .line 548
    .line 549
    invoke-static {v13, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 550
    .line 551
    .line 552
    invoke-static {v9, v13, v6, v13, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v13, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 556
    .line 557
    .line 558
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 559
    .line 560
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 561
    .line 562
    const/4 v15, 0x0

    .line 563
    invoke-static {v3, v4, v13, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    iget-wide v9, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 568
    .line 569
    ushr-long v11, v9, v16

    .line 570
    .line 571
    xor-long/2addr v9, v11

    .line 572
    long-to-int v4, v9

    .line 573
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 574
    .line 575
    .line 576
    move-result-object v9

    .line 577
    invoke-static {v13, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 582
    .line 583
    .line 584
    iget-boolean v10, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 585
    .line 586
    if-eqz v10, :cond_a

    .line 587
    .line 588
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 589
    .line 590
    .line 591
    goto :goto_d

    .line 592
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 593
    .line 594
    .line 595
    :goto_d
    invoke-static {v13, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 596
    .line 597
    .line 598
    invoke-static {v13, v9, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 599
    .line 600
    .line 601
    invoke-static {v4, v13, v6, v13, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 602
    .line 603
    .line 604
    invoke-static {v13, v0, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 605
    .line 606
    .line 607
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 608
    .line 609
    move-object/from16 v1, p0

    .line 610
    .line 611
    iget-object v1, v1, Lapp/k9mail/core/ui/compose/designsystem/organism/BasicDialogKt$$ExternalSyntheticLambda5;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 612
    .line 613
    move-object/from16 v2, v18

    .line 614
    .line 615
    invoke-virtual {v1, v0, v13, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    const/4 v7, 0x1

    .line 619
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 626
    .line 627
    .line 628
    goto :goto_e

    .line 629
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 630
    .line 631
    .line 632
    :goto_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 633
    .line 634
    return-object v0
.end method
