.class public final Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static _checkCircle:Landroidx/compose/ui/graphics/vector/ImageVector; = null

.field public static _settings:Landroidx/compose/ui/graphics/vector/ImageVector; = null

.field public static sMinLogLevel:I = 0x3


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final AccountSetupCompositionScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move/from16 v6, p5

    .line 2
    .line 3
    move-object/from16 v8, p8

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-object/from16 v0, p10

    .line 27
    .line 28
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    const v1, 0x5b63a789

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    .line 36
    move-object/from16 v9, p0

    .line 37
    .line 38
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x2

    .line 47
    :goto_0
    or-int v1, p11, v1

    .line 48
    .line 49
    move-object/from16 v10, p1

    .line 50
    .line 51
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const/16 v2, 0x20

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/16 v2, 0x10

    .line 61
    .line 62
    :goto_1
    or-int/2addr v1, v2

    .line 63
    move-object/from16 v11, p2

    .line 64
    .line 65
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    const/16 v2, 0x100

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const/16 v2, 0x80

    .line 75
    .line 76
    :goto_2
    or-int/2addr v1, v2

    .line 77
    move/from16 v4, p3

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    const/16 v2, 0x800

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    const/16 v2, 0x400

    .line 89
    .line 90
    :goto_3
    or-int/2addr v1, v2

    .line 91
    move-object/from16 v5, p4

    .line 92
    .line 93
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    const/16 v2, 0x4000

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    const/16 v2, 0x2000

    .line 103
    .line 104
    :goto_4
    or-int/2addr v1, v2

    .line 105
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    const/high16 v2, 0x20000

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    const/high16 v2, 0x10000

    .line 115
    .line 116
    :goto_5
    or-int/2addr v1, v2

    .line 117
    move-object/from16 v7, p6

    .line 118
    .line 119
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    const/high16 v2, 0x100000

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_6
    const/high16 v2, 0x80000

    .line 129
    .line 130
    :goto_6
    or-int/2addr v1, v2

    .line 131
    move-object/from16 v15, p7

    .line 132
    .line 133
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_7

    .line 138
    .line 139
    const/high16 v2, 0x800000

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_7
    const/high16 v2, 0x400000

    .line 143
    .line 144
    :goto_7
    or-int/2addr v1, v2

    .line 145
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_8

    .line 150
    .line 151
    const/high16 v2, 0x4000000

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_8
    const/high16 v2, 0x2000000

    .line 155
    .line 156
    :goto_8
    or-int/2addr v1, v2

    .line 157
    const/high16 v2, 0x30000000

    .line 158
    .line 159
    or-int/2addr v1, v2

    .line 160
    const v2, 0x12492493

    .line 161
    .line 162
    .line 163
    and-int/2addr v2, v1

    .line 164
    const v3, 0x12492492

    .line 165
    .line 166
    .line 167
    const/4 v12, 0x1

    .line 168
    if-eq v2, v3, :cond_9

    .line 169
    .line 170
    move v2, v12

    .line 171
    goto :goto_9

    .line 172
    :cond_9
    const/4 v2, 0x0

    .line 173
    :goto_9
    and-int/2addr v1, v12

    .line 174
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;

    .line 181
    .line 182
    invoke-direct {v1, v8, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 183
    .line 184
    .line 185
    const v2, -0x2a3db9bb

    .line 186
    .line 187
    .line 188
    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    new-instance v7, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda1;

    .line 193
    .line 194
    move-object/from16 v14, p6

    .line 195
    .line 196
    move v12, v4

    .line 197
    move-object v13, v5

    .line 198
    invoke-direct/range {v7 .. v15}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;Lkotlin/Pair;)V

    .line 199
    .line 200
    .line 201
    const v2, 0x7cd0107d

    .line 202
    .line 203
    .line 204
    invoke-static {v2, v7, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    const v15, 0x180036

    .line 209
    .line 210
    .line 211
    const/16 v16, 0x3c

    .line 212
    .line 213
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 214
    .line 215
    const/4 v9, 0x0

    .line 216
    const/4 v10, 0x0

    .line 217
    const/4 v11, 0x0

    .line 218
    const/4 v12, 0x0

    .line 219
    move-object v14, v0

    .line 220
    move-object v8, v1

    .line 221
    invoke-static/range {v7 .. v16}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 222
    .line 223
    .line 224
    move-object v10, v7

    .line 225
    goto :goto_a

    .line 226
    :cond_a
    move-object v14, v0

    .line 227
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 228
    .line 229
    .line 230
    move-object/from16 v10, p9

    .line 231
    .line 232
    :goto_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    if-eqz v12, :cond_b

    .line 237
    .line 238
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda2;

    .line 239
    .line 240
    move-object/from16 v1, p0

    .line 241
    .line 242
    move-object/from16 v2, p1

    .line 243
    .line 244
    move-object/from16 v3, p2

    .line 245
    .line 246
    move/from16 v4, p3

    .line 247
    .line 248
    move-object/from16 v5, p4

    .line 249
    .line 250
    move-object/from16 v7, p6

    .line 251
    .line 252
    move-object/from16 v8, p7

    .line 253
    .line 254
    move-object/from16 v9, p8

    .line 255
    .line 256
    move/from16 v11, p11

    .line 257
    .line 258
    invoke-direct/range {v0 .. v11}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;I)V

    .line 259
    .line 260
    .line 261
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 262
    .line 263
    :cond_b
    return-void
.end method

