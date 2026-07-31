.class public final synthetic Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$4:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$1:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$4:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$5:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    check-cast v4, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    and-int/lit8 v1, v4, 0x30

    .line 31
    .line 32
    const/16 v5, 0x20

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    move-object v1, v3

    .line 37
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    move v1, v5

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v1, 0x10

    .line 48
    .line 49
    :goto_0
    or-int/2addr v4, v1

    .line 50
    :cond_1
    and-int/lit16 v1, v4, 0x91

    .line 51
    .line 52
    const/16 v6, 0x90

    .line 53
    .line 54
    const/4 v8, 0x1

    .line 55
    if-eq v1, v6, :cond_2

    .line 56
    .line 57
    move v1, v8

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    :goto_1
    and-int/2addr v4, v8

    .line 61
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 62
    .line 63
    invoke-virtual {v3, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_12

    .line 68
    .line 69
    if-nez v2, :cond_11

    .line 70
    .line 71
    const v1, 0x2bf5b3e6

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 75
    .line 76
    .line 77
    const-string v1, "SwipeableRow_core_element"

    .line 78
    .line 79
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 80
    .line 81
    invoke-static {v2, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 96
    .line 97
    if-nez v6, :cond_3

    .line 98
    .line 99
    if-ne v9, v10, :cond_4

    .line 100
    .line 101
    :cond_3
    new-instance v9, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$$ExternalSyntheticLambda0;

    .line 102
    .line 103
    invoke-direct {v9, v8, v4}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 110
    .line 111
    invoke-static {v1, v8, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$1:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    if-nez v6, :cond_5

    .line 126
    .line 127
    if-ne v9, v10, :cond_6

    .line 128
    .line 129
    :cond_5
    new-instance v9, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;

    .line 130
    .line 131
    invoke-direct {v9, v4, v8}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 138
    .line 139
    invoke-static {v1, v9}, Landroidx/compose/ui/layout/RulerKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 144
    .line 145
    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    iget-wide v11, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 150
    .line 151
    ushr-long v13, v11, v5

    .line 152
    .line 153
    xor-long/2addr v11, v13

    .line 154
    long-to-int v9, v11

    .line 155
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-static {v3, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 164
    .line 165
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 169
    .line 170
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 171
    .line 172
    .line 173
    iget-boolean v13, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 174
    .line 175
    if-eqz v13, :cond_7

    .line 176
    .line 177
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 182
    .line 183
    .line 184
    :goto_2
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 185
    .line 186
    invoke-static {v3, v6, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    .line 188
    .line 189
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 190
    .line 191
    invoke-static {v3, v11, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 199
    .line 200
    invoke-static {v3, v9, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 201
    .line 202
    .line 203
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 204
    .line 205
    invoke-static {v3, v9}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 206
    .line 207
    .line 208
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 209
    .line 210
    invoke-static {v3, v1, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 211
    .line 212
    .line 213
    iget-boolean v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$2:Z

    .line 214
    .line 215
    iget-object v15, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 216
    .line 217
    move/from16 p1, v5

    .line 218
    .line 219
    const/4 v5, 0x6

    .line 220
    invoke-static {v4, v1, v15, v3, v5}, Lokio/Okio;->SwipeableRowBackground(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 221
    .line 222
    .line 223
    const-string v15, "SwipeableRow_draggable_element"

    .line 224
    .line 225
    invoke-static {v2, v15}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    iget-object v15, v4, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->draggableState:Landroidx/core/view/MenuHostHelper;

    .line 230
    .line 231
    if-eqz v1, :cond_8

    .line 232
    .line 233
    invoke-virtual {v4}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    move/from16 p2, v5

    .line 238
    .line 239
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Resetting:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 240
    .line 241
    if-eq v1, v5, :cond_9

    .line 242
    .line 243
    invoke-virtual {v4}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Dismissed:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 248
    .line 249
    if-eq v1, v5, :cond_9

    .line 250
    .line 251
    move v1, v8

    .line 252
    goto :goto_3

    .line 253
    :cond_8
    move/from16 p2, v5

    .line 254
    .line 255
    :cond_9
    const/4 v1, 0x0

    .line 256
    :goto_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    const/4 v8, 0x0

    .line 265
    if-nez v5, :cond_a

    .line 266
    .line 267
    if-ne v7, v10, :cond_b

    .line 268
    .line 269
    :cond_a
    new-instance v7, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;

    .line 270
    .line 271
    const/4 v5, 0x1

    .line 272
    invoke-direct {v7, v4, v8, v5}, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_b
    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 279
    .line 280
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    iget-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$4:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 285
    .line 286
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v16

    .line 290
    or-int v5, v5, v16

    .line 291
    .line 292
    move/from16 v16, v5

    .line 293
    .line 294
    iget-object v5, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$5:Lkotlin/jvm/functions/Function1;

    .line 295
    .line 296
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v17

    .line 300
    or-int v16, v16, v17

    .line 301
    .line 302
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    if-nez v16, :cond_d

    .line 307
    .line 308
    if-ne v0, v10, :cond_c

    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_c
    move-object/from16 v16, v14

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_d
    :goto_4
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;

    .line 315
    .line 316
    move-object/from16 v16, v14

    .line 317
    .line 318
    const/4 v14, 0x0

    .line 319
    invoke-direct {v0, v4, v8, v5, v14}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$SwipeableRow$5$3$2$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :goto_5
    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 326
    .line 327
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableKt;->NoOpOnDragStarted:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    new-instance v5, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;

    .line 342
    .line 343
    invoke-direct {v5, v15, v1, v7, v0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;-><init>(Landroidx/core/view/MenuHostHelper;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {v2, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    if-nez v1, :cond_e

    .line 359
    .line 360
    if-ne v2, v10, :cond_f

    .line 361
    .line 362
    :cond_e
    new-instance v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;

    .line 363
    .line 364
    const/4 v1, 0x2

    .line 365
    invoke-direct {v2, v4, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_f
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 372
    .line 373
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/OffsetKt;->absoluteOffset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 378
    .line 379
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 380
    .line 381
    const/4 v4, 0x0

    .line 382
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 387
    .line 388
    ushr-long v7, v4, p1

    .line 389
    .line 390
    xor-long/2addr v4, v7

    .line 391
    long-to-int v2, v4

    .line 392
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    invoke-static {v3, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 401
    .line 402
    .line 403
    iget-boolean v5, v3, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 404
    .line 405
    if-eqz v5, :cond_10

    .line 406
    .line 407
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 408
    .line 409
    .line 410
    goto :goto_6

    .line 411
    :cond_10
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 412
    .line 413
    .line 414
    :goto_6
    invoke-static {v3, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 415
    .line 416
    .line 417
    invoke-static {v3, v4, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v2, v3, v11, v3, v9}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 421
    .line 422
    .line 423
    move-object/from16 v1, v16

    .line 424
    .line 425
    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 426
    .line 427
    .line 428
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 429
    .line 430
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    move-object/from16 v2, p0

    .line 435
    .line 436
    iget-object v2, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda3;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 437
    .line 438
    invoke-virtual {v2, v0, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    const/4 v5, 0x1

    .line 442
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 446
    .line 447
    .line 448
    const/4 v4, 0x0

    .line 449
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 450
    .line 451
    .line 452
    goto :goto_7

    .line 453
    :cond_11
    const/4 v4, 0x0

    .line 454
    const v0, 0x2c0b81f5

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 461
    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_12
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 465
    .line 466
    .line 467
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 468
    .line 469
    return-object v0
.end method
