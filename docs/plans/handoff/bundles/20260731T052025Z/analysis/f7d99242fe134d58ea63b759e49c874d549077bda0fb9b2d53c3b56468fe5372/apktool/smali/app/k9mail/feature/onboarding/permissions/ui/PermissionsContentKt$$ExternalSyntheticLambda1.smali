.class public final synthetic Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/foundation/ScrollState;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/ScrollState;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$2:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 8
    .line 9
    iput-object p4, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 16
    .line 17
    move-object/from16 v7, p2

    .line 18
    .line 19
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v8, p3

    .line 22
    .line 23
    check-cast v8, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v9, v8, 0x6

    .line 33
    .line 34
    if-nez v9, :cond_1

    .line 35
    .line 36
    move-object v9, v7

    .line 37
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_0

    .line 44
    .line 45
    move v3, v4

    .line 46
    :cond_0
    or-int/2addr v8, v3

    .line 47
    :cond_1
    and-int/lit8 v3, v8, 0x13

    .line 48
    .line 49
    if-eq v3, v2, :cond_2

    .line 50
    .line 51
    move v2, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v2, v6

    .line 54
    :goto_0
    and-int/lit8 v3, v8, 0x1

    .line 55
    .line 56
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 57
    .line 58
    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    sget-object v2, Landroidx/compose/foundation/layout/OffsetKt;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 65
    .line 66
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 67
    .line 68
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    .line 69
    .line 70
    iget-object v8, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/ScrollState;

    .line 71
    .line 72
    invoke-static {v4, v8}, Landroidx/compose/foundation/ImageKt;->verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/16 v4, 0x36

    .line 81
    .line 82
    invoke-static {v2, v3, v7, v4}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-wide v3, v7, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 87
    .line 88
    const/16 v8, 0x20

    .line 89
    .line 90
    ushr-long v8, v3, v8

    .line 91
    .line 92
    xor-long/2addr v3, v8

    .line 93
    long-to-int v3, v3

    .line 94
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v7, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 108
    .line 109
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 110
    .line 111
    .line 112
    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 113
    .line 114
    if-eqz v9, :cond_3

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 121
    .line 122
    .line 123
    :goto_1
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 124
    .line 125
    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 126
    .line 127
    .line 128
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 129
    .line 130
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 138
    .line 139
    invoke-static {v7, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 140
    .line 141
    .line 142
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 143
    .line 144
    invoke-static {v7, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 145
    .line 146
    .line 147
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 148
    .line 149
    invoke-static {v7, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v0, v7, v6}, Landroidx/room/util/SchemaInfoUtilKt;->HeaderArea(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$2:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 158
    .line 159
    iget-object p0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 160
    .line 161
    invoke-static {v0, p0, v7, v6}, Landroidx/room/util/SchemaInfoUtilKt;->ContentArea(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 162
    .line 163
    .line 164
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 165
    .line 166
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    const/high16 p0, 0x41800000    # 16.0f

    .line 176
    .line 177
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 178
    .line 179
    invoke-static {v0, p0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v7, p0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 191
    .line 192
    .line 193
    :goto_2
    return-object v1

    .line 194
    :pswitch_0
    move-object v0, p1

    .line 195
    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    .line 196
    .line 197
    move-object/from16 v7, p2

    .line 198
    .line 199
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 200
    .line 201
    move-object/from16 v8, p3

    .line 202
    .line 203
    check-cast v8, Ljava/lang/Integer;

    .line 204
    .line 205
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    and-int/lit8 v9, v8, 0x6

    .line 213
    .line 214
    if-nez v9, :cond_6

    .line 215
    .line 216
    move-object v9, v7

    .line 217
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 218
    .line 219
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-eqz v9, :cond_5

    .line 224
    .line 225
    move v3, v4

    .line 226
    :cond_5
    or-int/2addr v8, v3

    .line 227
    :cond_6
    and-int/lit8 v3, v8, 0x13

    .line 228
    .line 229
    if-eq v3, v2, :cond_7

    .line 230
    .line 231
    move v2, v5

    .line 232
    goto :goto_3

    .line 233
    :cond_7
    move v2, v6

    .line 234
    :goto_3
    and-int/lit8 v3, v8, 0x1

    .line 235
    .line 236
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 237
    .line 238
    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_8

    .line 243
    .line 244
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 245
    .line 246
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v8, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;

    .line 251
    .line 252
    const/4 v13, 0x1

    .line 253
    iget-object v9, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/foundation/ScrollState;

    .line 254
    .line 255
    iget-object v10, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v11, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$2:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;

    .line 258
    .line 259
    iget-object v12, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 260
    .line 261
    invoke-direct/range {v8 .. v13}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContentKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$State;Lkotlin/jvm/functions/Function1;I)V

    .line 262
    .line 263
    .line 264
    const p0, 0x6ea2600d

    .line 265
    .line 266
    .line 267
    invoke-static {p0, v8, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    const/16 v2, 0x30

    .line 272
    .line 273
    invoke-static {v0, p0, v7, v2, v6}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->ResponsiveWidthContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 278
    .line 279
    .line 280
    :goto_4
    return-object v1

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