.method public static final AutoDiscoveryResultHeaderView(Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move/from16 v5, p1

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x44b815b3

    .line 10
    .line 11
    .line 12
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    :goto_0
    or-int v0, p4, v0

    .line 30
    .line 31
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/16 v4, 0x20

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    move v2, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v2, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v0, v2

    .line 44
    or-int/lit16 v0, v0, 0x180

    .line 45
    .line 46
    and-int/lit16 v2, v0, 0x93

    .line 47
    .line 48
    const/16 v6, 0x92

    .line 49
    .line 50
    const/4 v12, 0x1

    .line 51
    const/4 v14, 0x0

    .line 52
    if-eq v2, v6, :cond_2

    .line 53
    .line 54
    move v2, v12

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v2, v14

    .line 57
    :goto_2
    and-int/2addr v0, v12

    .line 58
    invoke-virtual {v13, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_a

    .line 63
    .line 64
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 65
    .line 66
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 67
    .line 68
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 73
    .line 74
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 75
    .line 76
    const/16 v8, 0x30

    .line 77
    .line 78
    invoke-static {v7, v6, v13, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    iget-wide v7, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 83
    .line 84
    ushr-long v9, v7, v4

    .line 85
    .line 86
    xor-long/2addr v7, v9

    .line 87
    long-to-int v7, v7

    .line 88
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v13, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 97
    .line 98
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 102
    .line 103
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 104
    .line 105
    .line 106
    iget-boolean v9, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 107
    .line 108
    if-eqz v9, :cond_3

    .line 109
    .line 110
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 115
    .line 116
    .line 117
    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 118
    .line 119
    invoke-static {v13, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 120
    .line 121
    .line 122
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 123
    .line 124
    invoke-static {v13, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 132
    .line 133
    invoke-static {v13, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 134
    .line 135
    .line 136
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 137
    .line 138
    invoke-static {v13, v7}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 139
    .line 140
    .line 141
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 142
    .line 143
    invoke-static {v13, v0, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    move-object v0, v6

    .line 147
    iget-object v6, v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_6

    .line 154
    .line 155
    if-eq v11, v12, :cond_5

    .line 156
    .line 157
    if-ne v11, v1, :cond_4

    .line 158
    .line 159
    const v1, -0x1e48d609

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 163
    .line 164
    .line 165
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 166
    .line 167
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 172
    .line 173
    move/from16 p3, v4

    .line 174
    .line 175
    iget-wide v4, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->warning:J

    .line 176
    .line 177
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_4
    const v0, -0x1e48f2b6

    .line 182
    .line 183
    .line 184
    invoke-static {v13, v0, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    throw v0

    .line 189
    :cond_5
    move/from16 p3, v4

    .line 190
    .line 191
    const v1, -0x1e48dfa9

    .line 192
    .line 193
    .line 194
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 195
    .line 196
    .line 197
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 198
    .line 199
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 204
    .line 205
    iget-wide v4, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->success:J

    .line 206
    .line 207
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_6
    move/from16 p3, v4

    .line 212
    .line 213
    const v1, -0x1e48e909

    .line 214
    .line 215
    .line 216
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 217
    .line 218
    .line 219
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 220
    .line 221
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 226
    .line 227
    iget-wide v4, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->primary:J

    .line 228
    .line 229
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 230
    .line 231
    .line 232
    :goto_4
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 233
    .line 234
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 239
    .line 240
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    const/high16 v11, 0x41000000    # 8.0f

    .line 244
    .line 245
    invoke-static {v2, v11}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    sget-object v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 250
    .line 251
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    check-cast v11, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 256
    .line 257
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    const/high16 v11, 0x42000000    # 32.0f

    .line 261
    .line 262
    invoke-static {v14, v11}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    move-object v14, v8

    .line 267
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    .line 268
    .line 269
    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 270
    .line 271
    .line 272
    move-object v4, v10

    .line 273
    const/4 v10, 0x0

    .line 274
    move-object v5, v7

    .line 275
    move-object v7, v11

    .line 276
    const/4 v11, 0x4

    .line 277
    move-object/from16 v22, v4

    .line 278
    .line 279
    move-object v4, v0

    .line 280
    move-object v0, v9

    .line 281
    move-object v9, v13

    .line 282
    move-object/from16 v13, v22

    .line 283
    .line 284
    invoke-static/range {v6 .. v11}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 285
    .line 286
    .line 287
    new-instance v6, Landroidx/compose/foundation/layout/LayoutWeightElement;

    .line 288
    .line 289
    const/high16 v7, 0x3f800000    # 1.0f

    .line 290
    .line 291
    invoke-direct {v6, v7, v12}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 299
    .line 300
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    check-cast v7, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 317
    .line 318
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    const/high16 v20, 0x40800000    # 4.0f

    .line 322
    .line 323
    const/16 v21, 0x4

    .line 324
    .line 325
    const/high16 v17, 0x41000000    # 8.0f

    .line 326
    .line 327
    const/high16 v18, 0x40800000    # 4.0f

    .line 328
    .line 329
    const/16 v19, 0x0

    .line 330
    .line 331
    move-object/from16 v16, v6

    .line 332
    .line 333
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    sget-object v7, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 338
    .line 339
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 340
    .line 341
    const/4 v10, 0x0

    .line 342
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    iget-wide v10, v9, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 347
    .line 348
    ushr-long v16, v10, p3

    .line 349
    .line 350
    xor-long v10, v10, v16

    .line 351
    .line 352
    long-to-int v8, v10

    .line 353
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    invoke-static {v9, v6}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 362
    .line 363
    .line 364
    iget-boolean v11, v9, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 365
    .line 366
    if-eqz v11, :cond_7

    .line 367
    .line 368
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 369
    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 373
    .line 374
    .line 375
    :goto_5
    invoke-static {v9, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v9, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v8, v9, v14, v9, v5}, Landroidx/camera/core/impl/Config$-CC;->m(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v9, v6, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 385
    .line 386
    .line 387
    iget v0, v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->titleResourceId:I

    .line 388
    .line 389
    invoke-static {v9, v0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    const/4 v14, 0x0

    .line 394
    const/16 v15, 0x3e

    .line 395
    .line 396
    const/4 v7, 0x0

    .line 397
    move-object v13, v9

    .line 398
    const-wide/16 v8, 0x0

    .line 399
    .line 400
    const/4 v10, 0x0

    .line 401
    const/4 v11, 0x0

    .line 402
    move v0, v12

    .line 403
    const/4 v12, 0x0

    .line 404
    const/4 v4, 0x0

    .line 405
    invoke-static/range {v6 .. v15}, Landroidx/room/util/DBUtil;->TextTitleLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 406
    .line 407
    .line 408
    iget v5, v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->subtitleResourceId:I

    .line 409
    .line 410
    invoke-static {v13, v5}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    const/16 v15, 0x7e

    .line 415
    .line 416
    const/4 v10, 0x0

    .line 417
    const/4 v12, 0x0

    .line 418
    invoke-static/range {v6 .. v15}, Landroidx/work/Data$Companion;->TextBodyMedium-ZHfKjFs(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 422
    .line 423
    .line 424
    iget-boolean v5, v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/view/AutoDiscoveryResultHeaderState;->isExpandable:Z

    .line 425
    .line 426
    if-eqz v5, :cond_9

    .line 427
    .line 428
    const v5, -0x7d58656b

    .line 429
    .line 430
    .line 431
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 432
    .line 433
    .line 434
    if-eqz p1, :cond_8

    .line 435
    .line 436
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ExpandLess:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 437
    .line 438
    :goto_6
    move-object v6, v5

    .line 439
    goto :goto_7

    .line 440
    :cond_8
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->ExpandMore:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 441
    .line 442
    goto :goto_6

    .line 443
    :goto_7
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    const/high16 v1, 0x41000000    # 8.0f

    .line 453
    .line 454
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    const/4 v10, 0x0

    .line 459
    const/16 v11, 0xc

    .line 460
    .line 461
    const/4 v8, 0x0

    .line 462
    move-object v9, v13

    .line 463
    invoke-static/range {v6 .. v11}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_9
    const v1, -0x7d552b8f

    .line 471
    .line 472
    .line 473
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 477
    .line 478
    .line 479
    :goto_8
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 480
    .line 481
    .line 482
    move-object v4, v2

    .line 483
    goto :goto_9

    .line 484
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 485
    .line 486
    .line 487
    move-object/from16 v4, p2

    .line 488
    .line 489
    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    if-eqz v6, :cond_b

    .line 494
    .line 495
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;

    .line 496
    .line 497
    const/4 v2, 0x4

    .line 498
    move/from16 v5, p1

    .line 499
    .line 500
    move/from16 v1, p4

    .line 501
    .line 502
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 503
    .line 504
    .line 505
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 506
    .line 507
    :cond_b
    return-void
.end method

.method public static final DropdownMenuBox(ZLkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v7, p8

    .line 11
    .line 12
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v1, 0x4fcb69a1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x4

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int v1, p9, v1

    .line 31
    .line 32
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/16 v4, 0x100

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v4, 0x80

    .line 42
    .line 43
    :goto_1
    or-int/2addr v1, v4

    .line 44
    const v4, 0x1b6000

    .line 45
    .line 46
    .line 47
    or-int/2addr v1, v4

    .line 48
    const v4, 0x492493

    .line 49
    .line 50
    .line 51
    and-int/2addr v4, v1

    .line 52
    const v5, 0x492492

    .line 53
    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v8, 0x1

    .line 57
    if-eq v4, v5, :cond_2

    .line 58
    .line 59
    move v4, v8

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v4, v6

    .line 62
    :goto_2
    and-int/lit8 v5, v1, 0x1

    .line 63
    .line 64
    invoke-virtual {v7, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_7

    .line 69
    .line 70
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 75
    .line 76
    if-ne v4, v5, :cond_3

    .line 77
    .line 78
    new-instance v4, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/16 v9, 0x11

    .line 81
    .line 82
    invoke-direct {v4, v9}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 89
    .line 90
    and-int/lit8 v9, v1, 0xe

    .line 91
    .line 92
    if-ne v9, v2, :cond_4

    .line 93
    .line 94
    move v1, v8

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move v1, v6

    .line 97
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    if-ne v2, v5, :cond_6

    .line 104
    .line 105
    :cond_5
    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda1;

    .line 106
    .line 107
    invoke-direct {v2, p1, p0, v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;ZI)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    move-object v10, v2

    .line 114
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 115
    .line 116
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda2;

    .line 117
    .line 118
    move v2, p0

    .line 119
    move-object v3, p1

    .line 120
    move-object v5, p3

    .line 121
    move-object/from16 v1, p7

    .line 122
    .line 123
    move-object v6, v4

    .line 124
    move-object v4, p2

    .line 125
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 126
    .line 127
    .line 128
    move-object v11, v6

    .line 129
    const v1, -0x491d7eb5

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    or-int/lit16 v5, v9, 0xd80

    .line 137
    .line 138
    const/4 v6, 0x0

    .line 139
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 140
    .line 141
    move v0, p0

    .line 142
    move-object v4, v7

    .line 143
    move-object v1, v10

    .line 144
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 145
    .line 146
    .line 147
    move-object v5, v2

    .line 148
    move v6, v8

    .line 149
    move-object v7, v11

    .line 150
    goto :goto_4

    .line 151
    :cond_7
    move-object v4, v7

    .line 152
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 153
    .line 154
    .line 155
    move-object/from16 v5, p4

    .line 156
    .line 157
    move/from16 v6, p5

    .line 158
    .line 159
    move-object/from16 v7, p6

    .line 160
    .line 161
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    if-eqz v10, :cond_8

    .line 166
    .line 167
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda3;

    .line 168
    .line 169
    move v1, p0

    .line 170
    move-object v2, p1

    .line 171
    move-object v3, p2

    .line 172
    move-object v4, p3

    .line 173
    move-object/from16 v8, p7

    .line 174
    .line 175
    move/from16 v9, p9

    .line 176
    .line 177
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/core/ui/compose/designsystem/atom/DropdownMenuBoxKt$$ExternalSyntheticLambda3;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 178
    .line 179
    .line 180
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 181
    .line 182
    :cond_8
    return-void
.end method

.method public static final EditIncomingServerSettingsNavHost(Ljava/lang/String;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    const v0, -0x4d895c6b

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
    const/4 v6, 0x0

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
    const/4 v6, 0x0

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

.method public static final NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v7, p6

    .line 6
    .line 7
    move-object/from16 v8, p7

    .line 8
    .line 9
    move-object/from16 v9, p8

    .line 10
    .line 11
    move/from16 v10, p10

    .line 12
    .line 13
    move-object/from16 v6, p9

    .line 14
    .line 15
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, -0x751a66d8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, v10, 0x6

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :goto_0
    or-int/2addr v0, v10

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v0, v10

    .line 39
    :goto_1
    and-int/lit8 v3, v10, 0x30

    .line 40
    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const/16 v3, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v3, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v3

    .line 55
    :cond_3
    and-int/lit16 v3, v10, 0x180

    .line 56
    .line 57
    if-nez v3, :cond_5

    .line 58
    .line 59
    move-object/from16 v3, p2

    .line 60
    .line 61
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v4

    .line 73
    goto :goto_4

    .line 74
    :cond_5
    move-object/from16 v3, p2

    .line 75
    .line 76
    :goto_4
    and-int/lit16 v4, v10, 0xc00

    .line 77
    .line 78
    if-nez v4, :cond_7

    .line 79
    .line 80
    move-object/from16 v4, p3

    .line 81
    .line 82
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_6

    .line 87
    .line 88
    const/16 v5, 0x800

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_6
    const/16 v5, 0x400

    .line 92
    .line 93
    :goto_5
    or-int/2addr v0, v5

    .line 94
    goto :goto_6

    .line 95
    :cond_7
    move-object/from16 v4, p3

    .line 96
    .line 97
    :goto_6
    and-int/lit16 v5, v10, 0x6000

    .line 98
    .line 99
    if-nez v5, :cond_9

    .line 100
    .line 101
    move-object/from16 v5, p4

    .line 102
    .line 103
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-eqz v12, :cond_8

    .line 108
    .line 109
    const/16 v12, 0x4000

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_8
    const/16 v12, 0x2000

    .line 113
    .line 114
    :goto_7
    or-int/2addr v0, v12

    .line 115
    goto :goto_8

    .line 116
    :cond_9
    move-object/from16 v5, p4

    .line 117
    .line 118
    :goto_8
    const/high16 v12, 0x30000

    .line 119
    .line 120
    and-int/2addr v12, v10

    .line 121
    if-nez v12, :cond_b

    .line 122
    .line 123
    move-object/from16 v12, p5

    .line 124
    .line 125
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-eqz v14, :cond_a

    .line 130
    .line 131
    const/high16 v14, 0x20000

    .line 132
    .line 133
    goto :goto_9

    .line 134
    :cond_a
    const/high16 v14, 0x10000

    .line 135
    .line 136
    :goto_9
    or-int/2addr v0, v14

    .line 137
    goto :goto_a

    .line 138
    :cond_b
    move-object/from16 v12, p5

    .line 139
    .line 140
    :goto_a
    const/high16 v14, 0x180000

    .line 141
    .line 142
    and-int v15, v10, v14

    .line 143
    .line 144
    move/from16 p9, v14

    .line 145
    .line 146
    if-nez v15, :cond_d

    .line 147
    .line 148
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    if-eqz v15, :cond_c

    .line 153
    .line 154
    const/high16 v15, 0x100000

    .line 155
    .line 156
    goto :goto_b

    .line 157
    :cond_c
    const/high16 v15, 0x80000

    .line 158
    .line 159
    :goto_b
    or-int/2addr v0, v15

    .line 160
    :cond_d
    const/high16 v15, 0xc00000

    .line 161
    .line 162
    and-int v16, v10, v15

    .line 163
    .line 164
    move/from16 v17, v15

    .line 165
    .line 166
    if-nez v16, :cond_f

    .line 167
    .line 168
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    if-eqz v16, :cond_e

    .line 173
    .line 174
    const/high16 v16, 0x800000

    .line 175
    .line 176
    goto :goto_c

    .line 177
    :cond_e
    const/high16 v16, 0x400000

    .line 178
    .line 179
    :goto_c
    or-int v0, v0, v16

    .line 180
    .line 181
    :cond_f
    const/high16 v16, 0x6000000

    .line 182
    .line 183
    and-int v16, v10, v16

    .line 184
    .line 185
    if-nez v16, :cond_11

    .line 186
    .line 187
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v16

    .line 191
    if-eqz v16, :cond_10

    .line 192
    .line 193
    const/high16 v16, 0x4000000

    .line 194
    .line 195
    goto :goto_d

    .line 196
    :cond_10
    const/high16 v16, 0x2000000

    .line 197
    .line 198
    :goto_d
    or-int v0, v0, v16

    .line 199
    .line 200
    :cond_11
    const v16, 0x2492493

    .line 201
    .line 202
    .line 203
    and-int v13, v0, v16

    .line 204
    .line 205
    const v15, 0x2492492

    .line 206
    .line 207
    .line 208
    if-ne v13, v15, :cond_13

    .line 209
    .line 210
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    if-nez v13, :cond_12

    .line 215
    .line 216
    goto :goto_e

    .line 217
    :cond_12
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 218
    .line 219
    .line 220
    move-object v13, v6

    .line 221
    goto/16 :goto_2a

    .line 222
    .line 223
    :cond_13
    :goto_e
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 224
    .line 225
    .line 226
    and-int/lit8 v13, v10, 0x1

    .line 227
    .line 228
    if-eqz v13, :cond_15

    .line 229
    .line 230
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    if-eqz v13, :cond_14

    .line 235
    .line 236
    goto :goto_f

    .line 237
    :cond_14
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 238
    .line 239
    .line 240
    :cond_15
    :goto_f
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 241
    .line 242
    .line 243
    sget-object v13, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 244
    .line 245
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    check-cast v13, Landroidx/lifecycle/LifecycleOwner;

    .line 250
    .line 251
    invoke-static {v6}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 252
    .line 253
    .line 254
    move-result-object v15

    .line 255
    if-eqz v15, :cond_41

    .line 256
    .line 257
    invoke-interface {v15}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    invoke-virtual {v1, v15}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 262
    .line 263
    .line 264
    iget-object v15, v1, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    iget-object v5, v15, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 273
    .line 274
    const/4 v11, 0x0

    .line 275
    invoke-virtual {v15, v2, v11}, Landroidx/navigation/internal/NavControllerImpl;->setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 276
    .line 277
    .line 278
    const-string v11, "composable"

    .line 279
    .line 280
    invoke-virtual {v5, v11}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    instance-of v14, v11, Landroidx/navigation/compose/ComposeNavigator;

    .line 285
    .line 286
    if-eqz v14, :cond_16

    .line 287
    .line 288
    check-cast v11, Landroidx/navigation/compose/ComposeNavigator;

    .line 289
    .line 290
    goto :goto_10

    .line 291
    :cond_16
    const/4 v11, 0x0

    .line 292
    :goto_10
    if-nez v11, :cond_17

    .line 293
    .line 294
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    if-eqz v13, :cond_40

    .line 299
    .line 300
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;

    .line 301
    .line 302
    const/4 v11, 0x2

    .line 303
    move-object/from16 v5, p4

    .line 304
    .line 305
    move-object v6, v12

    .line 306
    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    .line 307
    .line 308
    .line 309
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 310
    .line 311
    return-void

    .line 312
    :cond_17
    move-object v10, v9

    .line 313
    move-object v9, v8

    .line 314
    move-object v8, v1

    .line 315
    invoke-virtual {v11}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iget-object v1, v1, Landroidx/navigation/NavController$NavControllerNavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 320
    .line 321
    invoke-static {v1, v6}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 330
    .line 331
    if-ne v2, v12, :cond_18

    .line 332
    .line 333
    new-instance v2, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 334
    .line 335
    const/4 v3, 0x0

    .line 336
    invoke-direct {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_18
    move-object/from16 v21, v2

    .line 343
    .line 344
    check-cast v21, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 345
    .line 346
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    if-ne v2, v12, :cond_19

    .line 351
    .line 352
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 353
    .line 354
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :cond_19
    move-object/from16 v27, v2

    .line 362
    .line 363
    check-cast v27, Landroidx/compose/runtime/MutableState;

    .line 364
    .line 365
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, Ljava/util/List;

    .line 370
    .line 371
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    const/4 v14, 0x0

    .line 376
    const/4 v3, 0x1

    .line 377
    if-le v2, v3, :cond_1a

    .line 378
    .line 379
    move v2, v3

    .line 380
    goto :goto_11

    .line 381
    :cond_1a
    move v2, v14

    .line 382
    :goto_11
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v20

    .line 390
    or-int v4, v4, v20

    .line 391
    .line 392
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    if-nez v4, :cond_1c

    .line 397
    .line 398
    if-ne v3, v12, :cond_1b

    .line 399
    .line 400
    goto :goto_12

    .line 401
    :cond_1b
    move-object/from16 v35, v11

    .line 402
    .line 403
    move-object v11, v1

    .line 404
    move-object/from16 v1, v35

    .line 405
    .line 406
    goto :goto_13

    .line 407
    :cond_1c
    :goto_12
    new-instance v23, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 408
    .line 409
    const/16 v28, 0x0

    .line 410
    .line 411
    move-object/from16 v25, v1

    .line 412
    .line 413
    move-object/from16 v24, v11

    .line 414
    .line 415
    move-object/from16 v26, v21

    .line 416
    .line 417
    invoke-direct/range {v23 .. v28}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 418
    .line 419
    .line 420
    move-object/from16 v3, v23

    .line 421
    .line 422
    move-object/from16 v1, v24

    .line 423
    .line 424
    move-object/from16 v11, v25

    .line 425
    .line 426
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    :goto_13
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 430
    .line 431
    invoke-static {v2, v3, v6, v14}, Landroidx/work/Data$Companion;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    or-int/2addr v2, v3

    .line 443
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    if-nez v2, :cond_1d

    .line 448
    .line 449
    if-ne v3, v12, :cond_1e

    .line 450
    .line 451
    :cond_1d
    new-instance v3, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 452
    .line 453
    const/16 v2, 0x1c

    .line 454
    .line 455
    invoke-direct {v3, v2, v8, v13}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    :cond_1e
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 462
    .line 463
    invoke-static {v13, v3, v6}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 464
    .line 465
    .line 466
    invoke-static {v6}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 467
    .line 468
    .line 469
    move-result-object v13

    .line 470
    iget-object v2, v15, Landroidx/navigation/internal/NavControllerImpl;->visibleEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 471
    .line 472
    invoke-static {v2, v6}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    if-ne v3, v12, :cond_1f

    .line 481
    .line 482
    new-instance v3, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda11;

    .line 483
    .line 484
    invoke-direct {v3, v2, v14}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/runtime/State;I)V

    .line 485
    .line 486
    .line 487
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    :cond_1f
    move-object v15, v3

    .line 495
    check-cast v15, Landroidx/compose/runtime/State;

    .line 496
    .line 497
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    check-cast v2, Ljava/util/List;

    .line 502
    .line 503
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    move-object/from16 v25, v2

    .line 508
    .line 509
    check-cast v25, Landroidx/navigation/NavBackStackEntry;

    .line 510
    .line 511
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    if-ne v2, v12, :cond_20

    .line 516
    .line 517
    sget v2, Landroidx/collection/ObjectFloatMapKt;->$r8$clinit:I

    .line 518
    .line 519
    new-instance v2, Landroidx/collection/MutableObjectFloatMap;

    .line 520
    .line 521
    const/4 v3, 0x6

    .line 522
    invoke-direct {v2, v3}, Landroidx/collection/MutableObjectFloatMap;-><init>(I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    :cond_20
    move-object/from16 v24, v2

    .line 529
    .line 530
    check-cast v24, Landroidx/collection/MutableObjectFloatMap;

    .line 531
    .line 532
    if-eqz v25, :cond_3d

    .line 533
    .line 534
    const v2, -0x6b24a31f

    .line 535
    .line 536
    .line 537
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    const/high16 v3, 0x380000

    .line 545
    .line 546
    and-int/2addr v3, v0

    .line 547
    xor-int v3, v3, p9

    .line 548
    .line 549
    const/high16 v4, 0x100000

    .line 550
    .line 551
    if-le v3, v4, :cond_21

    .line 552
    .line 553
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    if-nez v3, :cond_22

    .line 558
    .line 559
    :cond_21
    and-int v3, v0, p9

    .line 560
    .line 561
    if-ne v3, v4, :cond_23

    .line 562
    .line 563
    :cond_22
    const/4 v3, 0x1

    .line 564
    goto :goto_14

    .line 565
    :cond_23
    move v3, v14

    .line 566
    :goto_14
    or-int/2addr v2, v3

    .line 567
    const v3, 0xe000

    .line 568
    .line 569
    .line 570
    and-int/2addr v3, v0

    .line 571
    const/16 v4, 0x4000

    .line 572
    .line 573
    if-ne v3, v4, :cond_24

    .line 574
    .line 575
    const/4 v3, 0x1

    .line 576
    goto :goto_15

    .line 577
    :cond_24
    move v3, v14

    .line 578
    :goto_15
    or-int/2addr v2, v3

    .line 579
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    if-nez v2, :cond_25

    .line 584
    .line 585
    if-ne v3, v12, :cond_26

    .line 586
    .line 587
    :cond_25
    move v2, v0

    .line 588
    goto :goto_16

    .line 589
    :cond_26
    move v7, v0

    .line 590
    move-object/from16 v32, v5

    .line 591
    .line 592
    move-object/from16 v34, v24

    .line 593
    .line 594
    move-object/from16 v33, v25

    .line 595
    .line 596
    const/16 v20, 0x1

    .line 597
    .line 598
    goto :goto_17

    .line 599
    :goto_16
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda12;

    .line 600
    .line 601
    move-object v3, v5

    .line 602
    const/4 v5, 0x0

    .line 603
    move-object v4, v7

    .line 604
    move v7, v2

    .line 605
    move-object v2, v4

    .line 606
    move-object/from16 v32, v3

    .line 607
    .line 608
    move-object/from16 v34, v24

    .line 609
    .line 610
    move-object/from16 v33, v25

    .line 611
    .line 612
    move-object/from16 v4, v27

    .line 613
    .line 614
    const/16 v20, 0x1

    .line 615
    .line 616
    move-object/from16 v3, p4

    .line 617
    .line 618
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda12;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    move-object v3, v0

    .line 625
    :goto_17
    move-object/from16 v26, v3

    .line 626
    .line 627
    check-cast v26, Lkotlin/jvm/functions/Function1;

    .line 628
    .line 629
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    const/high16 v2, 0x1c00000

    .line 634
    .line 635
    and-int/2addr v2, v7

    .line 636
    xor-int v2, v2, v17

    .line 637
    .line 638
    const/high16 v3, 0x800000

    .line 639
    .line 640
    if-le v2, v3, :cond_27

    .line 641
    .line 642
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v2

    .line 646
    if-nez v2, :cond_28

    .line 647
    .line 648
    :cond_27
    and-int v2, v7, v17

    .line 649
    .line 650
    if-ne v2, v3, :cond_29

    .line 651
    .line 652
    :cond_28
    move/from16 v3, v20

    .line 653
    .line 654
    goto :goto_18

    .line 655
    :cond_29
    move v3, v14

    .line 656
    :goto_18
    or-int/2addr v0, v3

    .line 657
    const/high16 v2, 0x70000

    .line 658
    .line 659
    and-int/2addr v2, v7

    .line 660
    const/high16 v3, 0x20000

    .line 661
    .line 662
    if-ne v2, v3, :cond_2a

    .line 663
    .line 664
    move/from16 v3, v20

    .line 665
    .line 666
    goto :goto_19

    .line 667
    :cond_2a
    move v3, v14

    .line 668
    :goto_19
    or-int/2addr v0, v3

    .line 669
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    if-nez v0, :cond_2c

    .line 674
    .line 675
    if-ne v2, v12, :cond_2b

    .line 676
    .line 677
    goto :goto_1a

    .line 678
    :cond_2b
    move-object/from16 v9, v26

    .line 679
    .line 680
    goto :goto_1b

    .line 681
    :cond_2c
    :goto_1a
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda12;

    .line 682
    .line 683
    const/4 v5, 0x1

    .line 684
    move-object/from16 v3, p5

    .line 685
    .line 686
    move-object v2, v9

    .line 687
    move-object/from16 v9, v26

    .line 688
    .line 689
    move-object/from16 v4, v27

    .line 690
    .line 691
    invoke-direct/range {v0 .. v5}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda12;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    move-object v2, v0

    .line 698
    :goto_1b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 699
    .line 700
    const/high16 v0, 0xe000000

    .line 701
    .line 702
    and-int/2addr v0, v7

    .line 703
    const/high16 v3, 0x4000000

    .line 704
    .line 705
    if-ne v0, v3, :cond_2d

    .line 706
    .line 707
    move/from16 v3, v20

    .line 708
    .line 709
    goto :goto_1c

    .line 710
    :cond_2d
    move v3, v14

    .line 711
    :goto_1c
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    if-nez v3, :cond_2e

    .line 716
    .line 717
    if-ne v0, v12, :cond_2f

    .line 718
    .line 719
    :cond_2e
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 720
    .line 721
    invoke-direct {v0, v14, v10}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    :cond_2f
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 728
    .line 729
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 730
    .line 731
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v4

    .line 735
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    if-nez v4, :cond_30

    .line 740
    .line 741
    if-ne v5, v12, :cond_31

    .line 742
    .line 743
    :cond_30
    new-instance v5, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 744
    .line 745
    const/16 v4, 0x1d

    .line 746
    .line 747
    invoke-direct {v5, v4, v15, v1}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    :cond_31
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 754
    .line 755
    invoke-static {v3, v5, v6}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    if-ne v3, v12, :cond_32

    .line 763
    .line 764
    new-instance v3, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 765
    .line 766
    move-object/from16 v4, v33

    .line 767
    .line 768
    invoke-direct {v3, v4}, Landroidx/compose/animation/core/SeekableTransitionState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    goto :goto_1d

    .line 775
    :cond_32
    move-object/from16 v4, v33

    .line 776
    .line 777
    :goto_1d
    check-cast v3, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 778
    .line 779
    const-string v5, "entry"

    .line 780
    .line 781
    const/16 v14, 0x38

    .line 782
    .line 783
    invoke-static {v3, v5, v6, v14}, Landroidx/compose/animation/core/ArcSplineKt;->rememberTransition(Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v14

    .line 791
    check-cast v14, Ljava/lang/Boolean;

    .line 792
    .line 793
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 794
    .line 795
    .line 796
    move-result v14

    .line 797
    if-eqz v14, :cond_35

    .line 798
    .line 799
    const v14, -0x6b028c80

    .line 800
    .line 801
    .line 802
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 803
    .line 804
    .line 805
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 806
    .line 807
    .line 808
    move-result v14

    .line 809
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 810
    .line 811
    .line 812
    move-result-object v14

    .line 813
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v16

    .line 817
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    move-result v17

    .line 821
    or-int v16, v16, v17

    .line 822
    .line 823
    move-object/from16 v19, v3

    .line 824
    .line 825
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    if-nez v16, :cond_34

    .line 830
    .line 831
    if-ne v3, v12, :cond_33

    .line 832
    .line 833
    goto :goto_1e

    .line 834
    :cond_33
    move-object/from16 v11, v19

    .line 835
    .line 836
    const/16 v22, 0x0

    .line 837
    .line 838
    goto :goto_1f

    .line 839
    :cond_34
    :goto_1e
    new-instance v18, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 840
    .line 841
    const/16 v23, 0x6

    .line 842
    .line 843
    move-object/from16 v20, v11

    .line 844
    .line 845
    const/16 v22, 0x0

    .line 846
    .line 847
    invoke-direct/range {v18 .. v23}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 848
    .line 849
    .line 850
    move-object/from16 v3, v18

    .line 851
    .line 852
    move-object/from16 v11, v19

    .line 853
    .line 854
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 855
    .line 856
    .line 857
    :goto_1f
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 858
    .line 859
    invoke-static {v6, v14, v3}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 860
    .line 861
    .line 862
    const/4 v3, 0x0

    .line 863
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 864
    .line 865
    .line 866
    move-object v3, v4

    .line 867
    move-object/from16 v21, v5

    .line 868
    .line 869
    move-object/from16 v19, v11

    .line 870
    .line 871
    :goto_20
    move-object/from16 v4, v34

    .line 872
    .line 873
    goto :goto_23

    .line 874
    :cond_35
    move-object v11, v3

    .line 875
    const/16 v22, 0x0

    .line 876
    .line 877
    const v3, -0x6afc2a19

    .line 878
    .line 879
    .line 880
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-result v14

    .line 891
    or-int/2addr v3, v14

    .line 892
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    move-result v14

    .line 896
    or-int/2addr v3, v14

    .line 897
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v14

    .line 901
    if-nez v3, :cond_37

    .line 902
    .line 903
    if-ne v14, v12, :cond_36

    .line 904
    .line 905
    goto :goto_21

    .line 906
    :cond_36
    move-object v3, v4

    .line 907
    move-object/from16 v21, v5

    .line 908
    .line 909
    move-object/from16 v19, v11

    .line 910
    .line 911
    goto :goto_22

    .line 912
    :cond_37
    :goto_21
    new-instance v18, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 913
    .line 914
    const/16 v23, 0x0

    .line 915
    .line 916
    move-object/from16 v20, v4

    .line 917
    .line 918
    move-object/from16 v21, v5

    .line 919
    .line 920
    move-object/from16 v19, v11

    .line 921
    .line 922
    invoke-direct/range {v18 .. v23}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 923
    .line 924
    .line 925
    move-object/from16 v14, v18

    .line 926
    .line 927
    move-object/from16 v3, v20

    .line 928
    .line 929
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 930
    .line 931
    .line 932
    :goto_22
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 933
    .line 934
    invoke-static {v6, v3, v14}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 935
    .line 936
    .line 937
    const/4 v4, 0x0

    .line 938
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 939
    .line 940
    .line 941
    goto :goto_20

    .line 942
    :goto_23
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v5

    .line 946
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 947
    .line 948
    .line 949
    move-result v11

    .line 950
    or-int/2addr v5, v11

    .line 951
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 952
    .line 953
    .line 954
    move-result v11

    .line 955
    or-int/2addr v5, v11

    .line 956
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 957
    .line 958
    .line 959
    move-result v11

    .line 960
    or-int/2addr v5, v11

    .line 961
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    move-result v11

    .line 965
    or-int/2addr v5, v11

    .line 966
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    move-result-object v11

    .line 970
    if-nez v5, :cond_39

    .line 971
    .line 972
    if-ne v11, v12, :cond_38

    .line 973
    .line 974
    goto :goto_24

    .line 975
    :cond_38
    move-object v9, v1

    .line 976
    move-object v14, v4

    .line 977
    move-object v5, v15

    .line 978
    goto :goto_25

    .line 979
    :cond_39
    :goto_24
    new-instance v23, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;

    .line 980
    .line 981
    const/16 v31, 0x0

    .line 982
    .line 983
    move-object/from16 v28, v0

    .line 984
    .line 985
    move-object/from16 v25, v1

    .line 986
    .line 987
    move-object/from16 v24, v4

    .line 988
    .line 989
    move-object/from16 v26, v9

    .line 990
    .line 991
    move-object/from16 v29, v15

    .line 992
    .line 993
    move-object/from16 v30, v27

    .line 994
    .line 995
    move-object/from16 v27, v2

    .line 996
    .line 997
    invoke-direct/range {v23 .. v31}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda16;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 998
    .line 999
    .line 1000
    move-object/from16 v11, v23

    .line 1001
    .line 1002
    move-object/from16 v14, v24

    .line 1003
    .line 1004
    move-object/from16 v9, v25

    .line 1005
    .line 1006
    move-object/from16 v5, v29

    .line 1007
    .line 1008
    move-object/from16 v27, v30

    .line 1009
    .line 1010
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1011
    .line 1012
    .line 1013
    :goto_25
    move-object v2, v11

    .line 1014
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1015
    .line 1016
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    if-ne v0, v12, :cond_3a

    .line 1021
    .line 1022
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 1023
    .line 1024
    const/16 v1, 0x17

    .line 1025
    .line 1026
    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1030
    .line 1031
    .line 1032
    :cond_3a
    move-object v4, v0

    .line 1033
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1034
    .line 1035
    new-instance v23, Landroidx/navigation/compose/NavHostKt$NavHost$32;

    .line 1036
    .line 1037
    move-object/from16 v25, v3

    .line 1038
    .line 1039
    move-object/from16 v28, v5

    .line 1040
    .line 1041
    move-object/from16 v26, v13

    .line 1042
    .line 1043
    move-object/from16 v24, v19

    .line 1044
    .line 1045
    invoke-direct/range {v23 .. v28}, Landroidx/navigation/compose/NavHostKt$NavHost$32;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    .line 1046
    .line 1047
    .line 1048
    move-object/from16 v0, v23

    .line 1049
    .line 1050
    move-object/from16 v11, v25

    .line 1051
    .line 1052
    const v1, 0x30ebd9dc

    .line 1053
    .line 1054
    .line 1055
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v5

    .line 1059
    shr-int/lit8 v0, v7, 0x3

    .line 1060
    .line 1061
    and-int/lit8 v0, v0, 0x70

    .line 1062
    .line 1063
    const v1, 0x36000

    .line 1064
    .line 1065
    .line 1066
    or-int/2addr v0, v1

    .line 1067
    and-int/lit16 v1, v7, 0x1c00

    .line 1068
    .line 1069
    or-int v7, v0, v1

    .line 1070
    .line 1071
    move-object/from16 v1, p2

    .line 1072
    .line 1073
    move-object/from16 v3, p3

    .line 1074
    .line 1075
    move-object/from16 v0, v21

    .line 1076
    .line 1077
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1078
    .line 1079
    .line 1080
    move-object v13, v6

    .line 1081
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 1082
    .line 1083
    invoke-virtual {v1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->getCurrentState()Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v15

    .line 1087
    iget-object v1, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1088
    .line 1089
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v1

    .line 1093
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v2

    .line 1097
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v3

    .line 1101
    or-int/2addr v2, v3

    .line 1102
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result v3

    .line 1106
    or-int/2addr v2, v3

    .line 1107
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v3

    .line 1111
    or-int/2addr v2, v3

    .line 1112
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v3

    .line 1116
    or-int/2addr v2, v3

    .line 1117
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    if-nez v2, :cond_3b

    .line 1122
    .line 1123
    if-ne v3, v12, :cond_3c

    .line 1124
    .line 1125
    :cond_3b
    move-object/from16 v21, v0

    .line 1126
    .line 1127
    goto :goto_26

    .line 1128
    :cond_3c
    move-object v8, v1

    .line 1129
    goto :goto_27

    .line 1130
    :goto_26
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;

    .line 1131
    .line 1132
    const/4 v7, 0x0

    .line 1133
    move-object v2, v8

    .line 1134
    move-object v6, v9

    .line 1135
    move-object v3, v11

    .line 1136
    move-object v4, v14

    .line 1137
    move-object/from16 v5, v28

    .line 1138
    .line 1139
    move-object v8, v1

    .line 1140
    move-object/from16 v1, v21

    .line 1141
    .line 1142
    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/navigation/NavHostController;Landroidx/navigation/NavBackStackEntry;Landroidx/collection/MutableObjectFloatMap;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1146
    .line 1147
    .line 1148
    move-object v3, v0

    .line 1149
    :goto_27
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 1150
    .line 1151
    invoke-static {v15, v8, v3, v13}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 1152
    .line 1153
    .line 1154
    const/4 v3, 0x0

    .line 1155
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1156
    .line 1157
    .line 1158
    goto :goto_28

    .line 1159
    :cond_3d
    move-object/from16 v32, v5

    .line 1160
    .line 1161
    move-object v13, v6

    .line 1162
    move v3, v14

    .line 1163
    const/16 v22, 0x0

    .line 1164
    .line 1165
    const v0, -0x6aad8da6

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1172
    .line 1173
    .line 1174
    :goto_28
    const-string v0, "dialog"

    .line 1175
    .line 1176
    move-object/from16 v3, v32

    .line 1177
    .line 1178
    invoke-virtual {v3, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    instance-of v1, v0, Landroidx/navigation/compose/DialogNavigator;

    .line 1183
    .line 1184
    if-eqz v1, :cond_3e

    .line 1185
    .line 1186
    move-object v11, v0

    .line 1187
    check-cast v11, Landroidx/navigation/compose/DialogNavigator;

    .line 1188
    .line 1189
    goto :goto_29

    .line 1190
    :cond_3e
    move-object/from16 v11, v22

    .line 1191
    .line 1192
    :goto_29
    if-nez v11, :cond_3f

    .line 1193
    .line 1194
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v12

    .line 1198
    if-eqz v12, :cond_40

    .line 1199
    .line 1200
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;

    .line 1201
    .line 1202
    const/4 v11, 0x0

    .line 1203
    move-object/from16 v1, p0

    .line 1204
    .line 1205
    move-object/from16 v2, p1

    .line 1206
    .line 1207
    move-object/from16 v3, p2

    .line 1208
    .line 1209
    move-object/from16 v4, p3

    .line 1210
    .line 1211
    move-object/from16 v5, p4

    .line 1212
    .line 1213
    move-object/from16 v6, p5

    .line 1214
    .line 1215
    move-object/from16 v7, p6

    .line 1216
    .line 1217
    move-object/from16 v8, p7

    .line 1218
    .line 1219
    move-object v9, v10

    .line 1220
    move/from16 v10, p10

    .line 1221
    .line 1222
    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    .line 1223
    .line 1224
    .line 1225
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1226
    .line 1227
    return-void

    .line 1228
    :cond_3f
    const/4 v3, 0x0

    .line 1229
    invoke-static {v11, v13, v3}, Landroidx/core/util/DebugUtils;->DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    .line 1230
    .line 1231
    .line 1232
    :goto_2a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v12

    .line 1236
    if-eqz v12, :cond_40

    .line 1237
    .line 1238
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;

    .line 1239
    .line 1240
    const/4 v11, 0x1

    .line 1241
    move-object/from16 v1, p0

    .line 1242
    .line 1243
    move-object/from16 v2, p1

    .line 1244
    .line 1245
    move-object/from16 v3, p2

    .line 1246
    .line 1247
    move-object/from16 v4, p3

    .line 1248
    .line 1249
    move-object/from16 v5, p4

    .line 1250
    .line 1251
    move-object/from16 v6, p5

    .line 1252
    .line 1253
    move-object/from16 v7, p6

    .line 1254
    .line 1255
    move-object/from16 v8, p7

    .line 1256
    .line 1257
    move-object/from16 v9, p8

    .line 1258
    .line 1259
    move/from16 v10, p10

    .line 1260
    .line 1261
    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda7;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    .line 1262
    .line 1263
    .line 1264
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 1265
    .line 1266
    :cond_40
    return-void

    .line 1267
    :cond_41
    const-string v0, "NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner"

    .line 1268
    .line 1269
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p9

    move/from16 v13, p11

    .line 1273
    move-object/from16 v9, p10

    check-cast v9, Landroidx/compose/runtime/GapComposer;

    const v1, -0x57fa4371

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v1, v13, 0x6

    if-nez v1, :cond_1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v13

    goto :goto_1

    :cond_1
    move v1, v13

    :goto_1
    and-int/lit8 v2, v13, 0x30

    const/16 v3, 0x10

    if-nez v2, :cond_3

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v13, 0x180

    if-nez v2, :cond_5

    move-object/from16 v2, p2

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v1, v5

    goto :goto_4

    :cond_5
    move-object/from16 v2, p2

    :goto_4
    const v5, 0xdb6c00

    or-int/2addr v5, v1

    const/high16 v6, 0x6000000

    and-int v7, v13, v6

    if-nez v7, :cond_6

    const v5, 0x2db6c00

    or-int/2addr v5, v1

    :cond_6
    const/high16 v1, 0x30000000

    and-int/2addr v1, v13

    if-nez v1, :cond_7

    const/high16 v1, 0x10000000

    or-int/2addr v5, v1

    :cond_7
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v3, 0x20

    :cond_8
    const/4 v1, 0x6

    or-int/2addr v3, v1

    const v7, 0x12492493

    and-int/2addr v7, v5

    const v8, 0x12492492

    if-ne v7, v8, :cond_a

    and-int/lit8 v7, v3, 0x13

    const/16 v8, 0x12

    if-ne v7, v8, :cond_a

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_5

    .line 1274
    :cond_9
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v0, v9

    move-object/from16 v9, p8

    goto/16 :goto_a

    .line 1275
    :cond_a
    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v7, v13, 0x1

    const v8, -0x7e000001

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v7, :cond_c

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_6

    .line 1276
    :cond_b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int/2addr v5, v8

    move-object/from16 v7, p3

    move-object/from16 v14, p4

    move-object/from16 v8, p8

    move/from16 p10, v1

    move v15, v5

    move/from16 v16, v6

    move-object/from16 v1, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    goto :goto_8

    .line 1277
    :cond_c
    :goto_6
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1278
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v10, :cond_d

    .line 1279
    new-instance v14, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v15, 0x15

    invoke-direct {v14, v15}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1280
    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1281
    :cond_d
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 1282
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v10, :cond_e

    .line 1283
    new-instance v15, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    move/from16 p10, v1

    const/16 v1, 0x16

    invoke-direct {v15, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1284
    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    move/from16 p10, v1

    .line 1285
    :goto_7
    move-object v1, v15

    check-cast v1, Lkotlin/jvm/functions/Function1;

    and-int/2addr v5, v8

    .line 1286
    sget-object v8, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move v15, v5

    move/from16 v16, v6

    move-object v6, v14

    move-object v5, v1

    move-object v14, v8

    move-object v8, v5

    move-object v1, v6

    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    const/4 v4, 0x0

    .line 1287
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v17

    or-int v4, v4, v17

    and-int/lit8 v3, v3, 0x70

    move-object/from16 p3, v1

    const/16 v1, 0x20

    if-ne v3, v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v1, v4

    .line 1288
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_10

    if-ne v3, v10, :cond_11

    .line 1289
    :cond_10
    iget-object v1, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 1290
    iget-object v1, v1, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 1291
    new-instance v3, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v3, v1, v11, v14}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;Ljava/util/Map;)V

    invoke-interface {v12, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v3

    .line 1292
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1293
    :cond_11
    move-object v1, v3

    check-cast v1, Landroidx/navigation/NavGraph;

    and-int/lit16 v3, v15, 0x1f8e

    shr-int/lit8 v4, v15, 0x6

    const v10, 0xe000

    and-int/2addr v10, v4

    or-int/2addr v3, v10

    const/high16 v10, 0x70000

    and-int/2addr v4, v10

    or-int/2addr v3, v4

    or-int v10, v3, v16

    move-object v3, v7

    move-object v7, v8

    const/4 v8, 0x0

    move-object/from16 v4, p3

    .line 1294
    invoke-static/range {v0 .. v10}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v6

    move-object v0, v9

    move-object v6, v4

    move-object v9, v7

    move-object v4, v3

    move-object v7, v5

    move-object v5, v14

    :goto_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_12

    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda5;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object v2, v11

    move-object v10, v12

    move v11, v13

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda5;-><init>(Landroidx/navigation/NavHostController;Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$Onboarding;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 1295
    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p8

    .line 1296
    move-object/from16 v9, p9

    check-cast v9, Landroidx/compose/runtime/GapComposer;

    const v1, 0x6daffdb6

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int v1, p10, v1

    and-int/lit8 v4, p10, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_2

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v1, v4

    :cond_2
    const v4, 0x325b6d80

    or-int/2addr v1, v4

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    const v6, 0x12492493

    and-int/2addr v6, v1

    const v7, 0x12492492

    if-ne v6, v7, :cond_5

    and-int/lit8 v6, v4, 0x3

    if-ne v6, v2, :cond_5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 1297
    :cond_4
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    goto/16 :goto_7

    .line 1298
    :cond_5
    :goto_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v2, p10, 0x1

    const v6, -0xfc00001

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v2, :cond_7

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 1299
    :cond_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int/2addr v1, v6

    move-object/from16 v2, p2

    move-object/from16 v10, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move v13, v1

    move v14, v4

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    goto :goto_5

    .line 1300
    :cond_7
    :goto_4
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1301
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_8

    .line 1302
    new-instance v8, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v10, 0x13

    invoke-direct {v8, v10}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1303
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1304
    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1305
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v7, :cond_9

    .line 1306
    new-instance v10, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v13, 0x14

    invoke-direct {v10, v13}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1307
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1308
    :cond_9
    check-cast v10, Lkotlin/jvm/functions/Function1;

    and-int/2addr v1, v6

    .line 1309
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move v13, v1

    move-object v1, v2

    move v14, v4

    move-object v2, v6

    move-object v4, v8

    move-object v6, v4

    move-object v8, v10

    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    and-int/lit8 v15, v13, 0x70

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ne v15, v5, :cond_a

    move/from16 v5, v17

    goto :goto_6

    :cond_a
    move/from16 v5, v16

    :goto_6
    and-int/lit8 v14, v14, 0xe

    if-ne v14, v3, :cond_b

    move/from16 v16, v17

    :cond_b
    or-int v3, v5, v16

    .line 1310
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_c

    if-ne v5, v7, :cond_d

    .line 1311
    :cond_c
    iget-object v3, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 1312
    iget-object v3, v3, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 1313
    new-instance v5, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v5, v3, v11}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;)V

    invoke-interface {v12, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v5

    .line 1314
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1315
    :cond_d
    check-cast v5, Landroidx/navigation/NavGraph;

    and-int/lit16 v3, v13, 0x1f8e

    const v7, 0x6036000

    or-int/2addr v3, v7

    move-object v7, v8

    const/4 v8, 0x0

    move/from16 v18, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, v10

    move/from16 v10, v18

    .line 1316
    invoke-static/range {v0 .. v10}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    :goto_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_e

    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move/from16 v10, p10

    move-object v2, v11

    move-object v9, v12

    invoke-direct/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    .line 1317
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final PermissionsScreen(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object/from16 v4, p3

    .line 5
    .line 6
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    const v0, -0x44215816

    .line 9
    .line 10
    .line 11
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    .line 14
    or-int/lit8 v0, p4, 0x12

    .line 15
    .line 16
    move-object/from16 v8, p2

    .line 17
    .line 18
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/16 v1, 0x100

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v1, 0x80

    .line 28
    .line 29
    :goto_0
    or-int/2addr v0, v1

    .line 30
    and-int/lit16 v1, v0, 0x93

    .line 31
    .line 32
    const/16 v2, 0x92

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v12, 0x0

    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    .line 38
    move v1, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v1, v12

    .line 41
    :goto_1
    and-int/2addr v0, v3

    .line 42
    invoke-virtual {v4, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_11

    .line 47
    .line 48
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 49
    .line 50
    .line 51
    and-int/lit8 v0, p4, 0x1

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 66
    .line 67
    .line 68
    move-object/from16 v6, p0

    .line 69
    .line 70
    move-object/from16 v0, p1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    :goto_2
    invoke-static {v4}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_10

    .line 78
    .line 79
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    invoke-static {v4}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 84
    .line 85
    .line 86
    move-result-object v17

    .line 87
    const-class v5, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 88
    .line 89
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    const/16 v16, 0x0

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    invoke-static/range {v13 .. v18}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 106
    .line 107
    invoke-static {v4}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    or-int/2addr v6, v7

    .line 120
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    if-nez v6, :cond_4

    .line 125
    .line 126
    if-ne v7, v2, :cond_5

    .line 127
    .line 128
    :cond_4
    const-class v6, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 129
    .line 130
    invoke-static {v6, v5, v1, v1, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    :cond_5
    move-object v5, v7

    .line 135
    check-cast v5, Lnet/thunderbird/core/common/provider/BrandNameProvider;

    .line 136
    .line 137
    move-object v6, v0

    .line 138
    move-object v0, v5

    .line 139
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 140
    .line 141
    .line 142
    new-instance v5, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 143
    .line 144
    const/4 v7, 0x5

    .line 145
    invoke-direct {v5, v7}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    if-nez v9, :cond_6

    .line 157
    .line 158
    if-ne v10, v2, :cond_7

    .line 159
    .line 160
    :cond_6
    new-instance v10, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    invoke-direct {v10, v6, v12}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_7
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 169
    .line 170
    invoke-static {v5, v10, v4}, Landroidx/room/util/DBUtil;->rememberLauncherForActivityResult(Lcom/fsck/k9/sasl/OAuthBearer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    new-instance v9, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 175
    .line 176
    invoke-direct {v9, v7}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    if-nez v7, :cond_8

    .line 188
    .line 189
    if-ne v10, v2, :cond_9

    .line 190
    .line 191
    :cond_8
    new-instance v10, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    invoke-direct {v10, v6, v3}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_9
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 200
    .line 201
    invoke-static {v9, v10, v4}, Landroidx/room/util/DBUtil;->rememberLauncherForActivityResult(Lcom/fsck/k9/sasl/OAuthBearer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    iget-object v7, v6, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 206
    .line 207
    invoke-static {v7, v4}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    if-nez v7, :cond_a

    .line 220
    .line 221
    if-ne v10, v2, :cond_b

    .line 222
    .line 223
    :cond_a
    new-instance v10, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 224
    .line 225
    const/4 v7, 0x7

    .line 226
    invoke-direct {v10, v7, v6}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_b
    move-object v14, v10

    .line 233
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 234
    .line 235
    iget-object v15, v6, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 236
    .line 237
    move-object v8, v5

    .line 238
    new-instance v5, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 239
    .line 240
    const/4 v7, 0x0

    .line 241
    const/16 v11, 0x15

    .line 242
    .line 243
    move-object/from16 v10, p2

    .line 244
    .line 245
    invoke-direct/range {v5 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 246
    .line 247
    .line 248
    invoke-static {v4, v15, v5}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    if-nez v5, :cond_c

    .line 266
    .line 267
    if-ne v7, v2, :cond_d

    .line 268
    .line 269
    :cond_c
    new-instance v7, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 270
    .line 271
    const/16 v5, 0x17

    .line 272
    .line 273
    invoke-direct {v7, v5, v14}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 280
    .line 281
    invoke-static {v12, v7, v4, v12, v3}, Landroidx/core/util/DebugUtils;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    if-nez v3, :cond_e

    .line 293
    .line 294
    if-ne v5, v2, :cond_f

    .line 295
    .line 296
    :cond_e
    new-instance v5, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;

    .line 297
    .line 298
    const/16 v2, 0x9

    .line 299
    .line 300
    invoke-direct {v5, v2, v1, v14}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    :cond_f
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 307
    .line 308
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 309
    .line 310
    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 318
    .line 319
    move-object v7, v0

    .line 320
    check-cast v7, Lapp/k9mail/provider/K9AppNameProvider;

    .line 321
    .line 322
    invoke-virtual {v7}, Lapp/k9mail/provider/K9AppNameProvider;->getBrandName()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    const/4 v3, 0x0

    .line 327
    const/4 v5, 0x0

    .line 328
    move-object v0, v1

    .line 329
    move-object v1, v14

    .line 330
    invoke-static/range {v0 .. v5}, Landroidx/room/util/SchemaInfoUtilKt;->PermissionsContent(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 331
    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_10
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 335
    .line 336
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :cond_11
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 341
    .line 342
    .line 343
    move-object/from16 v6, p0

    .line 344
    .line 345
    move-object/from16 v7, p1

    .line 346
    .line 347
    :goto_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    if-eqz v0, :cond_12

    .line 352
    .line 353
    new-instance v5, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 354
    .line 355
    const/16 v10, 0xf

    .line 356
    .line 357
    move-object/from16 v8, p2

    .line 358
    .line 359
    move/from16 v9, p4

    .line 360
    .line 361
    invoke-direct/range {v5 .. v10}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 362
    .line 363
    .line 364
    iput-object v5, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 365
    .line 366
    :cond_12
    return-void
.end method

.method public static final PullToRefreshBox(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v6, p5

    .line 5
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x2f803552

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x2

    .line 22
    :goto_0
    or-int v1, p6, v1

    .line 23
    .line 24
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const/16 v3, 0x20

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/16 v3, 0x10

    .line 34
    .line 35
    :goto_1
    or-int/2addr v1, v3

    .line 36
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    const/16 v3, 0x100

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v3, 0x80

    .line 46
    .line 47
    :goto_2
    or-int/2addr v1, v3

    .line 48
    or-int/lit16 v1, v1, 0xc00

    .line 49
    .line 50
    and-int/lit16 v3, v1, 0x2493

    .line 51
    .line 52
    const/16 v4, 0x2492

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v7, 0x1

    .line 56
    if-eq v3, v4, :cond_3

    .line 57
    .line 58
    move v3, v7

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move v3, v5

    .line 61
    :goto_3
    and-int/lit8 v4, v1, 0x1

    .line 62
    .line 63
    invoke-virtual {v6, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 70
    .line 71
    new-array v3, v5, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 78
    .line 79
    if-ne v4, v5, :cond_4

    .line 80
    .line 81
    new-instance v4, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;

    .line 82
    .line 83
    const/16 v5, 0xb

    .line 84
    .line 85
    invoke-direct {v4, v5}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda4;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 92
    .line 93
    const/16 v5, 0x180

    .line 94
    .line 95
    sget-object v9, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;->Saver:Landroidx/compose/ui/platform/WeakCache;

    .line 96
    .line 97
    invoke-static {v3, v9, v4, v6, v5}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 102
    .line 103
    const-string v4, "PullToRefreshBox"

    .line 104
    .line 105
    invoke-static {p2, v4}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    new-instance v5, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;

    .line 110
    .line 111
    invoke-direct {v5, v7, v3, p0}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Z)V

    .line 112
    .line 113
    .line 114
    const v7, -0x39749acb

    .line 115
    .line 116
    .line 117
    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    and-int/lit8 v7, v1, 0xe

    .line 122
    .line 123
    const/high16 v9, 0x30000

    .line 124
    .line 125
    or-int/2addr v7, v9

    .line 126
    and-int/lit8 v1, v1, 0x70

    .line 127
    .line 128
    or-int/2addr v1, v7

    .line 129
    const v7, 0x186000

    .line 130
    .line 131
    .line 132
    or-int/2addr v7, v1

    .line 133
    move v0, p0

    .line 134
    move-object v1, p1

    .line 135
    move-object v2, v4

    .line 136
    move-object v4, v5

    .line 137
    move-object v5, p4

    .line 138
    invoke-static/range {v0 .. v7}, Landroidx/work/Operation$State;->PullToRefreshBox(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 139
    .line 140
    .line 141
    move-object v4, v8

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 144
    .line 145
    .line 146
    move-object v4, p3

    .line 147
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    if-eqz v7, :cond_6

    .line 152
    .line 153
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 154
    .line 155
    move v1, p0

    .line 156
    move-object v2, p1

    .line 157
    move-object v3, p2

    .line 158
    move-object v5, p4

    .line 159
    move/from16 v6, p6

    .line 160
    .line 161
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 162
    .line 163
    .line 164
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 165
    .line 166
    :cond_6
    return-void
.end method

.method public static final TextBodyLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V
    .locals 22

    .line 294
    move-object/from16 v0, p6

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    const v1, 0x6fc6abbf

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

    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v4, p1

    goto :goto_2

    :cond_1
    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v1, v5

    :goto_2
    const v5, 0x36d80

    or-int/2addr v1, v5

    const v5, 0x12493

    and-int/2addr v5, v1

    const v6, 0x12492

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    .line 295
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_4

    :cond_4
    move-object v2, v4

    .line 296
    :goto_4
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 297
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 298
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 299
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 300
    iget-object v6, v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    and-int/lit16 v1, v1, 0x3fe

    const/16 v20, 0x6186

    const v21, 0x3abf8

    move/from16 v19, v1

    move-object v1, v2

    move-wide v2, v4

    const-wide/16 v4, 0x0

    move-object/from16 v17, v6

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

    move-object/from16 v0, p0

    .line 301
    invoke-static/range {v0 .. v21}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v4, v1

    move-wide v5, v2

    move v7, v11

    move v8, v13

    goto :goto_5

    :cond_5
    move-object/from16 v18, v0

    .line 302
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    .line 303
    :goto_5
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;

    move-object/from16 v3, p0

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIIII)V

    .line 304
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final TextBodyLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V
    .locals 31

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
    const v1, -0x65f7949d

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
    or-int/lit16 v4, v1, 0x180

    .line 62
    .line 63
    and-int/lit8 v5, p9, 0x8

    .line 64
    .line 65
    if-eqz v5, :cond_6

    .line 66
    .line 67
    or-int/lit16 v4, v1, 0xd80

    .line 68
    .line 69
    :cond_5
    move-object/from16 v1, p4

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_6
    and-int/lit16 v1, v8, 0xc00

    .line 73
    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    move-object/from16 v1, p4

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_7

    .line 83
    .line 84
    const/16 v6, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_7
    const/16 v6, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v4, v6

    .line 90
    :goto_5
    and-int/lit8 v6, p9, 0x10

    .line 91
    .line 92
    if-eqz v6, :cond_9

    .line 93
    .line 94
    or-int/lit16 v4, v4, 0x6000

    .line 95
    .line 96
    :cond_8
    move/from16 v7, p5

    .line 97
    .line 98
    goto :goto_7

    .line 99
    :cond_9
    and-int/lit16 v7, v8, 0x6000

    .line 100
    .line 101
    if-nez v7, :cond_8

    .line 102
    .line 103
    move/from16 v7, p5

    .line 104
    .line 105
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_a

    .line 110
    .line 111
    const/16 v10, 0x4000

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_a
    const/16 v10, 0x2000

    .line 115
    .line 116
    :goto_6
    or-int/2addr v4, v10

    .line 117
    :goto_7
    and-int/lit8 v10, p9, 0x20

    .line 118
    .line 119
    const/high16 v11, 0x30000

    .line 120
    .line 121
    if-eqz v10, :cond_c

    .line 122
    .line 123
    or-int/2addr v4, v11

    .line 124
    :cond_b
    move/from16 v11, p6

    .line 125
    .line 126
    goto :goto_9

    .line 127
    :cond_c
    and-int/2addr v11, v8

    .line 128
    if-nez v11, :cond_b

    .line 129
    .line 130
    move/from16 v11, p6

    .line 131
    .line 132
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-eqz v12, :cond_d

    .line 137
    .line 138
    const/high16 v12, 0x20000

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_d
    const/high16 v12, 0x10000

    .line 142
    .line 143
    :goto_8
    or-int/2addr v4, v12

    .line 144
    :goto_9
    const v12, 0x12493

    .line 145
    .line 146
    .line 147
    and-int/2addr v12, v4

    .line 148
    const v13, 0x12492

    .line 149
    .line 150
    .line 151
    const/4 v14, 0x1

    .line 152
    if-eq v12, v13, :cond_e

    .line 153
    .line 154
    move v12, v14

    .line 155
    goto :goto_a

    .line 156
    :cond_e
    const/4 v12, 0x0

    .line 157
    :goto_a
    and-int/lit8 v13, v4, 0x1

    .line 158
    .line 159
    invoke-virtual {v0, v13, v12}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 160
    .line 161
    .line 162
    move-result v12

    .line 163
    if-eqz v12, :cond_13

    .line 164
    .line 165
    if-eqz v2, :cond_f

    .line 166
    .line 167
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 168
    .line 169
    move/from16 v30, v10

    .line 170
    .line 171
    move-object v10, v2

    .line 172
    move/from16 v2, v30

    .line 173
    .line 174
    goto :goto_b

    .line 175
    :cond_f
    move v2, v10

    .line 176
    move-object v10, v3

    .line 177
    :goto_b
    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 178
    .line 179
    if-eqz v5, :cond_10

    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    :cond_10
    move-object/from16 v17, v1

    .line 183
    .line 184
    if-eqz v6, :cond_11

    .line 185
    .line 186
    move/from16 v20, v14

    .line 187
    .line 188
    goto :goto_c

    .line 189
    :cond_11
    move/from16 v20, v7

    .line 190
    .line 191
    :goto_c
    if-eqz v2, :cond_12

    .line 192
    .line 193
    const v1, 0x7fffffff

    .line 194
    .line 195
    .line 196
    move/from16 v22, v1

    .line 197
    .line 198
    goto :goto_d

    .line 199
    :cond_12
    move/from16 v22, p6

    .line 200
    .line 201
    :goto_d
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 208
    .line 209
    iget-object v1, v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 210
    .line 211
    and-int/lit16 v2, v4, 0x3fe

    .line 212
    .line 213
    shr-int/lit8 v3, v4, 0x9

    .line 214
    .line 215
    and-int/lit8 v3, v3, 0xe

    .line 216
    .line 217
    shr-int/lit8 v5, v4, 0x6

    .line 218
    .line 219
    and-int/lit16 v5, v5, 0x380

    .line 220
    .line 221
    or-int/2addr v3, v5

    .line 222
    shr-int/lit8 v4, v4, 0x3

    .line 223
    .line 224
    const v5, 0xe000

    .line 225
    .line 226
    .line 227
    and-int/2addr v4, v5

    .line 228
    or-int v28, v3, v4

    .line 229
    .line 230
    const v29, 0x1abf8

    .line 231
    .line 232
    .line 233
    const-wide/16 v13, 0x0

    .line 234
    .line 235
    const-wide/16 v15, 0x0

    .line 236
    .line 237
    const-wide/16 v18, 0x0

    .line 238
    .line 239
    const/16 v21, 0x0

    .line 240
    .line 241
    const/16 v23, 0x0

    .line 242
    .line 243
    const/16 v24, 0x0

    .line 244
    .line 245
    move-object/from16 v26, v0

    .line 246
    .line 247
    move-object/from16 v25, v1

    .line 248
    .line 249
    move/from16 v27, v2

    .line 250
    .line 251
    invoke-static/range {v9 .. v29}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 252
    .line 253
    .line 254
    move-object v2, v10

    .line 255
    move-wide v3, v11

    .line 256
    move-object/from16 v5, v17

    .line 257
    .line 258
    move/from16 v6, v20

    .line 259
    .line 260
    move/from16 v7, v22

    .line 261
    .line 262
    goto :goto_e

    .line 263
    :cond_13
    move-object/from16 v26, v0

    .line 264
    .line 265
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 266
    .line 267
    .line 268
    move-object v5, v1

    .line 269
    move-object v2, v3

    .line 270
    move v6, v7

    .line 271
    move-wide/from16 v3, p2

    .line 272
    .line 273
    move/from16 v7, p6

    .line 274
    .line 275
    :goto_e
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    if-eqz v11, :cond_14

    .line 280
    .line 281
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;

    .line 282
    .line 283
    const/4 v10, 0x0

    .line 284
    move-object/from16 v1, p0

    .line 285
    .line 286
    move/from16 v9, p9

    .line 287
    .line 288
    invoke-direct/range {v0 .. v10}, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IIIII)V

    .line 289
    .line 290
    .line 291
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 292
    .line 293
    :cond_14
    return-void
.end method

.method public static final TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move/from16 v11, p4

    .line 6
    .line 7
    move-object/from16 v8, p3

    .line 8
    .line 9
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x50245748

    .line 12
    .line 13
    .line 14
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v11, 0x6

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, v11

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v11

    .line 34
    :goto_1
    and-int/lit8 v3, v11, 0x30

    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    move v3, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v3, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v3

    .line 55
    :cond_3
    and-int/lit16 v3, v11, 0x180

    .line 56
    .line 57
    if-nez v3, :cond_5

    .line 58
    .line 59
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    const/16 v3, 0x100

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    const/16 v3, 0x80

    .line 69
    .line 70
    :goto_3
    or-int/2addr v0, v3

    .line 71
    :cond_5
    and-int/lit16 v3, v0, 0x93

    .line 72
    .line 73
    const/16 v5, 0x92

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x1

    .line 77
    if-eq v3, v5, :cond_6

    .line 78
    .line 79
    move v3, v7

    .line 80
    goto :goto_4

    .line 81
    :cond_6
    move v3, v6

    .line 82
    :goto_4
    and-int/lit8 v5, v0, 0x1

    .line 83
    .line 84
    invoke-virtual {v8, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_13

    .line 89
    .line 90
    and-int/lit8 v3, v0, 0xe

    .line 91
    .line 92
    if-ne v3, v2, :cond_7

    .line 93
    .line 94
    move v5, v7

    .line 95
    goto :goto_5

    .line 96
    :cond_7
    move v5, v6

    .line 97
    :goto_5
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    or-int/2addr v5, v9

    .line 102
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 107
    .line 108
    if-nez v5, :cond_8

    .line 109
    .line 110
    if-ne v9, v12, :cond_9

    .line 111
    .line 112
    :cond_8
    new-instance v9, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;

    .line 113
    .line 114
    invoke-direct {v9, v10, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_9
    check-cast v9, Landroidx/compose/foundation/text/TextDragObserver;

    .line 121
    .line 122
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-ne v3, v2, :cond_a

    .line 127
    .line 128
    move v2, v7

    .line 129
    goto :goto_6

    .line 130
    :cond_a
    move v2, v6

    .line 131
    :goto_6
    or-int/2addr v2, v5

    .line 132
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-nez v2, :cond_b

    .line 137
    .line 138
    if-ne v3, v12, :cond_c

    .line 139
    .line 140
    :cond_b
    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1;

    .line 141
    .line 142
    invoke-direct {v3, v10, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_c
    check-cast v3, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 149
    .line 150
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iget-wide v13, v2, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 155
    .line 156
    invoke-static {v13, v14}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v1, :cond_d

    .line 161
    .line 162
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-wide v13, v5, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 167
    .line 168
    shr-long v4, v13, v4

    .line 169
    .line 170
    :goto_7
    long-to-int v4, v4

    .line 171
    goto :goto_8

    .line 172
    :cond_d
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    iget-wide v4, v4, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 177
    .line 178
    const-wide v13, 0xffffffffL

    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    and-long/2addr v4, v13

    .line 184
    goto :goto_7

    .line 185
    :goto_8
    iget-object v5, v10, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->state:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 186
    .line 187
    const/4 v13, 0x0

    .line 188
    if-eqz v5, :cond_10

    .line 189
    .line 190
    invoke-virtual {v5}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    if-eqz v5, :cond_10

    .line 195
    .line 196
    iget-object v5, v5, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 197
    .line 198
    if-ltz v4, :cond_10

    .line 199
    .line 200
    iget-object v14, v5, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 201
    .line 202
    iget-object v5, v5, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 203
    .line 204
    iget-object v14, v14, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 205
    .line 206
    iget-object v14, v14, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    if-nez v14, :cond_e

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_e
    invoke-virtual {v5, v4}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 216
    .line 217
    .line 218
    move-result v14

    .line 219
    iget v15, v5, Landroidx/compose/ui/text/MultiParagraph;->maxLines:I

    .line 220
    .line 221
    sub-int/2addr v15, v7

    .line 222
    move/from16 p3, v7

    .line 223
    .line 224
    iget v7, v5, Landroidx/compose/ui/text/MultiParagraph;->lineCount:I

    .line 225
    .line 226
    add-int/lit8 v7, v7, -0x1

    .line 227
    .line 228
    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    invoke-virtual {v5, v7, v6}, Landroidx/compose/ui/text/MultiParagraph;->getLineEnd(IZ)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-le v4, v6, :cond_f

    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_f
    invoke-virtual {v5, v7}, Landroidx/compose/ui/text/MultiParagraph;->requireLineIndexInRange(I)V

    .line 244
    .line 245
    .line 246
    iget-object v4, v5, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-static {v7, v4}, Landroidx/compose/ui/text/ParagraphKt;->findParagraphByLineIndex(ILjava/util/List;)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    check-cast v4, Landroidx/compose/ui/text/ParagraphInfo;

    .line 257
    .line 258
    iget-object v5, v4, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 259
    .line 260
    iget v4, v4, Landroidx/compose/ui/text/ParagraphInfo;->startLineIndex:I

    .line 261
    .line 262
    sub-int/2addr v7, v4

    .line 263
    iget-object v4, v5, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 264
    .line 265
    invoke-virtual {v4, v7}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    invoke-virtual {v4, v7}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    sub-float v13, v5, v4

    .line 274
    .line 275
    :cond_10
    :goto_9
    move v6, v13

    .line 276
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    const/4 v7, 0x6

    .line 285
    if-nez v4, :cond_11

    .line 286
    .line 287
    if-ne v5, v12, :cond_12

    .line 288
    .line 289
    :cond_11
    new-instance v5, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;

    .line 290
    .line 291
    invoke-direct {v5, v7, v9}, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_12
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 298
    .line 299
    new-instance v4, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 300
    .line 301
    const/4 v12, 0x0

    .line 302
    invoke-direct {v4, v9, v12, v5, v7}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    .line 303
    .line 304
    .line 305
    shl-int/lit8 v0, v0, 0x3

    .line 306
    .line 307
    and-int/lit16 v9, v0, 0x3f0

    .line 308
    .line 309
    move-object v7, v4

    .line 310
    const-wide/16 v4, 0x0

    .line 311
    .line 312
    move-object v0, v3

    .line 313
    move v3, v2

    .line 314
    move-object/from16 v2, p1

    .line 315
    .line 316
    invoke-static/range {v0 .. v9}, Lorg/slf4j/helpers/Util;->SelectionHandle-wLIcFTc(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;Landroidx/compose/runtime/Composer;I)V

    .line 317
    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_13
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 321
    .line 322
    .line 323
    :goto_a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    if-eqz v6, :cond_14

    .line 328
    .line 329
    new-instance v0, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;

    .line 330
    .line 331
    const/4 v2, 0x2

    .line 332
    move/from16 v5, p0

    .line 333
    .line 334
    move-object/from16 v3, p1

    .line 335
    .line 336
    move-object v4, v10

    .line 337
    move v1, v11

    .line 338
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/CheckboxKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 339
    .line 340
    .line 341
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 342
    .line 343
    :cond_14
    return-void
.end method

.method public static final access$createDefaultExecutor(Z)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/ConfigurationKt$createDefaultExecutor$factory$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/ConfigurationKt$createDefaultExecutor$factory$1;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    add-int/lit8 p0, p0, -0x1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public static final appendPlaceholders(ILjava/lang/StringBuilder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p0, :cond_1

    .line 3
    .line 4
    const-string v1, "?"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    add-int/lit8 v1, p0, -0x1

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method public static final buildTrace(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 24
    .line 25
    if-gez p3, :cond_1

    .line 26
    .line 27
    iget-object p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    .line 28
    .line 29
    invoke-virtual {p0, p3, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotIndex([II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr p1, v1

    .line 48
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroidx/collection/MutableObjectList;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget v1, v1, Landroidx/collection/MutableObjectList;->_size:I

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v1, 0x0

    .line 64
    :goto_1
    add-int/2addr p1, v1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_3
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    mul-int/lit8 v1, v1, 0x5

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    .line 76
    .line 77
    array-length v3, v2

    .line 78
    if-ge v1, v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupKey(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    if-ltz p3, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0, v2, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    move p2, p3

    .line 93
    :goto_2
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupKey(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    goto :goto_5

    .line 98
    :goto_3
    if-ltz p2, :cond_8

    .line 99
    .line 100
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    .line 105
    .line 106
    mul-int/lit8 v2, v2, 0x5

    .line 107
    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    aget v2, v3, v2

    .line 111
    .line 112
    const/high16 v3, 0x20000000

    .line 113
    .line 114
    and-int/2addr v2, v3

    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_4

    .line 122
    :cond_6
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 123
    .line 124
    :goto_4
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationOf$runtime(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->processEdge(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-ltz p3, :cond_7

    .line 136
    .line 137
    iget-object p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    .line 138
    .line 139
    invoke-virtual {p0, p2, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupKey(I)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    :goto_5
    move v4, p3

    .line 148
    move p3, p2

    .line 149
    move p2, v4

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move p2, p3

    .line 152
    goto :goto_3

    .line 153
    :cond_8
    iget-object p0, v0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p0, Ljava/util/ArrayList;

    .line 156
    .line 157
    return-object p0

    .line 158
    :cond_9
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 159
    .line 160
    return-object p0
.end method

.method public static final constraint(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->getMaxWidth-D9Ej5fM()F

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 15
    .line 16
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x1

    .line 22
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    invoke-static {v3, v8}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    move v3, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v6

    .line 35
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v5, v4

    .line 51
    :goto_1
    invoke-static {v5, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-nez v9, :cond_2

    .line 56
    .line 57
    invoke-static {v5, v8}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_2

    .line 62
    .line 63
    move v6, v7

    .line 64
    :cond_2
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->getMaxWidth-D9Ej5fM()F

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-static {v5, v3, p0}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move-object p0, v5

    .line 86
    :goto_2
    if-eqz v6, :cond_5

    .line 87
    .line 88
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    :cond_4
    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :cond_5
    invoke-interface {p0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static createViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 4

    .line 1
    const-string v0, "Cannot create an instance of "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 8
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    check-cast v2, Landroidx/lifecycle/ViewModel;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    .line 27
    return-object v2

    .line 28
    :catch_0
    move-exception v2

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception v2

    .line 31
    goto :goto_1

    .line 32
    :goto_0
    invoke-static {v0, p0, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :goto_1
    invoke-static {v0, p0, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_0
    invoke-static {p0, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :catch_2
    move-exception v2

    .line 45
    invoke-static {v0, p0, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    return-object v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x6

    .line 6
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 16
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 17
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static final findSubcompositionContextGroup$lambda$0$scanGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/CompositionContext;II)Ljava/lang/Integer;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    if-ge p2, p3, :cond_6

    .line 5
    .line 6
    mul-int/lit8 v2, p2, 0x5

    .line 7
    .line 8
    add-int/lit8 v2, v2, 0x3

    .line 9
    .line 10
    aget v2, v0, v2

    .line 11
    .line 12
    add-int/2addr v2, p2

    .line 13
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hasMark(I)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupKey(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0xce

    .line 24
    .line 25
    if-ne v3, v4, :cond_4

    .line 26
    .line 27
    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->reference:Landroidx/compose/runtime/OpaqueKey;

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, p2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupGet(II)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    instance-of v4, v3, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    check-cast v3, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    move-object v3, v1

    .line 52
    :goto_1
    if-eqz v3, :cond_1

    .line 53
    .line 54
    iget-object v3, v3, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    move-object v3, v1

    .line 58
    :goto_2
    instance-of v4, v3, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    move-object v1, v3

    .line 63
    check-cast v1, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 64
    .line 65
    :cond_2
    if-eqz v1, :cond_4

    .line 66
    .line 67
    iget-object v1, v1, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->ref:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 68
    .line 69
    if-eq v1, p1, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4
    :goto_3
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->containsMark(I)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    add-int/lit8 p2, p2, 0x1

    .line 84
    .line 85
    invoke-static {p0, p1, p2, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->findSubcompositionContextGroup$lambda$0$scanGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/CompositionContext;II)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_5
    move p2, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_6
    return-object v1
.end method

.method public static final getAllowedAuthenticationTypes(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x2

    .line 9
    sget-object v1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->ClientCertificate:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 10
    .line 11
    sget-object v2, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->PasswordEncrypted:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    sget-object v4, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->PasswordCleartext:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    if-ne p0, v6, :cond_0

    .line 21
    .line 22
    new-array p0, v5, [Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 23
    .line 24
    aput-object v4, p0, v3

    .line 25
    .line 26
    aput-object v2, p0, v6

    .line 27
    .line 28
    aput-object v1, p0, v0

    .line 29
    .line 30
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_1
    const/4 p0, 0x4

    .line 41
    new-array p0, p0, [Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 42
    .line 43
    aput-object v4, p0, v3

    .line 44
    .line 45
    aput-object v2, p0, v6

    .line 46
    .line 47
    aput-object v1, p0, v0

    .line 48
    .line 49
    sget-object v0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->OAuth2:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 50
    .line 51
    aput-object v0, p0, v5

    .line 52
    .line 53
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static getAutofillId(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/datastore/core/Api26Impl;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/window/Api33Impl;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static final getSettings()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 12

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->_settings:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    const/4 v10, 0x0

    .line 12
    const/high16 v3, 0x41c00000    # 24.0f

    .line 13
    .line 14
    const/high16 v4, 0x41c00000    # 24.0f

    .line 15
    .line 16
    const/high16 v5, 0x41c00000    # 24.0f

    .line 17
    .line 18
    const/high16 v6, 0x41c00000    # 24.0f

    .line 19
    .line 20
    const-wide/16 v7, 0x0

    .line 21
    .line 22
    const-string v2, "Outlined.Settings"

    .line 23
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
    const v0, 0x419b70a4    # 19.43f

    .line 37
    .line 38
    .line 39
    const v2, 0x414fae14    # 12.98f

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(FF)Lokhttp3/Headers$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const v9, 0x3d8f5c29    # 0.07f

    .line 47
    .line 48
    .line 49
    const v10, -0x40851eb8    # -0.98f

    .line 50
    .line 51
    .line 52
    const v5, 0x3d23d70a    # 0.04f

    .line 53
    .line 54
    .line 55
    const v6, -0x415c28f6    # -0.32f

    .line 56
    .line 57
    .line 58
    const v7, 0x3d8f5c29    # 0.07f

    .line 59
    .line 60
    .line 61
    const v8, -0x40dc28f6    # -0.64f

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 65
    .line 66
    .line 67
    const v9, -0x4270a3d7    # -0.07f

    .line 68
    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const v6, -0x4151eb85    # -0.34f

    .line 72
    .line 73
    .line 74
    const v7, -0x430a3d71    # -0.03f

    .line 75
    .line 76
    .line 77
    const v8, -0x40d70a3d    # -0.66f

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 81
    .line 82
    .line 83
    const v0, -0x402ccccd    # -1.65f

    .line 84
    .line 85
    .line 86
    const v2, 0x40070a3d    # 2.11f

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 90
    .line 91
    .line 92
    const v9, 0x3df5c28f    # 0.12f

    .line 93
    .line 94
    .line 95
    const v10, -0x40dc28f6    # -0.64f

    .line 96
    .line 97
    .line 98
    const v5, 0x3e428f5c    # 0.19f

    .line 99
    .line 100
    .line 101
    const v6, -0x41e66666    # -0.15f

    .line 102
    .line 103
    .line 104
    const v7, 0x3e75c28f    # 0.24f

    .line 105
    .line 106
    .line 107
    const v8, -0x4128f5c3    # -0.42f

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 111
    .line 112
    .line 113
    const v0, -0x3fa28f5c    # -3.46f

    .line 114
    .line 115
    .line 116
    const/high16 v2, -0x40000000    # -2.0f

    .line 117
    .line 118
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 119
    .line 120
    .line 121
    const v9, -0x411eb852    # -0.44f

    .line 122
    .line 123
    .line 124
    const/high16 v10, -0x41800000    # -0.25f

    .line 125
    .line 126
    const v5, -0x4247ae14    # -0.09f

    .line 127
    .line 128
    .line 129
    const v6, -0x41dc28f6    # -0.16f

    .line 130
    .line 131
    .line 132
    const v7, -0x417ae148    # -0.26f

    .line 133
    .line 134
    .line 135
    const/high16 v8, -0x41800000    # -0.25f

    .line 136
    .line 137
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 138
    .line 139
    .line 140
    const v9, -0x41d1eb85    # -0.17f

    .line 141
    .line 142
    .line 143
    const v10, 0x3cf5c28f    # 0.03f

    .line 144
    .line 145
    .line 146
    const v5, -0x428a3d71    # -0.06f

    .line 147
    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    const v7, -0x420a3d71    # -0.12f

    .line 151
    .line 152
    .line 153
    const v8, 0x3c23d70a    # 0.01f

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 157
    .line 158
    .line 159
    const/high16 v0, 0x3f800000    # 1.0f

    .line 160
    .line 161
    const v2, -0x3fe0a3d7    # -2.49f

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 165
    .line 166
    .line 167
    const v9, -0x4027ae14    # -1.69f

    .line 168
    .line 169
    .line 170
    const v10, -0x40851eb8    # -0.98f

    .line 171
    .line 172
    .line 173
    const v5, -0x40fae148    # -0.52f

    .line 174
    .line 175
    .line 176
    const v6, -0x41333333    # -0.4f

    .line 177
    .line 178
    .line 179
    const v7, -0x4075c28f    # -1.08f

    .line 180
    .line 181
    .line 182
    const v8, -0x40c51eb8    # -0.73f

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 186
    .line 187
    .line 188
    const v0, -0x3fd66666    # -2.65f

    .line 189
    .line 190
    .line 191
    const v2, -0x413d70a4    # -0.38f

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 195
    .line 196
    .line 197
    const/high16 v9, 0x41600000    # 14.0f

    .line 198
    .line 199
    const/high16 v10, 0x40000000    # 2.0f

    .line 200
    .line 201
    const v5, 0x41675c29    # 14.46f

    .line 202
    .line 203
    .line 204
    const v6, 0x400b851f    # 2.18f

    .line 205
    .line 206
    .line 207
    const/high16 v7, 0x41640000    # 14.25f

    .line 208
    .line 209
    const/high16 v8, 0x40000000    # 2.0f

    .line 210
    .line 211
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveTo(FFFFFF)V

    .line 212
    .line 213
    .line 214
    const/high16 v0, -0x3f800000    # -4.0f

    .line 215
    .line 216
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 217
    .line 218
    .line 219
    const v9, -0x41051eb8    # -0.49f

    .line 220
    .line 221
    .line 222
    const v10, 0x3ed70a3d    # 0.42f

    .line 223
    .line 224
    .line 225
    const/high16 v5, -0x41800000    # -0.25f

    .line 226
    .line 227
    const/4 v6, 0x0

    .line 228
    const v7, -0x41147ae1    # -0.46f

    .line 229
    .line 230
    .line 231
    const v8, 0x3e3851ec    # 0.18f

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 235
    .line 236
    .line 237
    const v0, 0x4029999a    # 2.65f

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 241
    .line 242
    .line 243
    const v9, -0x4027ae14    # -1.69f

    .line 244
    .line 245
    .line 246
    const v10, 0x3f7ae148    # 0.98f

    .line 247
    .line 248
    .line 249
    const v5, -0x40e3d70a    # -0.61f

    .line 250
    .line 251
    .line 252
    const/high16 v6, 0x3e800000    # 0.25f

    .line 253
    .line 254
    const v7, -0x406a3d71    # -1.17f

    .line 255
    .line 256
    .line 257
    const v8, 0x3f170a3d    # 0.59f

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 261
    .line 262
    .line 263
    const/high16 v0, -0x40800000    # -1.0f

    .line 264
    .line 265
    const v2, -0x3fe0a3d7    # -2.49f

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 269
    .line 270
    .line 271
    const v9, -0x41c7ae14    # -0.18f

    .line 272
    .line 273
    .line 274
    const v10, -0x430a3d71    # -0.03f

    .line 275
    .line 276
    .line 277
    const v5, -0x428a3d71    # -0.06f

    .line 278
    .line 279
    .line 280
    const v6, -0x435c28f6    # -0.02f

    .line 281
    .line 282
    .line 283
    const v7, -0x420a3d71    # -0.12f

    .line 284
    .line 285
    .line 286
    const v8, -0x430a3d71    # -0.03f

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 290
    .line 291
    .line 292
    const v9, -0x4123d70a    # -0.43f

    .line 293
    .line 294
    .line 295
    const/high16 v10, 0x3e800000    # 0.25f

    .line 296
    .line 297
    const v5, -0x41d1eb85    # -0.17f

    .line 298
    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    const v7, -0x4151eb85    # -0.34f

    .line 302
    .line 303
    .line 304
    const v8, 0x3db851ec    # 0.09f

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 308
    .line 309
    .line 310
    const v0, 0x405d70a4    # 3.46f

    .line 311
    .line 312
    .line 313
    const/high16 v2, -0x40000000    # -2.0f

    .line 314
    .line 315
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 316
    .line 317
    .line 318
    const v9, 0x3df5c28f    # 0.12f

    .line 319
    .line 320
    .line 321
    const v10, 0x3f23d70a    # 0.64f

    .line 322
    .line 323
    .line 324
    const v5, -0x41fae148    # -0.13f

    .line 325
    .line 326
    .line 327
    const v6, 0x3e6147ae    # 0.22f

    .line 328
    .line 329
    .line 330
    const v7, -0x4270a3d7    # -0.07f

    .line 331
    .line 332
    .line 333
    const v8, 0x3efae148    # 0.49f

    .line 334
    .line 335
    .line 336
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 337
    .line 338
    .line 339
    const v0, 0x3fd33333    # 1.65f

    .line 340
    .line 341
    .line 342
    const v2, 0x40070a3d    # 2.11f

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 346
    .line 347
    .line 348
    const v9, -0x4270a3d7    # -0.07f

    .line 349
    .line 350
    .line 351
    const v10, 0x3f7ae148    # 0.98f

    .line 352
    .line 353
    .line 354
    const v5, -0x42dc28f6    # -0.04f

    .line 355
    .line 356
    .line 357
    const v6, 0x3ea3d70a    # 0.32f

    .line 358
    .line 359
    .line 360
    const v8, 0x3f266666    # 0.65f

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 364
    .line 365
    .line 366
    const v9, 0x3d8f5c29    # 0.07f

    .line 367
    .line 368
    .line 369
    const/4 v5, 0x0

    .line 370
    const v6, 0x3ea8f5c3    # 0.33f

    .line 371
    .line 372
    .line 373
    const v7, 0x3cf5c28f    # 0.03f

    .line 374
    .line 375
    .line 376
    const v8, 0x3f28f5c3    # 0.66f

    .line 377
    .line 378
    .line 379
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 380
    .line 381
    .line 382
    const v0, -0x3ff8f5c3    # -2.11f

    .line 383
    .line 384
    .line 385
    const v2, 0x3fd33333    # 1.65f

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 389
    .line 390
    .line 391
    const v9, -0x420a3d71    # -0.12f

    .line 392
    .line 393
    .line 394
    const v10, 0x3f23d70a    # 0.64f

    .line 395
    .line 396
    .line 397
    const v5, -0x41bd70a4    # -0.19f

    .line 398
    .line 399
    .line 400
    const v6, 0x3e19999a    # 0.15f

    .line 401
    .line 402
    .line 403
    const v7, -0x418a3d71    # -0.24f

    .line 404
    .line 405
    .line 406
    const v8, 0x3ed70a3d    # 0.42f

    .line 407
    .line 408
    .line 409
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 410
    .line 411
    .line 412
    const v0, 0x405d70a4    # 3.46f

    .line 413
    .line 414
    .line 415
    const/high16 v2, 0x40000000    # 2.0f

    .line 416
    .line 417
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 418
    .line 419
    .line 420
    const v9, 0x3ee147ae    # 0.44f

    .line 421
    .line 422
    .line 423
    const/high16 v10, 0x3e800000    # 0.25f

    .line 424
    .line 425
    const v5, 0x3db851ec    # 0.09f

    .line 426
    .line 427
    .line 428
    const v6, 0x3e23d70a    # 0.16f

    .line 429
    .line 430
    .line 431
    const v7, 0x3e851eb8    # 0.26f

    .line 432
    .line 433
    .line 434
    const/high16 v8, 0x3e800000    # 0.25f

    .line 435
    .line 436
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 437
    .line 438
    .line 439
    const v9, 0x3e2e147b    # 0.17f

    .line 440
    .line 441
    .line 442
    const v10, -0x430a3d71    # -0.03f

    .line 443
    .line 444
    .line 445
    const v5, 0x3d75c28f    # 0.06f

    .line 446
    .line 447
    .line 448
    const/4 v6, 0x0

    .line 449
    const v7, 0x3df5c28f    # 0.12f

    .line 450
    .line 451
    .line 452
    const v8, -0x43dc28f6    # -0.01f

    .line 453
    .line 454
    .line 455
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 456
    .line 457
    .line 458
    const v0, 0x401f5c29    # 2.49f

    .line 459
    .line 460
    .line 461
    const/high16 v2, -0x40800000    # -1.0f

    .line 462
    .line 463
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 464
    .line 465
    .line 466
    const v9, 0x3fd851ec    # 1.69f

    .line 467
    .line 468
    .line 469
    const v10, 0x3f7ae148    # 0.98f

    .line 470
    .line 471
    .line 472
    const v5, 0x3f051eb8    # 0.52f

    .line 473
    .line 474
    .line 475
    const v6, 0x3ecccccd    # 0.4f

    .line 476
    .line 477
    .line 478
    const v7, 0x3f8a3d71    # 1.08f

    .line 479
    .line 480
    .line 481
    const v8, 0x3f3ae148    # 0.73f

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 485
    .line 486
    .line 487
    const v0, 0x3ec28f5c    # 0.38f

    .line 488
    .line 489
    .line 490
    const v2, 0x4029999a    # 2.65f

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 494
    .line 495
    .line 496
    const v9, 0x3efae148    # 0.49f

    .line 497
    .line 498
    .line 499
    const v10, 0x3ed70a3d    # 0.42f

    .line 500
    .line 501
    .line 502
    const v5, 0x3cf5c28f    # 0.03f

    .line 503
    .line 504
    .line 505
    const v6, 0x3e75c28f    # 0.24f

    .line 506
    .line 507
    .line 508
    const v7, 0x3e75c28f    # 0.24f

    .line 509
    .line 510
    .line 511
    const v8, 0x3ed70a3d    # 0.42f

    .line 512
    .line 513
    .line 514
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 515
    .line 516
    .line 517
    const/high16 v0, 0x40800000    # 4.0f

    .line 518
    .line 519
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 520
    .line 521
    .line 522
    const v10, -0x4128f5c3    # -0.42f

    .line 523
    .line 524
    .line 525
    const/high16 v5, 0x3e800000    # 0.25f

    .line 526
    .line 527
    const/4 v6, 0x0

    .line 528
    const v7, 0x3eeb851f    # 0.46f

    .line 529
    .line 530
    .line 531
    const v8, -0x41c7ae14    # -0.18f

    .line 532
    .line 533
    .line 534
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 535
    .line 536
    .line 537
    const v0, 0x3ec28f5c    # 0.38f

    .line 538
    .line 539
    .line 540
    const v2, -0x3fd66666    # -2.65f

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 544
    .line 545
    .line 546
    const v9, 0x3fd851ec    # 1.69f

    .line 547
    .line 548
    .line 549
    const v10, -0x40851eb8    # -0.98f

    .line 550
    .line 551
    .line 552
    const v5, 0x3f1c28f6    # 0.61f

    .line 553
    .line 554
    .line 555
    const/high16 v6, -0x41800000    # -0.25f

    .line 556
    .line 557
    const v7, 0x3f95c28f    # 1.17f

    .line 558
    .line 559
    .line 560
    const v8, -0x40e8f5c3    # -0.59f

    .line 561
    .line 562
    .line 563
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 564
    .line 565
    .line 566
    const v0, 0x401f5c29    # 2.49f

    .line 567
    .line 568
    .line 569
    const/high16 v2, 0x3f800000    # 1.0f

    .line 570
    .line 571
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 572
    .line 573
    .line 574
    const v9, 0x3e3851ec    # 0.18f

    .line 575
    .line 576
    .line 577
    const v10, 0x3cf5c28f    # 0.03f

    .line 578
    .line 579
    .line 580
    const v5, 0x3d75c28f    # 0.06f

    .line 581
    .line 582
    .line 583
    const v6, 0x3ca3d70a    # 0.02f

    .line 584
    .line 585
    .line 586
    const v7, 0x3df5c28f    # 0.12f

    .line 587
    .line 588
    .line 589
    const v8, 0x3cf5c28f    # 0.03f

    .line 590
    .line 591
    .line 592
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 593
    .line 594
    .line 595
    const v9, 0x3edc28f6    # 0.43f

    .line 596
    .line 597
    .line 598
    const/high16 v10, -0x41800000    # -0.25f

    .line 599
    .line 600
    const v5, 0x3e2e147b    # 0.17f

    .line 601
    .line 602
    .line 603
    const/4 v6, 0x0

    .line 604
    const v7, 0x3eae147b    # 0.34f

    .line 605
    .line 606
    .line 607
    const v8, -0x4247ae14    # -0.09f

    .line 608
    .line 609
    .line 610
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 611
    .line 612
    .line 613
    const v0, -0x3fa28f5c    # -3.46f

    .line 614
    .line 615
    .line 616
    const/high16 v2, 0x40000000    # 2.0f

    .line 617
    .line 618
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 619
    .line 620
    .line 621
    const v9, -0x420a3d71    # -0.12f

    .line 622
    .line 623
    .line 624
    const v10, -0x40dc28f6    # -0.64f

    .line 625
    .line 626
    .line 627
    const v5, 0x3df5c28f    # 0.12f

    .line 628
    .line 629
    .line 630
    const v6, -0x419eb852    # -0.22f

    .line 631
    .line 632
    .line 633
    const v7, 0x3d8f5c29    # 0.07f

    .line 634
    .line 635
    .line 636
    const v8, -0x41051eb8    # -0.49f

    .line 637
    .line 638
    .line 639
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 640
    .line 641
    .line 642
    const v0, -0x3ff8f5c3    # -2.11f

    .line 643
    .line 644
    .line 645
    const v2, -0x402ccccd    # -1.65f

    .line 646
    .line 647
    .line 648
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 652
    .line 653
    .line 654
    const v0, 0x418b999a    # 17.45f

    .line 655
    .line 656
    .line 657
    const v2, 0x413451ec    # 11.27f

    .line 658
    .line 659
    .line 660
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 661
    .line 662
    .line 663
    const v9, 0x3d4ccccd    # 0.05f

    .line 664
    .line 665
    .line 666
    const v10, 0x3f3ae148    # 0.73f

    .line 667
    .line 668
    .line 669
    const v5, 0x3d23d70a    # 0.04f

    .line 670
    .line 671
    .line 672
    const v6, 0x3e9eb852    # 0.31f

    .line 673
    .line 674
    .line 675
    const v7, 0x3d4ccccd    # 0.05f

    .line 676
    .line 677
    .line 678
    const v8, 0x3f051eb8    # 0.52f

    .line 679
    .line 680
    .line 681
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 682
    .line 683
    .line 684
    const v9, -0x42b33333    # -0.05f

    .line 685
    .line 686
    .line 687
    const/4 v5, 0x0

    .line 688
    const v6, 0x3e570a3d    # 0.21f

    .line 689
    .line 690
    .line 691
    const v7, -0x435c28f6    # -0.02f

    .line 692
    .line 693
    .line 694
    const v8, 0x3edc28f6    # 0.43f

    .line 695
    .line 696
    .line 697
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 698
    .line 699
    .line 700
    const v0, -0x41f0a3d7    # -0.14f

    .line 701
    .line 702
    .line 703
    const v2, 0x3f90a3d7    # 1.13f

    .line 704
    .line 705
    .line 706
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 707
    .line 708
    .line 709
    const v0, 0x3f63d70a    # 0.89f

    .line 710
    .line 711
    .line 712
    const v2, 0x3f333333    # 0.7f

    .line 713
    .line 714
    .line 715
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 716
    .line 717
    .line 718
    const v0, 0x3f570a3d    # 0.84f

    .line 719
    .line 720
    .line 721
    const v2, 0x3f8a3d71    # 1.08f

    .line 722
    .line 723
    .line 724
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 725
    .line 726
    .line 727
    const v0, 0x3f9ae148    # 1.21f

    .line 728
    .line 729
    .line 730
    const v2, -0x40cccccd    # -0.7f

    .line 731
    .line 732
    .line 733
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 734
    .line 735
    .line 736
    const v0, -0x40fd70a4    # -0.51f

    .line 737
    .line 738
    .line 739
    const v2, -0x405d70a4    # -1.27f

    .line 740
    .line 741
    .line 742
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 743
    .line 744
    .line 745
    const v0, -0x407ae148    # -1.04f

    .line 746
    .line 747
    .line 748
    const v2, -0x4128f5c3    # -0.42f

    .line 749
    .line 750
    .line 751
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 752
    .line 753
    .line 754
    const v0, 0x3f2e147b    # 0.68f

    .line 755
    .line 756
    .line 757
    const v2, -0x4099999a    # -0.9f

    .line 758
    .line 759
    .line 760
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 761
    .line 762
    .line 763
    const/high16 v9, -0x40600000    # -1.25f

    .line 764
    .line 765
    const v5, -0x4123d70a    # -0.43f

    .line 766
    .line 767
    .line 768
    const v6, 0x3ea3d70a    # 0.32f

    .line 769
    .line 770
    .line 771
    const v7, -0x40a8f5c3    # -0.84f

    .line 772
    .line 773
    .line 774
    const v8, 0x3f0f5c29    # 0.56f

    .line 775
    .line 776
    .line 777
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 778
    .line 779
    .line 780
    const v0, 0x3edc28f6    # 0.43f

    .line 781
    .line 782
    .line 783
    const v2, -0x407851ec    # -1.06f

    .line 784
    .line 785
    .line 786
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 787
    .line 788
    .line 789
    const v0, -0x41dc28f6    # -0.16f

    .line 790
    .line 791
    .line 792
    const v2, 0x3f90a3d7    # 1.13f

    .line 793
    .line 794
    .line 795
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 796
    .line 797
    .line 798
    const v0, -0x41b33333    # -0.2f

    .line 799
    .line 800
    .line 801
    const v2, 0x3faccccd    # 1.35f

    .line 802
    .line 803
    .line 804
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 805
    .line 806
    .line 807
    const v0, -0x404ccccd    # -1.4f

    .line 808
    .line 809
    .line 810
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 811
    .line 812
    .line 813
    const v0, -0x41bd70a4    # -0.19f

    .line 814
    .line 815
    .line 816
    const v2, -0x40533333    # -1.35f

    .line 817
    .line 818
    .line 819
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 820
    .line 821
    .line 822
    const v0, -0x41dc28f6    # -0.16f

    .line 823
    .line 824
    .line 825
    const v2, -0x406f5c29    # -1.13f

    .line 826
    .line 827
    .line 828
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 829
    .line 830
    .line 831
    const v0, -0x407851ec    # -1.06f

    .line 832
    .line 833
    .line 834
    const v2, -0x4123d70a    # -0.43f

    .line 835
    .line 836
    .line 837
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 838
    .line 839
    .line 840
    const v9, -0x40628f5c    # -1.23f

    .line 841
    .line 842
    .line 843
    const v10, -0x40ca3d71    # -0.71f

    .line 844
    .line 845
    .line 846
    const v6, -0x41c7ae14    # -0.18f

    .line 847
    .line 848
    .line 849
    const v7, -0x40ab851f    # -0.83f

    .line 850
    .line 851
    .line 852
    const v8, -0x412e147b    # -0.41f

    .line 853
    .line 854
    .line 855
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 856
    .line 857
    .line 858
    const v0, -0x40970a3d    # -0.91f

    .line 859
    .line 860
    .line 861
    const v2, -0x40cccccd    # -0.7f

    .line 862
    .line 863
    .line 864
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 865
    .line 866
    .line 867
    const v0, 0x3edc28f6    # 0.43f

    .line 868
    .line 869
    .line 870
    const v2, -0x407851ec    # -1.06f

    .line 871
    .line 872
    .line 873
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 874
    .line 875
    .line 876
    const v0, 0x3f028f5c    # 0.51f

    .line 877
    .line 878
    .line 879
    const v2, -0x405d70a4    # -1.27f

    .line 880
    .line 881
    .line 882
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 883
    .line 884
    .line 885
    const v0, -0x40651eb8    # -1.21f

    .line 886
    .line 887
    .line 888
    const v2, -0x40cccccd    # -0.7f

    .line 889
    .line 890
    .line 891
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 892
    .line 893
    .line 894
    const v0, -0x40a8f5c3    # -0.84f

    .line 895
    .line 896
    .line 897
    const v2, 0x3f8a3d71    # 1.08f

    .line 898
    .line 899
    .line 900
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 901
    .line 902
    .line 903
    const v0, 0x3f63d70a    # 0.89f

    .line 904
    .line 905
    .line 906
    const v2, -0x40cccccd    # -0.7f

    .line 907
    .line 908
    .line 909
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 910
    .line 911
    .line 912
    const v0, -0x41f0a3d7    # -0.14f

    .line 913
    .line 914
    .line 915
    const v2, -0x406f5c29    # -1.13f

    .line 916
    .line 917
    .line 918
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 919
    .line 920
    .line 921
    const v9, -0x42b33333    # -0.05f

    .line 922
    .line 923
    .line 924
    const v10, -0x40c28f5c    # -0.74f

    .line 925
    .line 926
    .line 927
    const v5, -0x430a3d71    # -0.03f

    .line 928
    .line 929
    .line 930
    const v6, -0x416147ae    # -0.31f

    .line 931
    .line 932
    .line 933
    const v7, -0x42b33333    # -0.05f

    .line 934
    .line 935
    .line 936
    const v8, -0x40f5c28f    # -0.54f

    .line 937
    .line 938
    .line 939
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 940
    .line 941
    .line 942
    const v0, 0x3d4ccccd    # 0.05f

    .line 943
    .line 944
    .line 945
    const v2, -0x40c51eb8    # -0.73f

    .line 946
    .line 947
    .line 948
    const v5, -0x4123d70a    # -0.43f

    .line 949
    .line 950
    .line 951
    const v6, 0x3ca3d70a    # 0.02f

    .line 952
    .line 953
    .line 954
    invoke-virtual {v4, v6, v5, v0, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 955
    .line 956
    .line 957
    const v0, 0x3e0f5c29    # 0.14f

    .line 958
    .line 959
    .line 960
    const v2, -0x406f5c29    # -1.13f

    .line 961
    .line 962
    .line 963
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 964
    .line 965
    .line 966
    const v0, -0x409c28f6    # -0.89f

    .line 967
    .line 968
    .line 969
    const v2, -0x40cccccd    # -0.7f

    .line 970
    .line 971
    .line 972
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 973
    .line 974
    .line 975
    const v0, -0x4075c28f    # -1.08f

    .line 976
    .line 977
    .line 978
    const v2, -0x40a8f5c3    # -0.84f

    .line 979
    .line 980
    .line 981
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 982
    .line 983
    .line 984
    const v0, -0x40651eb8    # -1.21f

    .line 985
    .line 986
    .line 987
    const v2, 0x3f333333    # 0.7f

    .line 988
    .line 989
    .line 990
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 991
    .line 992
    .line 993
    const v0, 0x3fa28f5c    # 1.27f

    .line 994
    .line 995
    .line 996
    const v2, 0x3f028f5c    # 0.51f

    .line 997
    .line 998
    .line 999
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1000
    .line 1001
    .line 1002
    const v0, 0x3f851eb8    # 1.04f

    .line 1003
    .line 1004
    .line 1005
    const v2, 0x3ed70a3d    # 0.42f

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1009
    .line 1010
    .line 1011
    const v0, -0x40d1eb85    # -0.68f

    .line 1012
    .line 1013
    .line 1014
    const v2, 0x3f666666    # 0.9f

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1018
    .line 1019
    .line 1020
    const/high16 v9, 0x3fa00000    # 1.25f

    .line 1021
    .line 1022
    const v10, -0x40c51eb8    # -0.73f

    .line 1023
    .line 1024
    .line 1025
    const v5, 0x3edc28f6    # 0.43f

    .line 1026
    .line 1027
    .line 1028
    const v6, -0x415c28f6    # -0.32f

    .line 1029
    .line 1030
    .line 1031
    const v7, 0x3f570a3d    # 0.84f

    .line 1032
    .line 1033
    .line 1034
    const v8, -0x40f0a3d7    # -0.56f

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 1038
    .line 1039
    .line 1040
    const v0, 0x3f87ae14    # 1.06f

    .line 1041
    .line 1042
    .line 1043
    const v2, -0x4123d70a    # -0.43f

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1047
    .line 1048
    .line 1049
    const v0, 0x3e23d70a    # 0.16f

    .line 1050
    .line 1051
    .line 1052
    const v2, -0x406f5c29    # -1.13f

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1056
    .line 1057
    .line 1058
    const v0, 0x3e4ccccd    # 0.2f

    .line 1059
    .line 1060
    .line 1061
    const v2, -0x40533333    # -1.35f

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1065
    .line 1066
    .line 1067
    const v0, 0x3fb1eb85    # 1.39f

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->horizontalLineToRelative(F)V

    .line 1071
    .line 1072
    .line 1073
    const v0, 0x3e428f5c    # 0.19f

    .line 1074
    .line 1075
    .line 1076
    const v2, 0x3faccccd    # 1.35f

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1080
    .line 1081
    .line 1082
    const v0, 0x3e23d70a    # 0.16f

    .line 1083
    .line 1084
    .line 1085
    const v2, 0x3f90a3d7    # 1.13f

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1089
    .line 1090
    .line 1091
    const v0, 0x3f87ae14    # 1.06f

    .line 1092
    .line 1093
    .line 1094
    const v2, 0x3edc28f6    # 0.43f

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1098
    .line 1099
    .line 1100
    const v9, 0x3f9d70a4    # 1.23f

    .line 1101
    .line 1102
    .line 1103
    const v10, 0x3f35c28f    # 0.71f

    .line 1104
    .line 1105
    .line 1106
    const v6, 0x3e3851ec    # 0.18f

    .line 1107
    .line 1108
    .line 1109
    const v7, 0x3f547ae1    # 0.83f

    .line 1110
    .line 1111
    .line 1112
    const v8, 0x3ed1eb85    # 0.41f

    .line 1113
    .line 1114
    .line 1115
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 1116
    .line 1117
    .line 1118
    const v0, 0x3f68f5c3    # 0.91f

    .line 1119
    .line 1120
    .line 1121
    const v2, 0x3f333333    # 0.7f

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1125
    .line 1126
    .line 1127
    const v0, 0x3f87ae14    # 1.06f

    .line 1128
    .line 1129
    .line 1130
    const v2, -0x4123d70a    # -0.43f

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1134
    .line 1135
    .line 1136
    const v0, 0x3fa28f5c    # 1.27f

    .line 1137
    .line 1138
    .line 1139
    const v2, -0x40fd70a4    # -0.51f

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1143
    .line 1144
    .line 1145
    const v0, 0x3f9ae148    # 1.21f

    .line 1146
    .line 1147
    .line 1148
    const v2, 0x3f333333    # 0.7f

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1152
    .line 1153
    .line 1154
    const v0, -0x40770a3d    # -1.07f

    .line 1155
    .line 1156
    .line 1157
    const v2, 0x3f59999a    # 0.85f

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v4, v0, v2}, Lokhttp3/Headers$Builder;->lineToRelative(FF)V

    .line 1161
    .line 1162
    .line 1163
    const v0, -0x409c28f6    # -0.89f

    .line 1164
    .line 1165
    .line 1166
    const v2, 0x3e0f5c29    # 0.14f

    .line 1167
    .line 1168
    .line 1169
    const v5, 0x3f90a3d7    # 1.13f

    .line 1170
    .line 1171
    .line 1172
    const v6, 0x3f333333    # 0.7f

    .line 1173
    .line 1174
    .line 1175
    invoke-static {v4, v0, v6, v2, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Lokhttp3/Headers$Builder;FFFF)V

    .line 1176
    .line 1177
    .line 1178
    const/high16 v0, 0x41000000    # 8.0f

    .line 1179
    .line 1180
    const/high16 v2, 0x41400000    # 12.0f

    .line 1181
    .line 1182
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1183
    .line 1184
    .line 1185
    const/high16 v9, -0x3f800000    # -4.0f

    .line 1186
    .line 1187
    const/high16 v10, 0x40800000    # 4.0f

    .line 1188
    .line 1189
    const v5, -0x3ff28f5c    # -2.21f

    .line 1190
    .line 1191
    .line 1192
    const/4 v6, 0x0

    .line 1193
    const/high16 v7, -0x3f800000    # -4.0f

    .line 1194
    .line 1195
    const v8, 0x3fe51eb8    # 1.79f

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 1199
    .line 1200
    .line 1201
    const v0, 0x3fe51eb8    # 1.79f

    .line 1202
    .line 1203
    .line 1204
    const/high16 v2, 0x40800000    # 4.0f

    .line 1205
    .line 1206
    invoke-virtual {v4, v0, v2, v2, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 1207
    .line 1208
    .line 1209
    const v0, -0x401ae148    # -1.79f

    .line 1210
    .line 1211
    .line 1212
    const/high16 v2, -0x3f800000    # -4.0f

    .line 1213
    .line 1214
    const/high16 v5, 0x40800000    # 4.0f

    .line 1215
    .line 1216
    invoke-virtual {v4, v5, v0, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v4, v0, v2, v2, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1223
    .line 1224
    .line 1225
    const/high16 v0, 0x41600000    # 14.0f

    .line 1226
    .line 1227
    const/high16 v2, 0x41400000    # 12.0f

    .line 1228
    .line 1229
    invoke-virtual {v4, v2, v0}, Lokhttp3/Headers$Builder;->moveTo(FF)V

    .line 1230
    .line 1231
    .line 1232
    const/high16 v9, -0x40000000    # -2.0f

    .line 1233
    .line 1234
    const/high16 v10, -0x40000000    # -2.0f

    .line 1235
    .line 1236
    const v5, -0x40733333    # -1.1f

    .line 1237
    .line 1238
    .line 1239
    const/high16 v7, -0x40000000    # -2.0f

    .line 1240
    .line 1241
    const v8, -0x4099999a    # -0.9f

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual/range {v4 .. v10}, Lokhttp3/Headers$Builder;->curveToRelative(FFFFFF)V

    .line 1245
    .line 1246
    .line 1247
    const v0, 0x3f666666    # 0.9f

    .line 1248
    .line 1249
    .line 1250
    const/high16 v2, -0x40000000    # -2.0f

    .line 1251
    .line 1252
    const/high16 v5, 0x40000000    # 2.0f

    .line 1253
    .line 1254
    invoke-virtual {v4, v0, v2, v5, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 1255
    .line 1256
    .line 1257
    const/high16 v2, 0x40000000    # 2.0f

    .line 1258
    .line 1259
    invoke-virtual {v4, v2, v0, v2, v2}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 1260
    .line 1261
    .line 1262
    const v0, -0x4099999a    # -0.9f

    .line 1263
    .line 1264
    .line 1265
    const/high16 v2, -0x40000000    # -2.0f

    .line 1266
    .line 1267
    invoke-virtual {v4, v0, v5, v2, v5}, Lokhttp3/Headers$Builder;->reflectiveCurveToRelative(FFFF)V

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->close()V

    .line 1271
    .line 1272
    .line 1273
    iget-object v2, v4, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 1274
    .line 1275
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1276
    .line 1277
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1278
    .line 1279
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1280
    .line 1281
    const/4 v7, 0x2

    .line 1282
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1283
    .line 1284
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    sput-object v0, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->_settings:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1292
    .line 1293
    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static isCompletePartAvailable(Lcom/fsck/k9/mail/Part;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Stack;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 20
    .line 21
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1
    instance-of v1, p0, Lcom/fsck/k9/mail/Multipart;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    check-cast p0, Lcom/fsck/k9/mail/Multipart;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 p0, 0x1

    .line 62
    return p0
.end method

.method public static isDebugEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static isErrorEnabled()Z
    .locals 2

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static isFlashAvailable$default(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;)Z
    .locals 5

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 7
    .line 8
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-class v1, Landroidx/camera/camera2/compat/quirk/FlashAvailabilityBufferUnderflowQuirk;

    .line 24
    .line 25
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, ", API Level: "

    .line 34
    .line 35
    const-string v3, ", Model: "

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "Device is known to throw an exception while checking flash availability. Flash is not available. [Manufacturer: "

    .line 48
    .line 49
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "]."

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v4, "Exception thrown while checking for flash availability on device not known to throw exceptions during this check. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: "

    .line 95
    .line 96
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, "]. Flash is not available."

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 133
    .line 134
    :goto_1
    if-nez p0, :cond_2

    .line 135
    .line 136
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    const-string v1, "Characteristics did not contain key FLASH_INFO_AVAILABLE. Flash is not available."

    .line 143
    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_2
    if-eqz p0, :cond_3

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    goto :goto_2

    .line 154
    :cond_3
    const/4 p0, 0x0

    .line 155
    :goto_2
    return p0
.end method

.method public static isInfoEnabled()Z
    .locals 2

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static isLogLevelEnabled(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    sget v0, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->sMinLogLevel:I

    .line 2
    .line 3
    if-le v0, p1, :cond_1

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static isWarnEnabled()Z
    .locals 2

    .line 1
    const-string v0, "CXCP"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static final modulate-DxMtmZc(FJ)J
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v0, p0, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    mul-float/2addr v0, p0

    .line 19
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0

    .line 24
    :cond_1
    :goto_0
    return-wide p1
.end method

.method public static playTogether(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    if-ge v4, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    check-cast v5, Landroid/animation/Animator;

    .line 16
    .line 17
    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    add-long/2addr v8, v6

    .line 26
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    filled-new-array {v3, v3}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/core/os/BuildCompat$Api30Impl;->setDecorFitsSystemWindows$1(Landroid/view/Window;Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v1, 0x1e

    .line 12
    .line 13
    if-lt v0, v1, :cond_1

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/core/os/BuildCompat$Api30Impl;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    and-int/lit16 p1, v0, -0x701

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    or-int/lit16 p1, v0, 0x700

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static final traceForGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :goto_0
    if-ltz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hasObjectKey(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 23
    .line 24
    invoke-virtual {p0, v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 30
    .line 31
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupKey(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 38
    .line 39
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->sourceInformationOf(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, v4, v3, p1, p2}, Lorg/minidns/dnsqueryresult/DnsQueryResult;->processEdge(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    if-ltz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    move-object v6, v2

    .line 57
    move-object v2, p1

    .line 58
    move p1, v1

    .line 59
    move v1, p2

    .line 60
    move-object p2, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move p1, v1

    .line 63
    move-object p2, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p0, v0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Ljava/util/ArrayList;

    .line 68
    .line 69
    return-object p0
.end method

.method public static truncateTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x17

    .line 12
    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    return-object p0
.end method

.method public static final upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalStore$3;)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, v9, Lcom/fsck/k9/mailstore/LocalStore$3;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    .line 9
    .line 10
    iget-object v10, v0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 13
    .line 14
    .line 15
    move-result v11

    .line 16
    const/16 v2, 0x3e

    .line 17
    .line 18
    const-string v3, "CREATE INDEX folder_server_id ON folders (server_id)"

    .line 19
    .line 20
    if-ge v11, v2, :cond_0

    .line 21
    .line 22
    const-string v2, "UPDATE folders SET server_id = name"

    .line 23
    .line 24
    const-string v4, "DROP INDEX IF EXISTS folder_name"

    .line 25
    .line 26
    const-string v5, "ALTER TABLE folders ADD server_id TEXT"

    .line 27
    .line 28
    invoke-static {v1, v5, v2, v4, v3}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/16 v2, 0x40

    .line 32
    .line 33
    const-string v4, "CREATE TRIGGER delete_folder_extra_values BEFORE DELETE ON folders BEGIN DELETE FROM folder_extra_values WHERE old.id = folder_id; END;"

    .line 34
    .line 35
    if-ge v11, v2, :cond_1

    .line 36
    .line 37
    const-string v2, "CREATE TABLE account_extra_values (name TEXT NOT NULL PRIMARY KEY, value_text TEXT, value_integer INTEGER )"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "CREATE TABLE folder_extra_values (folder_id INTEGER NOT NULL, name TEXT NOT NULL, value_text TEXT, value_integer INTEGER, PRIMARY KEY (folder_id, name))"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    const/16 v2, 0x41

    .line 51
    .line 52
    const-string v12, "pop3"

    .line 53
    .line 54
    if-ge v11, v2, :cond_3

    .line 55
    .line 56
    const-string v2, "ALTER TABLE folders ADD local_only INTEGER"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v2, v2, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    const-string v2, "UPDATE folders SET local_only = CASE server_id WHEN \'INBOX\' THEN 0 ELSE 1 END"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v2, "UPDATE folders SET local_only = CASE server_id WHEN \'K9MAIL_INTERNAL_OUTBOX\' THEN 1 ELSE 0 END"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    const/16 v2, 0x42

    .line 85
    .line 86
    if-ge v11, v2, :cond_4

    .line 87
    .line 88
    const-string v2, "ALTER TABLE messages ADD encryption_type TEXT"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v2, "UPDATE messages SET encryption_type = \'openpgp\' WHERE preview_type = \'encrypted\'"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    const/16 v2, 0x43

    .line 99
    .line 100
    const-string v13, "sent"

    .line 101
    .line 102
    const-string v14, "drafts"

    .line 103
    .line 104
    const-string v15, "trash"

    .line 105
    .line 106
    if-ge v11, v2, :cond_a

    .line 107
    .line 108
    const-string v2, "ALTER TABLE folders ADD type TEXT DEFAULT \"regular\""

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLegacyInboxFolder()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const-string v5, "UPDATE folders SET type = ? WHERE server_id = ?"

    .line 118
    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    const-string v6, "inbox"

    .line 122
    .line 123
    filled-new-array {v6, v2}, [Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    const-string v2, "K9MAIL_INTERNAL_OUTBOX"

    .line 131
    .line 132
    const-string v6, "outbox"

    .line 133
    .line 134
    filled-new-array {v6, v2}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedTrashFolder()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    filled-new-array {v15, v2}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedDraftsFolder()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    filled-new-array {v14, v2}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedSpamFolder()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-eqz v2, :cond_8

    .line 172
    .line 173
    const-string v6, "spam"

    .line 174
    .line 175
    filled-new-array {v6, v2}, [Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedSentFolder()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-eqz v2, :cond_9

    .line 187
    .line 188
    filled-new-array {v13, v2}, [Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_9
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedArchiveFolder()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_a

    .line 200
    .line 201
    const-string v6, "archive"

    .line 202
    .line 203
    filled-new-array {v6, v2}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_a
    const/16 v2, 0x44

    .line 211
    .line 212
    if-ge v11, v2, :cond_b

    .line 213
    .line 214
    const-string v2, "CREATE TABLE outbox_state (message_id INTEGER PRIMARY KEY NOT NULL REFERENCES messages(id) ON DELETE CASCADE,send_state TEXT,number_of_send_attempts INTEGER DEFAULT 0,error_timestamp INTEGER DEFAULT 0,error TEXT)"

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string v2, "INSERT INTO outbox_state (message_id, send_state)\n  SELECT messages.id, \'ready\' FROM folders\n    JOIN messages ON (folders.id = messages.folder_id)\n    WHERE folders.server_id = \'K9MAIL_INTERNAL_OUTBOX\'"

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_b
    const/16 v2, 0x45

    .line 225
    .line 226
    const/4 v5, 0x0

    .line 227
    const/4 v7, 0x0

    .line 228
    if-ge v11, v2, :cond_c

    .line 229
    .line 230
    new-instance v2, Lokhttp3/Headers$Builder;

    .line 231
    .line 232
    const/16 v8, 0x8

    .line 233
    .line 234
    invoke-direct {v2, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 235
    .line 236
    .line 237
    new-instance v8, Lcom/squareup/moshi/Moshi;

    .line 238
    .line 239
    invoke-direct {v8, v2}, Lcom/squareup/moshi/Moshi;-><init>(Lokhttp3/Headers$Builder;)V

    .line 240
    .line 241
    .line 242
    const-class v2, Lcom/fsck/k9/storage/migrations/LegacyPendingSetFlag;

    .line 243
    .line 244
    invoke-virtual {v8, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    new-instance v16, Ljava/util/LinkedHashMap;

    .line 249
    .line 250
    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v6, "SELECT id, data FROM pending_commands WHERE command = \'set_flag\'"

    .line 254
    .line 255
    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 260
    .line 261
    .line 262
    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    if-nez v18, :cond_e

    .line 264
    .line 265
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    .line 266
    .line 267
    .line 268
    const-class v2, Lcom/fsck/k9/storage/migrations/LegacyPendingDelete;

    .line 269
    .line 270
    invoke-virtual {v8, v2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 271
    .line 272
    .line 273
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-nez v6, :cond_d

    .line 286
    .line 287
    :cond_c
    const/4 v8, 0x1

    .line 288
    goto :goto_2

    .line 289
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Ljava/util/Map$Entry;

    .line 294
    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    check-cast v1, Ljava/lang/Number;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 302
    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :cond_e
    :try_start_1
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 316
    .line 317
    .line 318
    const/4 v8, 0x1

    .line 319
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v2, v0}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-nez v0, :cond_f

    .line 328
    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 330
    .line 331
    const-string v1, "Can\'t deserialize pending command"

    .line 332
    .line 333
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    move-object v1, v0

    .line 339
    goto :goto_1

    .line 340
    :cond_f
    new-instance v0, Ljava/lang/ClassCastException;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 343
    .line 344
    .line 345
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    :catchall_1
    move-exception v0

    .line 348
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :goto_2
    const/16 v2, 0x46

    .line 353
    .line 354
    if-ge v11, v2, :cond_10

    .line 355
    .line 356
    const-string v2, "INSERT INTO folders \nSELECT \n    id,\n    name,\n    last_updated, \n    unread_count,\n    visible_limit,\n    status,\n    flagged_count,\n    integrate,\n    top_group,\n    poll_class,\n    push_class,\n    display_class,\n    notify_class,\n    more_messages,\n    server_id,\n    local_only,\n    type\nFROM folders_old "

    .line 357
    .line 358
    const-string v6, "DROP TABLE folders_old"

    .line 359
    .line 360
    const-string v5, "ALTER TABLE folders RENAME TO folders_old"

    .line 361
    .line 362
    const-string v8, "CREATE TABLE folders (id INTEGER PRIMARY KEY,name TEXT, last_updated INTEGER, unread_count INTEGER, visible_limit INTEGER, status TEXT, flagged_count INTEGER default 0, integrate INTEGER, top_group INTEGER, poll_class TEXT, push_class TEXT, display_class TEXT, notify_class TEXT default \'INHERITED\', more_messages TEXT default \"unknown\", server_id TEXT, local_only INTEGER, type TEXT DEFAULT \"regular\")"

    .line 363
    .line 364
    invoke-static {v1, v5, v8, v2, v6}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    const-string v2, "DROP TRIGGER IF EXISTS delete_folder"

    .line 368
    .line 369
    const-string v5, "CREATE TRIGGER delete_folder BEFORE DELETE ON folders BEGIN DELETE FROM messages WHERE old.id = folder_id; END;"

    .line 370
    .line 371
    const-string v6, "DROP INDEX IF EXISTS folder_server_id"

    .line 372
    .line 373
    invoke-static {v1, v6, v3, v2, v5}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string v2, "DROP TRIGGER IF EXISTS delete_folder_extra_values"

    .line 377
    .line 378
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :cond_10
    const/16 v2, 0x47

    .line 385
    .line 386
    if-ge v11, v2, :cond_11

    .line 387
    .line 388
    const-string v2, "UPDATE folders SET display_class = \'NO_CLASS\' WHERE display_class NOT IN (\'NO_CLASS\', \'INHERITED\', \'FIRST_CLASS\', \'SECOND_CLASS\')"

    .line 389
    .line 390
    const-string v3, "UPDATE folders SET notify_class = \'NO_CLASS\' WHERE notify_class NOT IN (\'NO_CLASS\', \'INHERITED\', \'FIRST_CLASS\', \'SECOND_CLASS\')"

    .line 391
    .line 392
    const-string v4, "UPDATE folders SET poll_class = \'NO_CLASS\' WHERE poll_class NOT IN (\'NO_CLASS\', \'INHERITED\', \'FIRST_CLASS\', \'SECOND_CLASS\')"

    .line 393
    .line 394
    const-string v5, "UPDATE folders SET push_class = \'NO_CLASS\' WHERE push_class NOT IN (\'NO_CLASS\', \'INHERITED\', \'FIRST_CLASS\', \'SECOND_CLASS\')"

    .line 395
    .line 396
    invoke-static {v1, v4, v5, v2, v3}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :cond_11
    const/16 v2, 0x48

    .line 400
    .line 401
    if-ge v11, v2, :cond_12

    .line 402
    .line 403
    const-string v2, "DROP INDEX IF EXISTS message_parts_root"

    .line 404
    .line 405
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    const-string v2, "CREATE INDEX IF NOT EXISTS message_parts_root ON message_parts (root)"

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :cond_12
    const/16 v2, 0x49

    .line 414
    .line 415
    if-ge v11, v2, :cond_14

    .line 416
    .line 417
    new-instance v2, Lcom/bumptech/glide/GlideExperiments;

    .line 418
    .line 419
    invoke-direct {v2, v1}, Lcom/bumptech/glide/GlideExperiments;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 420
    .line 421
    .line 422
    const-string v3, "SELECT id, command, data FROM pending_commands WHERE command != \'empty_trash\'"

    .line 423
    .line 424
    invoke-virtual {v1, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    new-instance v4, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 432
    .line 433
    const/16 v5, 0x13

    .line 434
    .line 435
    invoke-direct {v4, v5, v3, v2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-static {v3, v4}, Lorg/slf4j/helpers/Util;->map(Landroid/database/Cursor;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 443
    .line 444
    .line 445
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 446
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    .line 447
    .line 448
    .line 449
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-eqz v3, :cond_14

    .line 462
    .line 463
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    check-cast v3, Ljava/util/Map$Entry;

    .line 468
    .line 469
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    check-cast v4, Ljava/lang/Number;

    .line 474
    .line 475
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 476
    .line 477
    .line 478
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    check-cast v3, Lcom/fsck/k9/storage/migrations/LegacyPendingCommand;

    .line 483
    .line 484
    instance-of v3, v3, Lcom/fsck/k9/storage/migrations/LegacyPendingDelete;

    .line 485
    .line 486
    if-nez v3, :cond_13

    .line 487
    .line 488
    goto :goto_3

    .line 489
    :cond_13
    throw v7

    .line 490
    :catchall_2
    move-exception v0

    .line 491
    move-object v1, v0

    .line 492
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 493
    :catchall_3
    move-exception v0

    .line 494
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 495
    .line 496
    .line 497
    throw v0

    .line 498
    :cond_14
    const/16 v2, 0x4a

    .line 499
    .line 500
    if-ge v11, v2, :cond_17

    .line 501
    .line 502
    new-instance v2, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 503
    .line 504
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 505
    .line 506
    .line 507
    invoke-direct {v2, v1, v10}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDeletePolicy()Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    sget-object v4, Lnet/thunderbird/core/android/account/DeletePolicy;->ON_DELETE:Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 515
    .line 516
    if-eq v3, v4, :cond_15

    .line 517
    .line 518
    goto :goto_6

    .line 519
    :cond_15
    const-string v3, "id"

    .line 520
    .line 521
    filled-new-array {v3}, [Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    move-object v4, v7

    .line 526
    const/4 v7, 0x0

    .line 527
    const/4 v8, 0x0

    .line 528
    move-object v5, v2

    .line 529
    const-string v2, "messages"

    .line 530
    .line 531
    move-object v6, v4

    .line 532
    const-string v4, "deleted = 1"

    .line 533
    .line 534
    move-object/from16 v18, v5

    .line 535
    .line 536
    const/4 v5, 0x0

    .line 537
    move-object/from16 v19, v6

    .line 538
    .line 539
    const/4 v6, 0x0

    .line 540
    move-object/from16 v20, v15

    .line 541
    .line 542
    move-object/from16 v22, v18

    .line 543
    .line 544
    const/4 v15, 0x0

    .line 545
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    :goto_4
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    if-eqz v3, :cond_16

    .line 554
    .line 555
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 556
    .line 557
    .line 558
    move-result-wide v3

    .line 559
    move-object/from16 v5, v22

    .line 560
    .line 561
    invoke-virtual {v5, v3, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->destroyMessage(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 562
    .line 563
    .line 564
    move-object/from16 v22, v5

    .line 565
    .line 566
    goto :goto_4

    .line 567
    :catchall_4
    move-exception v0

    .line 568
    move-object v1, v0

    .line 569
    goto :goto_5

    .line 570
    :cond_16
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 571
    .line 572
    .line 573
    goto :goto_7

    .line 574
    :goto_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 575
    :catchall_5
    move-exception v0

    .line 576
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :cond_17
    :goto_6
    move-object/from16 v20, v15

    .line 581
    .line 582
    const/4 v15, 0x0

    .line 583
    :goto_7
    const/16 v2, 0x4b

    .line 584
    .line 585
    const-class v3, Lcom/fsck/k9/Preferences;

    .line 586
    .line 587
    if-ge v11, v2, :cond_18

    .line 588
    .line 589
    new-instance v2, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 590
    .line 591
    const/16 v4, 0xe

    .line 592
    .line 593
    invoke-direct {v2, v1, v9, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalStore$3;I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getLegacyInboxFolder()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-virtual {v2, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setInboxFolderId(Ljava/lang/Long;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedDraftsFolder()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v4

    .line 611
    invoke-virtual {v2, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDraftsFolderId(Ljava/lang/Long;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedSentFolder()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    invoke-virtual {v2, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSentFolderId(Ljava/lang/Long;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedTrashFolder()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-virtual {v2, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setTrashFolderId(Ljava/lang/Long;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedArchiveFolder()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    invoke-virtual {v2, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setArchiveFolderId(Ljava/lang/Long;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedSpamFolder()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    invoke-virtual {v2, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSpamFolderId(Ljava/lang/Long;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getImportedAutoExpandFolder()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    invoke-virtual {v2, v4}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAutoExpandFolderId(Ljava/lang/Long;)V

    .line 671
    .line 672
    .line 673
    const/4 v4, 0x0

    .line 674
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedDraftsFolder(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedSentFolder(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedTrashFolder(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedArchiveFolder(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedSpamFolder(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v10, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setImportedAutoExpandFolder(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-static {v3}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 697
    .line 698
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 699
    .line 700
    invoke-virtual {v2, v5}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 701
    .line 702
    .line 703
    goto :goto_8

    .line 704
    :cond_18
    const/4 v4, 0x0

    .line 705
    :goto_8
    const/16 v2, 0x4c

    .line 706
    .line 707
    const/16 v5, 0xf

    .line 708
    .line 709
    if-ge v11, v2, :cond_1d

    .line 710
    .line 711
    new-instance v2, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 712
    .line 713
    invoke-direct {v2, v1, v9, v5}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalStore$3;I)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 720
    .line 721
    .line 722
    move-result-object v6

    .line 723
    iget-object v6, v6, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 724
    .line 725
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v6

    .line 729
    if-eqz v6, :cond_1c

    .line 730
    .line 731
    const-string v6, "Cleaning up Drafts folder"

    .line 732
    .line 733
    new-array v7, v15, [Ljava/lang/Object;

    .line 734
    .line 735
    invoke-static {v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 739
    .line 740
    .line 741
    move-result-object v6

    .line 742
    if-eqz v6, :cond_19

    .line 743
    .line 744
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 745
    .line 746
    .line 747
    move-result-wide v6

    .line 748
    goto :goto_9

    .line 749
    :cond_19
    const-string v6, "Drafts"

    .line 750
    .line 751
    invoke-virtual {v2, v6, v6, v14}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->createFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 752
    .line 753
    .line 754
    move-result-wide v6

    .line 755
    :goto_9
    invoke-virtual {v2, v6, v7, v14}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->moveMessages(JLjava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    invoke-virtual {v10, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setDraftsFolderId(Ljava/lang/Long;)V

    .line 763
    .line 764
    .line 765
    const-string v6, "Cleaning up Sent folder"

    .line 766
    .line 767
    new-array v7, v15, [Ljava/lang/Object;

    .line 768
    .line 769
    invoke-static {v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    .line 773
    .line 774
    .line 775
    move-result-object v6

    .line 776
    if-eqz v6, :cond_1a

    .line 777
    .line 778
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 779
    .line 780
    .line 781
    move-result-wide v6

    .line 782
    goto :goto_a

    .line 783
    :cond_1a
    const-string v6, "Sent"

    .line 784
    .line 785
    invoke-virtual {v2, v6, v6, v13}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->createFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 786
    .line 787
    .line 788
    move-result-wide v6

    .line 789
    :goto_a
    invoke-virtual {v2, v6, v7, v13}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->moveMessages(JLjava/lang/String;)V

    .line 790
    .line 791
    .line 792
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 793
    .line 794
    .line 795
    move-result-object v6

    .line 796
    invoke-virtual {v10, v6}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setSentFolderId(Ljava/lang/Long;)V

    .line 797
    .line 798
    .line 799
    const-string v6, "Cleaning up Trash folder"

    .line 800
    .line 801
    new-array v7, v15, [Ljava/lang/Object;

    .line 802
    .line 803
    invoke-static {v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 807
    .line 808
    .line 809
    move-result-object v6

    .line 810
    if-eqz v6, :cond_1b

    .line 811
    .line 812
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 813
    .line 814
    .line 815
    move-result-wide v6

    .line 816
    move-wide v12, v6

    .line 817
    move-object/from16 v7, v20

    .line 818
    .line 819
    goto :goto_b

    .line 820
    :cond_1b
    const-string v6, "Trash"

    .line 821
    .line 822
    move-object/from16 v7, v20

    .line 823
    .line 824
    invoke-virtual {v2, v6, v6, v7}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->createFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 825
    .line 826
    .line 827
    move-result-wide v12

    .line 828
    :goto_b
    invoke-virtual {v2, v12, v13, v7}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->moveMessages(JLjava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 832
    .line 833
    .line 834
    move-result-object v2

    .line 835
    invoke-virtual {v10, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setTrashFolderId(Ljava/lang/Long;)V

    .line 836
    .line 837
    .line 838
    :cond_1c
    invoke-static {v3}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 843
    .line 844
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 845
    .line 846
    invoke-virtual {v2, v3}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 847
    .line 848
    .line 849
    :cond_1d
    const/16 v2, 0x4e

    .line 850
    .line 851
    if-ge v11, v2, :cond_1e

    .line 852
    .line 853
    const-string v2, "UPDATE folders SET server_id = NULL WHERE local_only = 1"

    .line 854
    .line 855
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    :cond_1e
    const/16 v2, 0x4f

    .line 859
    .line 860
    if-ge v11, v2, :cond_1f

    .line 861
    .line 862
    const-string v2, "DROP TRIGGER IF EXISTS delete_message"

    .line 863
    .line 864
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    const-string v2, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM message_parts WHERE root = OLD.message_part_id; DELETE FROM messages_fulltext WHERE docid = OLD.id; DELETE FROM threads WHERE message_id = OLD.id; END"

    .line 868
    .line 869
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    :cond_1f
    const/16 v2, 0x50

    .line 873
    .line 874
    if-ge v11, v2, :cond_20

    .line 875
    .line 876
    const-string v2, "UPDATE folders SET last_updated = NULL WHERE last_updated = 0"

    .line 877
    .line 878
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    :cond_20
    const/16 v2, 0x51

    .line 882
    .line 883
    if-ge v11, v2, :cond_21

    .line 884
    .line 885
    const-string v2, "DROP INDEX IF EXISTS notifications_timestamp"

    .line 886
    .line 887
    const-string v3, "CREATE INDEX IF NOT EXISTS notifications_timestamp ON notifications(timestamp)"

    .line 888
    .line 889
    const-string v6, "DROP TABLE IF EXISTS notifications"

    .line 890
    .line 891
    const-string v7, "CREATE TABLE notifications (message_id INTEGER PRIMARY KEY NOT NULL REFERENCES messages(id) ON DELETE CASCADE,notification_id INTEGER UNIQUE,timestamp INTEGER NOT NULL)"

    .line 892
    .line 893
    invoke-static {v1, v6, v7, v2, v3}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    :cond_21
    const/16 v2, 0x52

    .line 897
    .line 898
    if-ge v11, v2, :cond_22

    .line 899
    .line 900
    const-string v2, "CREATE INDEX IF NOT EXISTS new_messages ON messages(new_message)"

    .line 901
    .line 902
    const-string v3, "CREATE TRIGGER new_message_reset AFTER UPDATE OF read ON messages FOR EACH ROW WHEN NEW.read = 1 AND NEW.new_message = 1 BEGIN UPDATE messages SET new_message = 0 WHERE ROWID = NEW.ROWID; END"

    .line 903
    .line 904
    const-string v6, "ALTER TABLE messages ADD new_message INTEGER DEFAULT 0"

    .line 905
    .line 906
    const-string v7, "DROP INDEX IF EXISTS new_messages"

    .line 907
    .line 908
    invoke-static {v1, v6, v7, v2, v3}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    const-string v2, "UPDATE messages SET new_message = 1 WHERE id in (SELECT message_id FROM notifications)"

    .line 912
    .line 913
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    :cond_22
    const/16 v2, 0x53

    .line 917
    .line 918
    const-string v3, "imap"

    .line 919
    .line 920
    if-ge v11, v2, :cond_27

    .line 921
    .line 922
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    iget-object v2, v2, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 927
    .line 928
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 929
    .line 930
    .line 931
    move-result v2

    .line 932
    if-nez v2, :cond_23

    .line 933
    .line 934
    goto/16 :goto_f

    .line 935
    .line 936
    :cond_23
    const-string v2, "SELECT folder_id, MAX(CAST(uid AS INTEGER)) FROM messages GROUP BY folder_id"

    .line 937
    .line 938
    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 946
    .line 947
    .line 948
    move-result v6

    .line 949
    new-instance v7, Ljava/util/ArrayList;

    .line 950
    .line 951
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 952
    .line 953
    .line 954
    move v8, v15

    .line 955
    :goto_c
    if-ge v8, v6, :cond_25

    .line 956
    .line 957
    invoke-interface {v2, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 958
    .line 959
    .line 960
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 961
    .line 962
    .line 963
    move-result-wide v12

    .line 964
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 965
    .line 966
    .line 967
    move-result-object v12

    .line 968
    const/4 v13, 0x1

    .line 969
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    .line 970
    .line 971
    .line 972
    move-result v14

    .line 973
    if-eqz v14, :cond_24

    .line 974
    .line 975
    move-object v14, v4

    .line 976
    goto :goto_d

    .line 977
    :cond_24
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 978
    .line 979
    .line 980
    move-result-wide v16

    .line 981
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 982
    .line 983
    .line 984
    move-result-object v14

    .line 985
    :goto_d
    new-instance v5, Lkotlin/Pair;

    .line 986
    .line 987
    invoke-direct {v5, v12, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 988
    .line 989
    .line 990
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    add-int/lit8 v8, v8, 0x1

    .line 994
    .line 995
    const/16 v5, 0xf

    .line 996
    .line 997
    goto :goto_c

    .line 998
    :cond_25
    const/4 v13, 0x1

    .line 999
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1003
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 1004
    .line 1005
    .line 1006
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    :cond_26
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v5

    .line 1018
    if-eqz v5, :cond_28

    .line 1019
    .line 1020
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v5

    .line 1024
    check-cast v5, Ljava/util/Map$Entry;

    .line 1025
    .line 1026
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v6

    .line 1030
    check-cast v6, Ljava/lang/Number;

    .line 1031
    .line 1032
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 1033
    .line 1034
    .line 1035
    move-result-wide v6

    .line 1036
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v5

    .line 1040
    check-cast v5, Ljava/lang/Long;

    .line 1041
    .line 1042
    if-eqz v5, :cond_26

    .line 1043
    .line 1044
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1045
    .line 1046
    .line 1047
    move-result-wide v17

    .line 1048
    const-wide/16 v19, 0x0

    .line 1049
    .line 1050
    cmp-long v8, v17, v19

    .line 1051
    .line 1052
    if-lez v8, :cond_26

    .line 1053
    .line 1054
    new-instance v8, Landroid/content/ContentValues;

    .line 1055
    .line 1056
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1057
    .line 1058
    .line 1059
    const-string v12, "folder_id"

    .line 1060
    .line 1061
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v6

    .line 1065
    invoke-virtual {v8, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1066
    .line 1067
    .line 1068
    const-string v6, "name"

    .line 1069
    .line 1070
    const-string v7, "imapHighestKnownUid"

    .line 1071
    .line 1072
    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    const-string/jumbo v6, "value_integer"

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v8, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1079
    .line 1080
    .line 1081
    const-string v5, "folder_extra_values"

    .line 1082
    .line 1083
    const/4 v6, 0x5

    .line 1084
    invoke-virtual {v1, v5, v4, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1085
    .line 1086
    .line 1087
    goto :goto_e

    .line 1088
    :catchall_6
    move-exception v0

    .line 1089
    move-object v1, v0

    .line 1090
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 1091
    :catchall_7
    move-exception v0

    .line 1092
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1093
    .line 1094
    .line 1095
    throw v0

    .line 1096
    :cond_27
    :goto_f
    const/4 v13, 0x1

    .line 1097
    :cond_28
    const/16 v2, 0x54

    .line 1098
    .line 1099
    const-string v5, "messages"

    .line 1100
    .line 1101
    if-ge v11, v2, :cond_2e

    .line 1102
    .line 1103
    const-string v2, "SELECT id, to_list, cc_list, bcc_list, reply_to_list, sender_list FROM messages WHERE empty = 0 AND deleted = 0"

    .line 1104
    .line 1105
    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v2

    .line 1109
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1110
    .line 1111
    .line 1112
    new-instance v6, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1113
    .line 1114
    const/16 v7, 0x16

    .line 1115
    .line 1116
    invoke-direct {v6, v7}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1117
    .line 1118
    .line 1119
    invoke-static {v2, v6}, Lorg/slf4j/helpers/Util;->map(Landroid/database/Cursor;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v6

    .line 1123
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 1127
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 1128
    .line 1129
    .line 1130
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v2

    .line 1138
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v6

    .line 1142
    if-eqz v6, :cond_2e

    .line 1143
    .line 1144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v6

    .line 1148
    check-cast v6, Ljava/util/Map$Entry;

    .line 1149
    .line 1150
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v7

    .line 1154
    check-cast v7, Ljava/lang/Number;

    .line 1155
    .line 1156
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 1157
    .line 1158
    .line 1159
    move-result-wide v7

    .line 1160
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v6

    .line 1164
    check-cast v6, Lcom/fsck/k9/storage/migrations/AddressSet;

    .line 1165
    .line 1166
    new-instance v12, Landroid/content/ContentValues;

    .line 1167
    .line 1168
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1169
    .line 1170
    .line 1171
    iget-object v14, v6, Lcom/fsck/k9/storage/migrations/AddressSet;->toList:Ljava/lang/String;

    .line 1172
    .line 1173
    if-eqz v14, :cond_29

    .line 1174
    .line 1175
    invoke-virtual {v14, v15, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v14

    .line 1179
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1180
    .line 1181
    .line 1182
    goto :goto_11

    .line 1183
    :cond_29
    move-object v14, v4

    .line 1184
    :goto_11
    const-string v4, "to_list"

    .line 1185
    .line 1186
    invoke-virtual {v12, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    iget-object v4, v6, Lcom/fsck/k9/storage/migrations/AddressSet;->ccList:Ljava/lang/String;

    .line 1190
    .line 1191
    if-eqz v4, :cond_2a

    .line 1192
    .line 1193
    invoke-virtual {v4, v15, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v4

    .line 1197
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1198
    .line 1199
    .line 1200
    goto :goto_12

    .line 1201
    :cond_2a
    const/4 v4, 0x0

    .line 1202
    :goto_12
    const-string v14, "cc_list"

    .line 1203
    .line 1204
    invoke-virtual {v12, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    iget-object v4, v6, Lcom/fsck/k9/storage/migrations/AddressSet;->bccList:Ljava/lang/String;

    .line 1208
    .line 1209
    if-eqz v4, :cond_2b

    .line 1210
    .line 1211
    invoke-virtual {v4, v15, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v4

    .line 1215
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1216
    .line 1217
    .line 1218
    goto :goto_13

    .line 1219
    :cond_2b
    const/4 v4, 0x0

    .line 1220
    :goto_13
    const-string v14, "bcc_list"

    .line 1221
    .line 1222
    invoke-virtual {v12, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    iget-object v4, v6, Lcom/fsck/k9/storage/migrations/AddressSet;->replyToList:Ljava/lang/String;

    .line 1226
    .line 1227
    if-eqz v4, :cond_2c

    .line 1228
    .line 1229
    invoke-virtual {v4, v15, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v4

    .line 1233
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1234
    .line 1235
    .line 1236
    goto :goto_14

    .line 1237
    :cond_2c
    const/4 v4, 0x0

    .line 1238
    :goto_14
    const-string v14, "reply_to_list"

    .line 1239
    .line 1240
    invoke-virtual {v12, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    iget-object v4, v6, Lcom/fsck/k9/storage/migrations/AddressSet;->senderList:Ljava/lang/String;

    .line 1244
    .line 1245
    if-eqz v4, :cond_2d

    .line 1246
    .line 1247
    invoke-virtual {v4, v15, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v4

    .line 1251
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    .line 1253
    .line 1254
    goto :goto_15

    .line 1255
    :cond_2d
    const/4 v4, 0x0

    .line 1256
    :goto_15
    const-string v6, "sender_list"

    .line 1257
    .line 1258
    invoke-virtual {v12, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v4

    .line 1265
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v4

    .line 1269
    const-string v6, "id = ?"

    .line 1270
    .line 1271
    invoke-virtual {v1, v5, v12, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1272
    .line 1273
    .line 1274
    const/4 v4, 0x0

    .line 1275
    goto/16 :goto_10

    .line 1276
    .line 1277
    :catchall_8
    move-exception v0

    .line 1278
    move-object v1, v0

    .line 1279
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 1280
    :catchall_9
    move-exception v0

    .line 1281
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1282
    .line 1283
    .line 1284
    throw v0

    .line 1285
    :cond_2e
    const/16 v2, 0x55

    .line 1286
    .line 1287
    const/16 v4, 0x17

    .line 1288
    .line 1289
    const/16 v6, 0x18

    .line 1290
    .line 1291
    const/4 v8, 0x4

    .line 1292
    const/4 v14, 0x2

    .line 1293
    const-string v7, "folders"

    .line 1294
    .line 1295
    if-ge v11, v2, :cond_36

    .line 1296
    .line 1297
    const-string v2, "ALTER TABLE folders ADD notifications_enabled INTEGER DEFAULT 0"

    .line 1298
    .line 1299
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getInboxFolderId()Ljava/lang/Long;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v2

    .line 1309
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getTrashFolderId()Ljava/lang/Long;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v18

    .line 1313
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDraftsFolderId()Ljava/lang/Long;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v20

    .line 1317
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSpamFolderId()Ljava/lang/Long;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v21

    .line 1321
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getSentFolderId()Ljava/lang/Long;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v22

    .line 1325
    const/16 v23, 0x3

    .line 1326
    .line 1327
    new-array v12, v8, [Ljava/lang/Long;

    .line 1328
    .line 1329
    aput-object v18, v12, v15

    .line 1330
    .line 1331
    aput-object v20, v12, v13

    .line 1332
    .line 1333
    aput-object v21, v12, v14

    .line 1334
    .line 1335
    aput-object v22, v12, v23

    .line 1336
    .line 1337
    invoke-static {v12}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v12

    .line 1341
    new-instance v8, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 1342
    .line 1343
    invoke-direct {v8, v14, v12}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 1344
    .line 1345
    .line 1346
    invoke-static {v8}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v8

    .line 1350
    new-instance v12, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 1351
    .line 1352
    const/16 v13, 0x9

    .line 1353
    .line 1354
    invoke-direct {v12, v13, v2}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1355
    .line 1356
    .line 1357
    new-instance v2, Lkotlin/sequences/FilteringSequence;

    .line 1358
    .line 1359
    invoke-direct {v2, v8, v15, v12}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 1360
    .line 1361
    .line 1362
    new-instance v8, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1363
    .line 1364
    invoke-direct {v8, v6}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1365
    .line 1366
    .line 1367
    new-instance v12, Lkotlin/sequences/TakeWhileSequence;

    .line 1368
    .line 1369
    invoke-direct {v12, v2, v8, v14}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 1370
    .line 1371
    .line 1372
    invoke-static {v12}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v2

    .line 1376
    new-array v8, v15, [Ljava/lang/String;

    .line 1377
    .line 1378
    invoke-interface {v2, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v2

    .line 1382
    check-cast v2, [Ljava/lang/String;

    .line 1383
    .line 1384
    array-length v8, v2

    .line 1385
    if-nez v8, :cond_2f

    .line 1386
    .line 1387
    const-string v8, "1"

    .line 1388
    .line 1389
    move-object/from16 v30, v8

    .line 1390
    .line 1391
    move-object v8, v2

    .line 1392
    move-object/from16 v2, v30

    .line 1393
    .line 1394
    goto :goto_16

    .line 1395
    :cond_2f
    new-instance v8, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1396
    .line 1397
    invoke-direct {v8, v4}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1398
    .line 1399
    .line 1400
    const/16 v29, 0x1e

    .line 1401
    .line 1402
    const-string v25, ","

    .line 1403
    .line 1404
    const/16 v26, 0x0

    .line 1405
    .line 1406
    const/16 v27, 0x0

    .line 1407
    .line 1408
    move-object/from16 v24, v2

    .line 1409
    .line 1410
    move-object/from16 v28, v8

    .line 1411
    .line 1412
    invoke-static/range {v24 .. v29}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v2

    .line 1416
    move-object/from16 v8, v24

    .line 1417
    .line 1418
    const-string v12, "id NOT IN ("

    .line 1419
    .line 1420
    const-string v13, ")"

    .line 1421
    .line 1422
    invoke-static {v12, v2, v13}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v2

    .line 1426
    :goto_16
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderNotifyNewMailMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v12

    .line 1430
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 1431
    .line 1432
    .line 1433
    move-result v12

    .line 1434
    if-eqz v12, :cond_34

    .line 1435
    .line 1436
    const/4 v13, 0x1

    .line 1437
    if-eq v12, v13, :cond_33

    .line 1438
    .line 1439
    const-string v13, "\n                "

    .line 1440
    .line 1441
    if-eq v12, v14, :cond_32

    .line 1442
    .line 1443
    move/from16 v21, v15

    .line 1444
    .line 1445
    move/from16 v15, v23

    .line 1446
    .line 1447
    if-eq v12, v15, :cond_31

    .line 1448
    .line 1449
    const/4 v15, 0x4

    .line 1450
    if-ne v12, v15, :cond_30

    .line 1451
    .line 1452
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1453
    .line 1454
    const-string v15, "\n                (\n                  notify_class IN (\'NO_CLASS\', \'FIRST_CLASS\') OR (\n                    notify_class = \'INHERITED\' AND (\n                      push_class IN (\'NO_CLASS\', \'FIRST_CLASS\') OR (\n                        push_class = \'INHERITED\' AND (\n                          poll_class IN (\'NO_CLASS\', \'FIRST_CLASS\') OR (\n                            poll_class = \'INHERITED\' AND display_class IN (\'NO_CLASS\', \'FIRST_CLASS\')\n                          )\n                        )\n                      )\n                    )\n                  )\n                ) AND "

    .line 1455
    .line 1456
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v2

    .line 1469
    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v2

    .line 1473
    goto :goto_17

    .line 1474
    :cond_30
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1475
    .line 1476
    .line 1477
    return-void

    .line 1478
    :cond_31
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1479
    .line 1480
    const-string v15, "\n                (\n                  notify_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\') OR (\n                    notify_class = \'INHERITED\' AND (\n                      push_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\') OR (\n                        push_class = \'INHERITED\' AND (\n                          poll_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\') OR (\n                            poll_class = \'INHERITED\' AND display_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\')\n                          )\n                        )\n                      )\n                    )\n                  )\n                ) AND "

    .line 1481
    .line 1482
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v2

    .line 1495
    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v2

    .line 1499
    goto :goto_17

    .line 1500
    :cond_32
    move/from16 v21, v15

    .line 1501
    .line 1502
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    const-string v15, "\n                (\n                  notify_class = \'FIRST_CLASS\' OR (\n                    notify_class = \'INHERITED\' AND (\n                      push_class = \'FIRST_CLASS\' OR (\n                        push_class = \'INHERITED\' AND (\n                          poll_class = \'FIRST_CLASS\' OR (\n                            poll_class = \'INHERITED\' AND display_class = \'FIRST_CLASS\'\n                          )\n                        )\n                      )\n                    )\n                  )\n                ) AND "

    .line 1505
    .line 1506
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v2

    .line 1519
    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v2

    .line 1523
    goto :goto_17

    .line 1524
    :cond_33
    move/from16 v21, v15

    .line 1525
    .line 1526
    :goto_17
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1527
    .line 1528
    new-instance v13, Lkotlin/Pair;

    .line 1529
    .line 1530
    const-string v15, "notifications_enabled"

    .line 1531
    .line 1532
    invoke-direct {v13, v15, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1533
    .line 1534
    .line 1535
    const/4 v12, 0x1

    .line 1536
    new-array v15, v12, [Lkotlin/Pair;

    .line 1537
    .line 1538
    aput-object v13, v15, v21

    .line 1539
    .line 1540
    invoke-static {v15}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v12

    .line 1544
    invoke-virtual {v1, v7, v12, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1545
    .line 1546
    .line 1547
    goto :goto_18

    .line 1548
    :cond_34
    move/from16 v21, v15

    .line 1549
    .line 1550
    :goto_18
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1551
    .line 1552
    const/16 v8, 0x22

    .line 1553
    .line 1554
    if-lt v2, v8, :cond_35

    .line 1555
    .line 1556
    const-string v2, "ALTER TABLE folders DROP COLUMN notify_class"

    .line 1557
    .line 1558
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    goto :goto_19

    .line 1562
    :cond_35
    new-instance v2, Lkotlin/Pair;

    .line 1563
    .line 1564
    const-string v8, "notify_class"

    .line 1565
    .line 1566
    const/4 v12, 0x0

    .line 1567
    invoke-direct {v2, v8, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1568
    .line 1569
    .line 1570
    const/4 v13, 0x1

    .line 1571
    new-array v8, v13, [Lkotlin/Pair;

    .line 1572
    .line 1573
    aput-object v2, v8, v21

    .line 1574
    .line 1575
    invoke-static {v8}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v2

    .line 1579
    invoke-virtual {v1, v7, v2, v12, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1580
    .line 1581
    .line 1582
    goto :goto_19

    .line 1583
    :cond_36
    move/from16 v21, v15

    .line 1584
    .line 1585
    :goto_19
    const/16 v2, 0x56

    .line 1586
    .line 1587
    const-string v8, ""

    .line 1588
    .line 1589
    if-ge v11, v2, :cond_3d

    .line 1590
    .line 1591
    const-string v2, "ALTER TABLE folders ADD push_enabled INTEGER DEFAULT 0"

    .line 1592
    .line 1593
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderPushMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v2

    .line 1600
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 1601
    .line 1602
    .line 1603
    move-result v2

    .line 1604
    if-eqz v2, :cond_3b

    .line 1605
    .line 1606
    const/4 v13, 0x1

    .line 1607
    if-eq v2, v13, :cond_3a

    .line 1608
    .line 1609
    if-eq v2, v14, :cond_39

    .line 1610
    .line 1611
    const/4 v15, 0x3

    .line 1612
    if-eq v2, v15, :cond_38

    .line 1613
    .line 1614
    const/4 v15, 0x4

    .line 1615
    if-ne v2, v15, :cond_37

    .line 1616
    .line 1617
    const-string v2, "push_class IN (\'NO_CLASS\', \'FIRST_CLASS\') OR (\n  push_class = \'INHERITED\' AND (\n    poll_class IN (\'NO_CLASS\', \'FIRST_CLASS\') OR (\n      poll_class = \'INHERITED\' AND display_class IN (\'NO_CLASS\', \'FIRST_CLASS\')\n    )\n  )\n)"

    .line 1618
    .line 1619
    goto :goto_1a

    .line 1620
    :cond_37
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1621
    .line 1622
    .line 1623
    return-void

    .line 1624
    :cond_38
    const-string v2, "push_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\') OR (\n  push_class = \'INHERITED\' AND (\n    poll_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\') OR (\n      poll_class = \'INHERITED\' AND display_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\')\n    )\n  )\n)"

    .line 1625
    .line 1626
    goto :goto_1a

    .line 1627
    :cond_39
    const-string v2, "push_class = \'FIRST_CLASS\' OR (\n  push_class = \'INHERITED\' AND (\n    poll_class = \'FIRST_CLASS\' OR (\n      poll_class = \'INHERITED\' AND display_class = \'FIRST_CLASS\'\n    )\n  )\n)"

    .line 1628
    .line 1629
    goto :goto_1a

    .line 1630
    :cond_3a
    move-object v2, v8

    .line 1631
    :goto_1a
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1632
    .line 1633
    new-instance v13, Lkotlin/Pair;

    .line 1634
    .line 1635
    const-string v15, "push_enabled"

    .line 1636
    .line 1637
    invoke-direct {v13, v15, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1638
    .line 1639
    .line 1640
    const/4 v12, 0x1

    .line 1641
    new-array v15, v12, [Lkotlin/Pair;

    .line 1642
    .line 1643
    aput-object v13, v15, v21

    .line 1644
    .line 1645
    invoke-static {v15}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v12

    .line 1649
    const/4 v13, 0x0

    .line 1650
    invoke-virtual {v1, v7, v12, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1651
    .line 1652
    .line 1653
    goto :goto_1b

    .line 1654
    :cond_3b
    const/4 v13, 0x0

    .line 1655
    :goto_1b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1656
    .line 1657
    const/16 v12, 0x22

    .line 1658
    .line 1659
    if-lt v2, v12, :cond_3c

    .line 1660
    .line 1661
    const-string v2, "ALTER TABLE folders DROP COLUMN push_class"

    .line 1662
    .line 1663
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1664
    .line 1665
    .line 1666
    goto :goto_1c

    .line 1667
    :cond_3c
    new-instance v2, Lkotlin/Pair;

    .line 1668
    .line 1669
    const-string v12, "push_class"

    .line 1670
    .line 1671
    invoke-direct {v2, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1672
    .line 1673
    .line 1674
    const/4 v12, 0x1

    .line 1675
    new-array v15, v12, [Lkotlin/Pair;

    .line 1676
    .line 1677
    aput-object v2, v15, v21

    .line 1678
    .line 1679
    invoke-static {v15}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v2

    .line 1683
    invoke-virtual {v1, v7, v2, v13, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1684
    .line 1685
    .line 1686
    :cond_3d
    :goto_1c
    const/16 v2, 0x57

    .line 1687
    .line 1688
    if-ge v11, v2, :cond_44

    .line 1689
    .line 1690
    const-string v2, "ALTER TABLE folders ADD sync_enabled INTEGER DEFAULT 0"

    .line 1691
    .line 1692
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderSyncMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v2

    .line 1699
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 1700
    .line 1701
    .line 1702
    move-result v2

    .line 1703
    if-eqz v2, :cond_42

    .line 1704
    .line 1705
    const/4 v13, 0x1

    .line 1706
    if-eq v2, v13, :cond_41

    .line 1707
    .line 1708
    if-eq v2, v14, :cond_40

    .line 1709
    .line 1710
    const/4 v15, 0x3

    .line 1711
    if-eq v2, v15, :cond_3f

    .line 1712
    .line 1713
    const/4 v15, 0x4

    .line 1714
    if-ne v2, v15, :cond_3e

    .line 1715
    .line 1716
    const-string v2, "poll_class IN (\'NO_CLASS\', \'FIRST_CLASS\') OR (\n  poll_class = \'INHERITED\' AND display_class IN (\'NO_CLASS\', \'FIRST_CLASS\')\n)"

    .line 1717
    .line 1718
    goto :goto_1d

    .line 1719
    :cond_3e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1720
    .line 1721
    .line 1722
    return-void

    .line 1723
    :cond_3f
    const-string v2, "poll_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\') OR (\n  poll_class = \'INHERITED\' AND display_class IN (\'FIRST_CLASS\', \'SECOND_CLASS\')\n)"

    .line 1724
    .line 1725
    goto :goto_1d

    .line 1726
    :cond_40
    const-string v2, "poll_class = \'FIRST_CLASS\' OR (\n  poll_class = \'INHERITED\' AND display_class = \'FIRST_CLASS\'\n)"

    .line 1727
    .line 1728
    goto :goto_1d

    .line 1729
    :cond_41
    move-object v2, v8

    .line 1730
    :goto_1d
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1731
    .line 1732
    new-instance v13, Lkotlin/Pair;

    .line 1733
    .line 1734
    const-string v15, "sync_enabled"

    .line 1735
    .line 1736
    invoke-direct {v13, v15, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1737
    .line 1738
    .line 1739
    const/4 v12, 0x1

    .line 1740
    new-array v15, v12, [Lkotlin/Pair;

    .line 1741
    .line 1742
    aput-object v13, v15, v21

    .line 1743
    .line 1744
    invoke-static {v15}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v12

    .line 1748
    const/4 v13, 0x0

    .line 1749
    invoke-virtual {v1, v7, v12, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1750
    .line 1751
    .line 1752
    goto :goto_1e

    .line 1753
    :cond_42
    const/4 v13, 0x0

    .line 1754
    :goto_1e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1755
    .line 1756
    const/16 v12, 0x22

    .line 1757
    .line 1758
    if-lt v2, v12, :cond_43

    .line 1759
    .line 1760
    const-string v2, "ALTER TABLE folders DROP COLUMN poll_class"

    .line 1761
    .line 1762
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1763
    .line 1764
    .line 1765
    goto :goto_1f

    .line 1766
    :cond_43
    new-instance v2, Lkotlin/Pair;

    .line 1767
    .line 1768
    const-string v12, "poll_class"

    .line 1769
    .line 1770
    invoke-direct {v2, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1771
    .line 1772
    .line 1773
    const/4 v12, 0x1

    .line 1774
    new-array v15, v12, [Lkotlin/Pair;

    .line 1775
    .line 1776
    aput-object v2, v15, v21

    .line 1777
    .line 1778
    invoke-static {v15}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 1779
    .line 1780
    .line 1781
    move-result-object v2

    .line 1782
    invoke-virtual {v1, v7, v2, v13, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1783
    .line 1784
    .line 1785
    :cond_44
    :goto_1f
    const/16 v2, 0x58

    .line 1786
    .line 1787
    if-ge v11, v2, :cond_4b

    .line 1788
    .line 1789
    const-string v2, "ALTER TABLE folders ADD visible INTEGER DEFAULT 1"

    .line 1790
    .line 1791
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1792
    .line 1793
    .line 1794
    invoke-virtual {v10}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getFolderDisplayMode()Lnet/thunderbird/core/android/account/FolderMode;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v2

    .line 1798
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 1799
    .line 1800
    .line 1801
    move-result v2

    .line 1802
    if-eqz v2, :cond_49

    .line 1803
    .line 1804
    const/4 v12, 0x1

    .line 1805
    if-eq v2, v12, :cond_48

    .line 1806
    .line 1807
    if-eq v2, v14, :cond_47

    .line 1808
    .line 1809
    const/4 v15, 0x3

    .line 1810
    if-eq v2, v15, :cond_46

    .line 1811
    .line 1812
    const/4 v15, 0x4

    .line 1813
    if-ne v2, v15, :cond_45

    .line 1814
    .line 1815
    const-string v8, "display_class = \'SECOND_CLASS\'"

    .line 1816
    .line 1817
    goto :goto_20

    .line 1818
    :cond_45
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1819
    .line 1820
    .line 1821
    return-void

    .line 1822
    :cond_46
    const-string v8, "display_class NOT IN (\'FIRST_CLASS\', \'SECOND_CLASS\')"

    .line 1823
    .line 1824
    goto :goto_20

    .line 1825
    :cond_47
    const-string v8, "display_class != \'FIRST_CLASS\'"

    .line 1826
    .line 1827
    goto :goto_20

    .line 1828
    :cond_48
    const/4 v13, 0x0

    .line 1829
    goto :goto_21

    .line 1830
    :cond_49
    :goto_20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1831
    .line 1832
    new-instance v12, Lkotlin/Pair;

    .line 1833
    .line 1834
    const-string/jumbo v13, "visible"

    .line 1835
    .line 1836
    .line 1837
    invoke-direct {v12, v13, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1838
    .line 1839
    .line 1840
    const/4 v13, 0x1

    .line 1841
    new-array v2, v13, [Lkotlin/Pair;

    .line 1842
    .line 1843
    aput-object v12, v2, v21

    .line 1844
    .line 1845
    invoke-static {v2}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v2

    .line 1849
    const/4 v13, 0x0

    .line 1850
    invoke-virtual {v1, v7, v2, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1851
    .line 1852
    .line 1853
    :goto_21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1854
    .line 1855
    const/16 v12, 0x22

    .line 1856
    .line 1857
    if-lt v2, v12, :cond_4a

    .line 1858
    .line 1859
    const-string v2, "ALTER TABLE folders DROP COLUMN display_class"

    .line 1860
    .line 1861
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1862
    .line 1863
    .line 1864
    goto :goto_22

    .line 1865
    :cond_4a
    new-instance v2, Lkotlin/Pair;

    .line 1866
    .line 1867
    const-string v8, "display_class"

    .line 1868
    .line 1869
    invoke-direct {v2, v8, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1870
    .line 1871
    .line 1872
    const/4 v12, 0x1

    .line 1873
    new-array v8, v12, [Lkotlin/Pair;

    .line 1874
    .line 1875
    aput-object v2, v8, v21

    .line 1876
    .line 1877
    invoke-static {v8}, Landroidx/room/util/SchemaInfoUtilKt;->contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;

    .line 1878
    .line 1879
    .line 1880
    move-result-object v2

    .line 1881
    invoke-virtual {v1, v7, v2, v13, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1882
    .line 1883
    .line 1884
    :cond_4b
    :goto_22
    const/16 v2, 0x5a

    .line 1885
    .line 1886
    if-ge v11, v2, :cond_55

    .line 1887
    .line 1888
    new-instance v2, Lcom/fsck/k9/storage/migrations/MigrationTo90;

    .line 1889
    .line 1890
    invoke-direct {v2, v1, v9}, Lcom/fsck/k9/storage/migrations/MigrationTo90;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalStore$3;)V

    .line 1891
    .line 1892
    .line 1893
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 1894
    .line 1895
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v8

    .line 1899
    iget-object v8, v8, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 1900
    .line 1901
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1902
    .line 1903
    .line 1904
    move-result v3

    .line 1905
    const-string v8, "MigrationTo90"

    .line 1906
    .line 1907
    if-nez v3, :cond_4d

    .line 1908
    .line 1909
    new-instance v2, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;

    .line 1910
    .line 1911
    invoke-direct {v2, v0, v14}, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 1912
    .line 1913
    .line 1914
    const/16 v20, 0x1

    .line 1915
    .line 1916
    and-int/lit8 v0, v14, 0x1

    .line 1917
    .line 1918
    if-eqz v0, :cond_4c

    .line 1919
    .line 1920
    const/4 v8, 0x0

    .line 1921
    :cond_4c
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v0

    .line 1925
    const/4 v13, 0x0

    .line 1926
    invoke-interface {v0, v8, v13, v2}, Lnet/thunderbird/core/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 1927
    .line 1928
    .line 1929
    goto/16 :goto_2c

    .line 1930
    .line 1931
    :cond_4d
    const/4 v13, 0x0

    .line 1932
    const/16 v20, 0x1

    .line 1933
    .line 1934
    new-instance v3, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;

    .line 1935
    .line 1936
    const/4 v15, 0x3

    .line 1937
    invoke-direct {v3, v0, v15}, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 1938
    .line 1939
    .line 1940
    const/4 v12, 0x2

    .line 1941
    and-int/lit8 v12, v12, 0x1

    .line 1942
    .line 1943
    if-eqz v12, :cond_4e

    .line 1944
    .line 1945
    move-object v12, v13

    .line 1946
    goto :goto_23

    .line 1947
    :cond_4e
    move-object v12, v8

    .line 1948
    :goto_23
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v15

    .line 1952
    invoke-interface {v15, v12, v13, v3}, Lnet/thunderbird/core/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIncomingServerSettings()Lcom/fsck/k9/mail/ServerSettings;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v3

    .line 1959
    invoke-static {v3}, Landroidx/core/util/DebugUtils;->getAutoDetectNamespace(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 1960
    .line 1961
    .line 1962
    move-result v12

    .line 1963
    invoke-static {v3}, Landroidx/core/util/DebugUtils;->getPathPrefix(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v13

    .line 1967
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->useCompression()Z

    .line 1968
    .line 1969
    .line 1970
    move-result v15

    .line 1971
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isSendClientInfoEnabled()Z

    .line 1972
    .line 1973
    .line 1974
    move-result v17

    .line 1975
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v12

    .line 1979
    move/from16 v22, v14

    .line 1980
    .line 1981
    new-instance v14, Lkotlin/Pair;

    .line 1982
    .line 1983
    const-string v6, "autoDetectNamespace"

    .line 1984
    .line 1985
    invoke-direct {v14, v6, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1986
    .line 1987
    .line 1988
    new-instance v6, Lkotlin/Pair;

    .line 1989
    .line 1990
    const-string v12, "pathPrefix"

    .line 1991
    .line 1992
    invoke-direct {v6, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1993
    .line 1994
    .line 1995
    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v12

    .line 1999
    new-instance v13, Lkotlin/Pair;

    .line 2000
    .line 2001
    const-string/jumbo v15, "useCompression"

    .line 2002
    .line 2003
    .line 2004
    invoke-direct {v13, v15, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2005
    .line 2006
    .line 2007
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v12

    .line 2011
    new-instance v15, Lkotlin/Pair;

    .line 2012
    .line 2013
    const-string v4, "sendClientInfo"

    .line 2014
    .line 2015
    invoke-direct {v15, v4, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2016
    .line 2017
    .line 2018
    const/4 v4, 0x4

    .line 2019
    new-array v12, v4, [Lkotlin/Pair;

    .line 2020
    .line 2021
    aput-object v14, v12, v21

    .line 2022
    .line 2023
    const/16 v20, 0x1

    .line 2024
    .line 2025
    aput-object v6, v12, v20

    .line 2026
    .line 2027
    aput-object v13, v12, v22

    .line 2028
    .line 2029
    const/16 v23, 0x3

    .line 2030
    .line 2031
    aput-object v15, v12, v23

    .line 2032
    .line 2033
    invoke-static {v12}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v4

    .line 2037
    const/16 v6, 0xff

    .line 2038
    .line 2039
    const/4 v13, 0x0

    .line 2040
    invoke-static {v3, v13, v13, v4, v6}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v3

    .line 2044
    iget-object v4, v3, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 2045
    .line 2046
    sget-object v6, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 2047
    .line 2048
    if-ne v4, v6, :cond_4f

    .line 2049
    .line 2050
    new-instance v4, Lcom/fsck/k9/storage/migrations/MigrationTo90$createImapStore$oAuth2TokenProvider$authStateStorage$1;

    .line 2051
    .line 2052
    invoke-direct {v4, v0}, Lcom/fsck/k9/storage/migrations/MigrationTo90$createImapStore$oAuth2TokenProvider$authStateStorage$1;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 2053
    .line 2054
    .line 2055
    iget-object v6, v2, Lcom/fsck/k9/storage/migrations/MigrationTo90;->oAuth2TokenProviderFactory$delegate:Lkotlin/Lazy;

    .line 2056
    .line 2057
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v6

    .line 2061
    check-cast v6, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 2062
    .line 2063
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2064
    .line 2065
    .line 2066
    new-instance v12, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 2067
    .line 2068
    iget-object v6, v6, Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;->context:Landroid/content/Context;

    .line 2069
    .line 2070
    invoke-direct {v12, v6, v4}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/oauth/AuthStateStorage;)V

    .line 2071
    .line 2072
    .line 2073
    goto :goto_24

    .line 2074
    :cond_4f
    const/4 v12, 0x0

    .line 2075
    :goto_24
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 2076
    .line 2077
    const/16 v6, 0xf

    .line 2078
    .line 2079
    invoke-direct {v4, v6, v0, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2080
    .line 2081
    .line 2082
    iget-object v2, v2, Lcom/fsck/k9/storage/migrations/MigrationTo90;->trustedSocketFactory$delegate:Lkotlin/Lazy;

    .line 2083
    .line 2084
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2085
    .line 2086
    .line 2087
    move-result-object v2

    .line 2088
    check-cast v2, Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 2089
    .line 2090
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2091
    .line 2092
    .line 2093
    new-instance v6, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 2094
    .line 2095
    invoke-direct {v6, v3, v4, v2, v12}, Lcom/fsck/k9/mail/store/imap/RealImapStore;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 2096
    .line 2097
    .line 2098
    :try_start_b
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 2099
    .line 2100
    const/16 v3, 0x17

    .line 2101
    .line 2102
    invoke-direct {v2, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2103
    .line 2104
    .line 2105
    const/4 v3, 0x2

    .line 2106
    const/16 v20, 0x1

    .line 2107
    .line 2108
    and-int/lit8 v3, v3, 0x1

    .line 2109
    .line 2110
    if-eqz v3, :cond_50

    .line 2111
    .line 2112
    const/4 v3, 0x0

    .line 2113
    goto :goto_25

    .line 2114
    :cond_50
    move-object v3, v8

    .line 2115
    :goto_25
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2116
    .line 2117
    .line 2118
    move-result-object v4

    .line 2119
    const/4 v13, 0x0

    .line 2120
    invoke-interface {v4, v3, v13, v2}, Lnet/thunderbird/core/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 2121
    .line 2122
    .line 2123
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->fetchImapPrefix()V

    .line 2124
    .line 2125
    .line 2126
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/imap/RealImapStore;->getCombinedPrefix()Ljava/lang/String;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v2

    .line 2130
    if-eqz v2, :cond_52

    .line 2131
    .line 2132
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 2133
    .line 2134
    .line 2135
    move-result v3

    .line 2136
    const/4 v12, 0x1

    .line 2137
    xor-int/2addr v3, v12

    .line 2138
    if-ne v3, v12, :cond_52

    .line 2139
    .line 2140
    new-instance v3, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 2141
    .line 2142
    const/16 v4, 0xb

    .line 2143
    .line 2144
    invoke-direct {v3, v2, v4}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 2145
    .line 2146
    .line 2147
    const/4 v4, 0x2

    .line 2148
    and-int/2addr v4, v12

    .line 2149
    if-eqz v4, :cond_51

    .line 2150
    .line 2151
    const/4 v4, 0x0

    .line 2152
    goto :goto_26

    .line 2153
    :cond_51
    move-object v4, v8

    .line 2154
    :goto_26
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v6

    .line 2158
    const/4 v13, 0x0

    .line 2159
    invoke-interface {v6, v4, v13, v3}, Lnet/thunderbird/core/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 2160
    .line 2161
    .line 2162
    invoke-static {v2}, Lcom/fsck/k9/storage/migrations/MigrationTo90;->buildQuery$storage(Ljava/lang/String;)Ljava/lang/String;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v2

    .line 2166
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2167
    .line 2168
    .line 2169
    goto :goto_28

    .line 2170
    :catch_0
    move-exception v0

    .line 2171
    goto :goto_2a

    .line 2172
    :catch_1
    move-exception v0

    .line 2173
    goto :goto_2b

    .line 2174
    :cond_52
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 2175
    .line 2176
    const/16 v3, 0x18

    .line 2177
    .line 2178
    invoke-direct {v2, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2179
    .line 2180
    .line 2181
    const/4 v3, 0x2

    .line 2182
    const/16 v20, 0x1

    .line 2183
    .line 2184
    and-int/lit8 v3, v3, 0x1

    .line 2185
    .line 2186
    if-eqz v3, :cond_53

    .line 2187
    .line 2188
    const/4 v3, 0x0

    .line 2189
    goto :goto_27

    .line 2190
    :cond_53
    move-object v3, v8

    .line 2191
    :goto_27
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v4

    .line 2195
    const/4 v13, 0x0

    .line 2196
    invoke-interface {v4, v3, v13, v2}, Lnet/thunderbird/core/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 2197
    .line 2198
    .line 2199
    :goto_28
    new-instance v2, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;

    .line 2200
    .line 2201
    const/4 v15, 0x4

    .line 2202
    invoke-direct {v2, v0, v15}, Lcom/fsck/k9/job/MailSyncWorkerManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 2203
    .line 2204
    .line 2205
    const/16 v20, 0x1

    .line 2206
    .line 2207
    and-int/lit8 v0, v22, 0x1

    .line 2208
    .line 2209
    if-eqz v0, :cond_54

    .line 2210
    .line 2211
    const/4 v0, 0x0

    .line 2212
    goto :goto_29

    .line 2213
    :cond_54
    move-object v0, v8

    .line 2214
    :goto_29
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v3

    .line 2218
    const/4 v13, 0x0

    .line 2219
    invoke-interface {v3, v0, v13, v2}, Lnet/thunderbird/core/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V
    :try_end_b
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 2220
    .line 2221
    .line 2222
    goto :goto_2c

    .line 2223
    :goto_2a
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 2224
    .line 2225
    const/16 v3, 0x1a

    .line 2226
    .line 2227
    invoke-direct {v2, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2228
    .line 2229
    .line 2230
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v3

    .line 2234
    invoke-interface {v3, v8, v0, v2}, Lnet/thunderbird/core/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 2235
    .line 2236
    .line 2237
    goto :goto_2c

    .line 2238
    :goto_2b
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 2239
    .line 2240
    const/16 v3, 0x19

    .line 2241
    .line 2242
    invoke-direct {v2, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2243
    .line 2244
    .line 2245
    invoke-static {}, Lnet/thunderbird/core/logging/legacy/Log;->getLogger()Lnet/thunderbird/core/logging/Logger;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v3

    .line 2249
    invoke-interface {v3, v8, v0, v2}, Lnet/thunderbird/core/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 2250
    .line 2251
    .line 2252
    :cond_55
    :goto_2c
    const/16 v0, 0x5b

    .line 2253
    .line 2254
    if-ge v11, v0, :cond_58

    .line 2255
    .line 2256
    new-instance v0, Lcom/fsck/k9/storage/migrations/MigrationTo74;

    .line 2257
    .line 2258
    const/16 v2, 0x10

    .line 2259
    .line 2260
    invoke-direct {v0, v1, v9, v2}, Lcom/fsck/k9/storage/migrations/MigrationTo74;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalStore$3;I)V

    .line 2261
    .line 2262
    .line 2263
    invoke-virtual {v0, v7}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->columnExists(Ljava/lang/String;)Z

    .line 2264
    .line 2265
    .line 2266
    move-result v2

    .line 2267
    if-nez v2, :cond_56

    .line 2268
    .line 2269
    const-string v2, "ALTER TABLE folders ADD account_id TEXT"

    .line 2270
    .line 2271
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2272
    .line 2273
    .line 2274
    :cond_56
    invoke-virtual {v0, v5}, Lcom/fsck/k9/storage/migrations/MigrationTo74;->columnExists(Ljava/lang/String;)Z

    .line 2275
    .line 2276
    .line 2277
    move-result v0

    .line 2278
    if-nez v0, :cond_57

    .line 2279
    .line 2280
    const-string v0, "ALTER TABLE messages ADD account_id TEXT"

    .line 2281
    .line 2282
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2283
    .line 2284
    .line 2285
    :cond_57
    iget-object v0, v10, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 2286
    .line 2287
    const-string v2, "UPDATE messages SET account_id = ?"

    .line 2288
    .line 2289
    filled-new-array {v0}, [Ljava/lang/String;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v3

    .line 2293
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2294
    .line 2295
    .line 2296
    const-string v2, "UPDATE folders SET account_id = ?"

    .line 2297
    .line 2298
    filled-new-array {v0}, [Ljava/lang/String;

    .line 2299
    .line 2300
    .line 2301
    move-result-object v0

    .line 2302
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2303
    .line 2304
    .line 2305
    const-string v0, "CREATE INDEX IF NOT EXISTS folders_account_id ON folders(account_id)"

    .line 2306
    .line 2307
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2308
    .line 2309
    .line 2310
    const-string v0, "CREATE INDEX IF NOT EXISTS messages_account_id ON messages(account_id)"

    .line 2311
    .line 2312
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2313
    .line 2314
    .line 2315
    :cond_58
    return-void
.end method

.method public static final visibleItemsAverageSize(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 23
    .line 24
    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 25
    .line 26
    add-int/2addr v3, v4

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    div-int/2addr v3, v0

    .line 35
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    .line 36
    .line 37
    add-int/2addr v3, p0

    .line 38
    return v3
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 16
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 17
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final decodeUtf8([BII)Ljava/lang/String;
    .locals 9

    .line 1
    iget p0, p0, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    const v1, 0xfffd

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-gez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    add-int/2addr p3, p2

    .line 28
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    :goto_0
    return-object p0

    .line 39
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    throw p0

    .line 44
    :pswitch_0
    or-int p0, p2, p3

    .line 45
    .line 46
    array-length v0, p1

    .line 47
    sub-int/2addr v0, p2

    .line 48
    sub-int/2addr v0, p3

    .line 49
    or-int/2addr p0, v0

    .line 50
    const/4 v0, 0x0

    .line 51
    if-ltz p0, :cond_10

    .line 52
    .line 53
    add-int p0, p2, p3

    .line 54
    .line 55
    new-array p3, p3, [C

    .line 56
    .line 57
    move v1, v0

    .line 58
    :goto_1
    if-ge p2, p0, :cond_2

    .line 59
    .line 60
    aget-byte v2, p1, p2

    .line 61
    .line 62
    if-ltz v2, :cond_2

    .line 63
    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 65
    .line 66
    add-int/lit8 v3, v1, 0x1

    .line 67
    .line 68
    int-to-char v2, v2

    .line 69
    aput-char v2, p3, v1

    .line 70
    .line 71
    move v1, v3

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_2
    if-ge p2, p0, :cond_f

    .line 74
    .line 75
    add-int/lit8 v2, p2, 0x1

    .line 76
    .line 77
    aget-byte v3, p1, p2

    .line 78
    .line 79
    if-ltz v3, :cond_4

    .line 80
    .line 81
    add-int/lit8 p2, v1, 0x1

    .line 82
    .line 83
    int-to-char v3, v3

    .line 84
    aput-char v3, p3, v1

    .line 85
    .line 86
    :goto_3
    if-ge v2, p0, :cond_3

    .line 87
    .line 88
    aget-byte v1, p1, v2

    .line 89
    .line 90
    if-ltz v1, :cond_3

    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    add-int/lit8 v3, p2, 0x1

    .line 95
    .line 96
    int-to-char v1, v1

    .line 97
    aput-char v1, p3, p2

    .line 98
    .line 99
    move p2, v3

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move v1, p2

    .line 102
    move p2, v2

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/16 v4, -0x20

    .line 105
    .line 106
    if-ge v3, v4, :cond_7

    .line 107
    .line 108
    if-ge v2, p0, :cond_6

    .line 109
    .line 110
    add-int/lit8 p2, p2, 0x2

    .line 111
    .line 112
    aget-byte v2, p1, v2

    .line 113
    .line 114
    add-int/lit8 v4, v1, 0x1

    .line 115
    .line 116
    const/16 v5, -0x3e

    .line 117
    .line 118
    if-lt v3, v5, :cond_5

    .line 119
    .line 120
    invoke-static {v2}, Landroidx/room/util/SchemaInfoUtilKt;->isNotTrailingByte(B)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_5

    .line 125
    .line 126
    and-int/lit8 v3, v3, 0x1f

    .line 127
    .line 128
    shl-int/lit8 v3, v3, 0x6

    .line 129
    .line 130
    and-int/lit8 v2, v2, 0x3f

    .line 131
    .line 132
    or-int/2addr v2, v3

    .line 133
    int-to-char v2, v2

    .line 134
    aput-char v2, p3, v1

    .line 135
    .line 136
    move v1, v4

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    throw p0

    .line 143
    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    throw p0

    .line 148
    :cond_7
    const/16 v5, -0x10

    .line 149
    .line 150
    if-ge v3, v5, :cond_c

    .line 151
    .line 152
    add-int/lit8 v5, p0, -0x1

    .line 153
    .line 154
    if-ge v2, v5, :cond_b

    .line 155
    .line 156
    add-int/lit8 v5, p2, 0x2

    .line 157
    .line 158
    aget-byte v2, p1, v2

    .line 159
    .line 160
    add-int/lit8 p2, p2, 0x3

    .line 161
    .line 162
    aget-byte v5, p1, v5

    .line 163
    .line 164
    add-int/lit8 v6, v1, 0x1

    .line 165
    .line 166
    invoke-static {v2}, Landroidx/room/util/SchemaInfoUtilKt;->isNotTrailingByte(B)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-nez v7, :cond_a

    .line 171
    .line 172
    const/16 v7, -0x60

    .line 173
    .line 174
    if-ne v3, v4, :cond_8

    .line 175
    .line 176
    if-lt v2, v7, :cond_a

    .line 177
    .line 178
    :cond_8
    const/16 v4, -0x13

    .line 179
    .line 180
    if-ne v3, v4, :cond_9

    .line 181
    .line 182
    if-ge v2, v7, :cond_a

    .line 183
    .line 184
    :cond_9
    invoke-static {v5}, Landroidx/room/util/SchemaInfoUtilKt;->isNotTrailingByte(B)Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-nez v4, :cond_a

    .line 189
    .line 190
    and-int/lit8 v3, v3, 0xf

    .line 191
    .line 192
    shl-int/lit8 v3, v3, 0xc

    .line 193
    .line 194
    and-int/lit8 v2, v2, 0x3f

    .line 195
    .line 196
    shl-int/lit8 v2, v2, 0x6

    .line 197
    .line 198
    or-int/2addr v2, v3

    .line 199
    and-int/lit8 v3, v5, 0x3f

    .line 200
    .line 201
    or-int/2addr v2, v3

    .line 202
    int-to-char v2, v2

    .line 203
    aput-char v2, p3, v1

    .line 204
    .line 205
    move v1, v6

    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    throw p0

    .line 213
    :cond_b
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    throw p0

    .line 218
    :cond_c
    add-int/lit8 v4, p0, -0x2

    .line 219
    .line 220
    if-ge v2, v4, :cond_e

    .line 221
    .line 222
    add-int/lit8 v4, p2, 0x2

    .line 223
    .line 224
    aget-byte v2, p1, v2

    .line 225
    .line 226
    add-int/lit8 v5, p2, 0x3

    .line 227
    .line 228
    aget-byte v4, p1, v4

    .line 229
    .line 230
    add-int/lit8 p2, p2, 0x4

    .line 231
    .line 232
    aget-byte v5, p1, v5

    .line 233
    .line 234
    add-int/lit8 v6, v1, 0x1

    .line 235
    .line 236
    invoke-static {v2}, Landroidx/room/util/SchemaInfoUtilKt;->isNotTrailingByte(B)Z

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    if-nez v7, :cond_d

    .line 241
    .line 242
    shl-int/lit8 v7, v3, 0x1c

    .line 243
    .line 244
    add-int/lit8 v8, v2, 0x70

    .line 245
    .line 246
    add-int/2addr v8, v7

    .line 247
    shr-int/lit8 v7, v8, 0x1e

    .line 248
    .line 249
    if-nez v7, :cond_d

    .line 250
    .line 251
    invoke-static {v4}, Landroidx/room/util/SchemaInfoUtilKt;->isNotTrailingByte(B)Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-nez v7, :cond_d

    .line 256
    .line 257
    invoke-static {v5}, Landroidx/room/util/SchemaInfoUtilKt;->isNotTrailingByte(B)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-nez v7, :cond_d

    .line 262
    .line 263
    and-int/lit8 v3, v3, 0x7

    .line 264
    .line 265
    shl-int/lit8 v3, v3, 0x12

    .line 266
    .line 267
    and-int/lit8 v2, v2, 0x3f

    .line 268
    .line 269
    shl-int/lit8 v2, v2, 0xc

    .line 270
    .line 271
    or-int/2addr v2, v3

    .line 272
    and-int/lit8 v3, v4, 0x3f

    .line 273
    .line 274
    shl-int/lit8 v3, v3, 0x6

    .line 275
    .line 276
    or-int/2addr v2, v3

    .line 277
    and-int/lit8 v3, v5, 0x3f

    .line 278
    .line 279
    or-int/2addr v2, v3

    .line 280
    ushr-int/lit8 v3, v2, 0xa

    .line 281
    .line 282
    const v4, 0xd7c0

    .line 283
    .line 284
    .line 285
    add-int/2addr v3, v4

    .line 286
    int-to-char v3, v3

    .line 287
    aput-char v3, p3, v1

    .line 288
    .line 289
    and-int/lit16 v2, v2, 0x3ff

    .line 290
    .line 291
    const v3, 0xdc00

    .line 292
    .line 293
    .line 294
    add-int/2addr v2, v3

    .line 295
    int-to-char v2, v2

    .line 296
    aput-char v2, p3, v6

    .line 297
    .line 298
    add-int/lit8 v1, v1, 0x2

    .line 299
    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    throw p0

    .line 307
    :cond_e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    throw p0

    .line 312
    :cond_f
    new-instance p0, Ljava/lang/String;

    .line 313
    .line 314
    invoke-direct {p0, p3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 315
    .line 316
    .line 317
    return-object p0

    .line 318
    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 319
    .line 320
    array-length p1, p1

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object p3

    .line 333
    const/4 v1, 0x3

    .line 334
    new-array v1, v1, [Ljava/lang/Object;

    .line 335
    .line 336
    aput-object p1, v1, v0

    .line 337
    .line 338
    const/4 p1, 0x1

    .line 339
    aput-object p2, v1, p1

    .line 340
    .line 341
    const/4 p1, 0x2

    .line 342
    aput-object p3, v1, p1

    .line 343
    .line 344
    const-string p1, "buffer length=%d, index=%d, size=%d"

    .line 345
    .line 346
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw p0

    .line 354
    nop

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final encodeUtf8(Ljava/lang/String;[BII)I
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    iget v3, v3, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 12
    .line 13
    const/16 v5, 0x800

    .line 14
    .line 15
    const/16 v7, 0x80

    .line 16
    .line 17
    const v8, 0xd800

    .line 18
    .line 19
    .line 20
    const-string v10, "Failed writing "

    .line 21
    .line 22
    const-string v11, " at index "

    .line 23
    .line 24
    packed-switch v3, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    int-to-long v12, v2

    .line 28
    int-to-long v14, v4

    .line 29
    add-long/2addr v14, v12

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-gt v3, v4, :cond_c

    .line 35
    .line 36
    array-length v6, v1

    .line 37
    sub-int/2addr v6, v4

    .line 38
    if-lt v6, v2, :cond_c

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    :goto_0
    const-wide/16 v16, 0x1

    .line 42
    .line 43
    if-ge v6, v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ge v2, v7, :cond_0

    .line 50
    .line 51
    add-long v16, v12, v16

    .line 52
    .line 53
    int-to-byte v2, v2

    .line 54
    invoke-static {v1, v12, v13, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    move-wide/from16 v12, v16

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    if-ne v6, v3, :cond_2

    .line 63
    .line 64
    :cond_1
    long-to-int v0, v12

    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_2
    :goto_1
    if-ge v6, v3, :cond_1

    .line 68
    .line 69
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge v2, v7, :cond_3

    .line 74
    .line 75
    cmp-long v4, v12, v14

    .line 76
    .line 77
    if-gez v4, :cond_3

    .line 78
    .line 79
    add-long v18, v12, v16

    .line 80
    .line 81
    int-to-byte v2, v2

    .line 82
    invoke-static {v1, v12, v13, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 83
    .line 84
    .line 85
    move-wide/from16 v12, v18

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_3
    const-wide/16 v18, 0x2

    .line 90
    .line 91
    if-ge v2, v5, :cond_4

    .line 92
    .line 93
    sub-long v20, v14, v18

    .line 94
    .line 95
    cmp-long v4, v12, v20

    .line 96
    .line 97
    if-gtz v4, :cond_4

    .line 98
    .line 99
    move v4, v6

    .line 100
    add-long v5, v12, v16

    .line 101
    .line 102
    ushr-int/lit8 v9, v2, 0x6

    .line 103
    .line 104
    or-int/lit16 v9, v9, 0x3c0

    .line 105
    .line 106
    int-to-byte v9, v9

    .line 107
    invoke-static {v1, v12, v13, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 108
    .line 109
    .line 110
    add-long v12, v12, v18

    .line 111
    .line 112
    and-int/lit8 v2, v2, 0x3f

    .line 113
    .line 114
    or-int/2addr v2, v7

    .line 115
    int-to-byte v2, v2

    .line 116
    invoke-static {v1, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 117
    .line 118
    .line 119
    move v6, v4

    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_4
    move v4, v6

    .line 123
    const-wide/16 v5, 0x3

    .line 124
    .line 125
    if-lt v2, v8, :cond_6

    .line 126
    .line 127
    const v9, 0xdfff

    .line 128
    .line 129
    .line 130
    if-ge v9, v2, :cond_5

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    move/from16 p0, v4

    .line 134
    .line 135
    move-wide/from16 p3, v5

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    :goto_2
    sub-long v22, v14, v5

    .line 139
    .line 140
    cmp-long v9, v12, v22

    .line 141
    .line 142
    if-gtz v9, :cond_5

    .line 143
    .line 144
    move-wide/from16 p3, v5

    .line 145
    .line 146
    add-long v5, v12, v16

    .line 147
    .line 148
    ushr-int/lit8 v9, v2, 0xc

    .line 149
    .line 150
    or-int/lit16 v9, v9, 0x1e0

    .line 151
    .line 152
    int-to-byte v9, v9

    .line 153
    invoke-static {v1, v12, v13, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 154
    .line 155
    .line 156
    add-long v8, v12, v18

    .line 157
    .line 158
    ushr-int/lit8 v18, v2, 0x6

    .line 159
    .line 160
    move/from16 p0, v4

    .line 161
    .line 162
    and-int/lit8 v4, v18, 0x3f

    .line 163
    .line 164
    or-int/2addr v4, v7

    .line 165
    int-to-byte v4, v4

    .line 166
    invoke-static {v1, v5, v6, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 167
    .line 168
    .line 169
    add-long v12, v12, p3

    .line 170
    .line 171
    and-int/lit8 v2, v2, 0x3f

    .line 172
    .line 173
    or-int/2addr v2, v7

    .line 174
    int-to-byte v2, v2

    .line 175
    invoke-static {v1, v8, v9, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 176
    .line 177
    .line 178
    move/from16 v6, p0

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :goto_3
    const-wide/16 v4, 0x4

    .line 182
    .line 183
    sub-long v8, v14, v4

    .line 184
    .line 185
    cmp-long v6, v12, v8

    .line 186
    .line 187
    if-gtz v6, :cond_9

    .line 188
    .line 189
    add-int/lit8 v6, p0, 0x1

    .line 190
    .line 191
    if-eq v6, v3, :cond_7

    .line 192
    .line 193
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    invoke-static {v2, v8}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_8

    .line 202
    .line 203
    invoke-static {v2, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    add-long v8, v12, v16

    .line 208
    .line 209
    move-wide/from16 v23, v4

    .line 210
    .line 211
    ushr-int/lit8 v4, v2, 0x12

    .line 212
    .line 213
    or-int/lit16 v4, v4, 0xf0

    .line 214
    .line 215
    int-to-byte v4, v4

    .line 216
    invoke-static {v1, v12, v13, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 217
    .line 218
    .line 219
    add-long v4, v12, v18

    .line 220
    .line 221
    ushr-int/lit8 v18, v2, 0xc

    .line 222
    .line 223
    move/from16 p0, v2

    .line 224
    .line 225
    and-int/lit8 v2, v18, 0x3f

    .line 226
    .line 227
    or-int/2addr v2, v7

    .line 228
    int-to-byte v2, v2

    .line 229
    invoke-static {v1, v8, v9, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 230
    .line 231
    .line 232
    add-long v8, v12, p3

    .line 233
    .line 234
    ushr-int/lit8 v2, p0, 0x6

    .line 235
    .line 236
    and-int/lit8 v2, v2, 0x3f

    .line 237
    .line 238
    or-int/2addr v2, v7

    .line 239
    int-to-byte v2, v2

    .line 240
    invoke-static {v1, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 241
    .line 242
    .line 243
    add-long v12, v12, v23

    .line 244
    .line 245
    and-int/lit8 v2, p0, 0x3f

    .line 246
    .line 247
    or-int/2addr v2, v7

    .line 248
    int-to-byte v2, v2

    .line 249
    invoke-static {v1, v8, v9, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 250
    .line 251
    .line 252
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 253
    .line 254
    const/16 v5, 0x800

    .line 255
    .line 256
    const v8, 0xd800

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :cond_7
    move/from16 v6, p0

    .line 262
    .line 263
    :cond_8
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 264
    .line 265
    add-int/lit8 v6, v6, -0x1

    .line 266
    .line 267
    invoke-direct {v0, v6, v3}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :cond_9
    const v1, 0xd800

    .line 272
    .line 273
    .line 274
    if-gt v1, v2, :cond_b

    .line 275
    .line 276
    const v9, 0xdfff

    .line 277
    .line 278
    .line 279
    if-gt v2, v9, :cond_b

    .line 280
    .line 281
    add-int/lit8 v6, p0, 0x1

    .line 282
    .line 283
    if-eq v6, v3, :cond_a

    .line 284
    .line 285
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_b

    .line 294
    .line 295
    :cond_a
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 296
    .line 297
    move/from16 v4, p0

    .line 298
    .line 299
    invoke-direct {v0, v4, v3}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 300
    .line 301
    .line 302
    throw v0

    .line 303
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 304
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw v0

    .line 327
    :goto_5
    return v0

    .line 328
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 329
    .line 330
    add-int/lit8 v3, v3, -0x1

    .line 331
    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    add-int/2addr v2, v4

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v1

    .line 359
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    add-int/2addr v4, v2

    .line 364
    const/4 v6, 0x0

    .line 365
    :goto_6
    if-ge v6, v3, :cond_d

    .line 366
    .line 367
    add-int v5, v6, v2

    .line 368
    .line 369
    if-ge v5, v4, :cond_d

    .line 370
    .line 371
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    if-ge v8, v7, :cond_d

    .line 376
    .line 377
    int-to-byte v8, v8

    .line 378
    aput-byte v8, v1, v5

    .line 379
    .line 380
    add-int/lit8 v6, v6, 0x1

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_d
    if-ne v6, v3, :cond_e

    .line 384
    .line 385
    add-int v0, v2, v3

    .line 386
    .line 387
    goto/16 :goto_9

    .line 388
    .line 389
    :cond_e
    add-int/2addr v2, v6

    .line 390
    :goto_7
    if-ge v6, v3, :cond_18

    .line 391
    .line 392
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-ge v5, v7, :cond_f

    .line 397
    .line 398
    if-ge v2, v4, :cond_f

    .line 399
    .line 400
    add-int/lit8 v8, v2, 0x1

    .line 401
    .line 402
    int-to-byte v5, v5

    .line 403
    aput-byte v5, v1, v2

    .line 404
    .line 405
    move v2, v8

    .line 406
    const/16 v8, 0x800

    .line 407
    .line 408
    goto/16 :goto_8

    .line 409
    .line 410
    :cond_f
    const/16 v8, 0x800

    .line 411
    .line 412
    if-ge v5, v8, :cond_10

    .line 413
    .line 414
    add-int/lit8 v9, v4, -0x2

    .line 415
    .line 416
    if-gt v2, v9, :cond_10

    .line 417
    .line 418
    add-int/lit8 v9, v2, 0x1

    .line 419
    .line 420
    ushr-int/lit8 v12, v5, 0x6

    .line 421
    .line 422
    or-int/lit16 v12, v12, 0x3c0

    .line 423
    .line 424
    int-to-byte v12, v12

    .line 425
    aput-byte v12, v1, v2

    .line 426
    .line 427
    add-int/lit8 v2, v2, 0x2

    .line 428
    .line 429
    and-int/lit8 v5, v5, 0x3f

    .line 430
    .line 431
    or-int/2addr v5, v7

    .line 432
    int-to-byte v5, v5

    .line 433
    aput-byte v5, v1, v9

    .line 434
    .line 435
    goto :goto_8

    .line 436
    :cond_10
    const v9, 0xd800

    .line 437
    .line 438
    .line 439
    if-lt v5, v9, :cond_11

    .line 440
    .line 441
    const v9, 0xdfff

    .line 442
    .line 443
    .line 444
    if-ge v9, v5, :cond_12

    .line 445
    .line 446
    :cond_11
    add-int/lit8 v9, v4, -0x3

    .line 447
    .line 448
    if-gt v2, v9, :cond_12

    .line 449
    .line 450
    add-int/lit8 v9, v2, 0x1

    .line 451
    .line 452
    ushr-int/lit8 v12, v5, 0xc

    .line 453
    .line 454
    or-int/lit16 v12, v12, 0x1e0

    .line 455
    .line 456
    int-to-byte v12, v12

    .line 457
    aput-byte v12, v1, v2

    .line 458
    .line 459
    add-int/lit8 v12, v2, 0x2

    .line 460
    .line 461
    ushr-int/lit8 v13, v5, 0x6

    .line 462
    .line 463
    and-int/lit8 v13, v13, 0x3f

    .line 464
    .line 465
    or-int/2addr v13, v7

    .line 466
    int-to-byte v13, v13

    .line 467
    aput-byte v13, v1, v9

    .line 468
    .line 469
    add-int/lit8 v2, v2, 0x3

    .line 470
    .line 471
    and-int/lit8 v5, v5, 0x3f

    .line 472
    .line 473
    or-int/2addr v5, v7

    .line 474
    int-to-byte v5, v5

    .line 475
    aput-byte v5, v1, v12

    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_12
    add-int/lit8 v9, v4, -0x4

    .line 479
    .line 480
    if-gt v2, v9, :cond_15

    .line 481
    .line 482
    add-int/lit8 v9, v6, 0x1

    .line 483
    .line 484
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 485
    .line 486
    .line 487
    move-result v12

    .line 488
    if-eq v9, v12, :cond_14

    .line 489
    .line 490
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 495
    .line 496
    .line 497
    move-result v12

    .line 498
    if-eqz v12, :cond_13

    .line 499
    .line 500
    invoke-static {v5, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    add-int/lit8 v6, v2, 0x1

    .line 505
    .line 506
    ushr-int/lit8 v12, v5, 0x12

    .line 507
    .line 508
    or-int/lit16 v12, v12, 0xf0

    .line 509
    .line 510
    int-to-byte v12, v12

    .line 511
    aput-byte v12, v1, v2

    .line 512
    .line 513
    add-int/lit8 v12, v2, 0x2

    .line 514
    .line 515
    ushr-int/lit8 v13, v5, 0xc

    .line 516
    .line 517
    and-int/lit8 v13, v13, 0x3f

    .line 518
    .line 519
    or-int/2addr v13, v7

    .line 520
    int-to-byte v13, v13

    .line 521
    aput-byte v13, v1, v6

    .line 522
    .line 523
    add-int/lit8 v6, v2, 0x3

    .line 524
    .line 525
    ushr-int/lit8 v13, v5, 0x6

    .line 526
    .line 527
    and-int/lit8 v13, v13, 0x3f

    .line 528
    .line 529
    or-int/2addr v13, v7

    .line 530
    int-to-byte v13, v13

    .line 531
    aput-byte v13, v1, v12

    .line 532
    .line 533
    add-int/lit8 v2, v2, 0x4

    .line 534
    .line 535
    and-int/lit8 v5, v5, 0x3f

    .line 536
    .line 537
    or-int/2addr v5, v7

    .line 538
    int-to-byte v5, v5

    .line 539
    aput-byte v5, v1, v6

    .line 540
    .line 541
    move v6, v9

    .line 542
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 543
    .line 544
    goto/16 :goto_7

    .line 545
    .line 546
    :cond_13
    move v6, v9

    .line 547
    :cond_14
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 548
    .line 549
    add-int/lit8 v6, v6, -0x1

    .line 550
    .line 551
    invoke-direct {v0, v6, v3}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 552
    .line 553
    .line 554
    throw v0

    .line 555
    :cond_15
    const v1, 0xd800

    .line 556
    .line 557
    .line 558
    if-gt v1, v5, :cond_17

    .line 559
    .line 560
    const v9, 0xdfff

    .line 561
    .line 562
    .line 563
    if-gt v5, v9, :cond_17

    .line 564
    .line 565
    add-int/lit8 v1, v6, 0x1

    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    if-eq v1, v4, :cond_16

    .line 572
    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    invoke-static {v5, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-nez v0, :cond_17

    .line 582
    .line 583
    :cond_16
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 584
    .line 585
    invoke-direct {v0, v6, v3}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 586
    .line 587
    .line 588
    throw v0

    .line 589
    :cond_17
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 590
    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    throw v0

    .line 613
    :cond_18
    move v0, v2

    .line 614
    :goto_9
    return v0

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
