.class public final synthetic Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

.field public final synthetic f$1:Landroid/content/res/Resources;

.field public final synthetic f$2:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lkotlin/jvm/functions/Function1;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$2:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 10
    .line 11
    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$3:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object p4, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$1:Landroid/content/res/Resources;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Landroid/content/res/Resources;Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    iput-object p2, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$1:Landroid/content/res/Resources;

    iput-object p3, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$2:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    iput-object p4, p0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v11, p1

    .line 15
    .line 16
    check-cast v11, Landroidx/compose/foundation/layout/PaddingValues;

    .line 17
    .line 18
    move-object/from16 v1, p2

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    move-object/from16 v6, p3

    .line 23
    .line 24
    check-cast v6, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    and-int/lit8 v7, v6, 0x6

    .line 34
    .line 35
    if-nez v7, :cond_1

    .line 36
    .line 37
    move-object v7, v1

    .line 38
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    const/4 v7, 0x4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v7, 0x2

    .line 49
    :goto_0
    or-int/2addr v6, v7

    .line 50
    :cond_1
    and-int/lit8 v7, v6, 0x13

    .line 51
    .line 52
    const/16 v8, 0x12

    .line 53
    .line 54
    if-eq v7, v8, :cond_2

    .line 55
    .line 56
    move v4, v5

    .line 57
    :cond_2
    and-int/lit8 v7, v6, 0x1

    .line 58
    .line 59
    move-object v13, v1

    .line 60
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 61
    .line 62
    invoke-virtual {v13, v7, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    sget-object v15, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 69
    .line 70
    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 71
    .line 72
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 73
    .line 74
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v10, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 84
    .line 85
    new-instance v1, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v4, 0x7

    .line 88
    invoke-direct {v1, v4}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 89
    .line 90
    .line 91
    const/high16 v4, 0x41000000    # 8.0f

    .line 92
    .line 93
    invoke-direct {v10, v4, v5, v1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$2:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    iget-object v5, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 107
    .line 108
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    or-int/2addr v4, v7

    .line 113
    iget-object v7, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$3:Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    or-int/2addr v4, v8

    .line 120
    iget-object v0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$1:Landroid/content/res/Resources;

    .line 121
    .line 122
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    or-int/2addr v4, v8

    .line 127
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    if-nez v4, :cond_3

    .line 132
    .line 133
    if-ne v8, v3, :cond_4

    .line 134
    .line 135
    :cond_3
    new-instance v16, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;

    .line 136
    .line 137
    const/16 v21, 0x8

    .line 138
    .line 139
    move-object/from16 v20, v0

    .line 140
    .line 141
    move-object/from16 v17, v1

    .line 142
    .line 143
    move-object/from16 v18, v5

    .line 144
    .line 145
    move-object/from16 v19, v7

    .line 146
    .line 147
    invoke-direct/range {v16 .. v21}, Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v8, v16

    .line 151
    .line 152
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    move-object/from16 v16, v8

    .line 156
    .line 157
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 158
    .line 159
    shl-int/lit8 v0, v6, 0x6

    .line 160
    .line 161
    and-int/lit16 v0, v0, 0x380

    .line 162
    .line 163
    const v1, 0x30006

    .line 164
    .line 165
    .line 166
    or-int v6, v0, v1

    .line 167
    .line 168
    const/16 v7, 0x1ca

    .line 169
    .line 170
    const/4 v8, 0x0

    .line 171
    const/4 v9, 0x0

    .line 172
    const/4 v12, 0x0

    .line 173
    const/16 v17, 0x0

    .line 174
    .line 175
    invoke-static/range {v6 .. v17}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 180
    .line 181
    .line 182
    :goto_1
    return-object v2

    .line 183
    :pswitch_0
    move-object/from16 v1, p1

    .line 184
    .line 185
    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 186
    .line 187
    move-object/from16 v6, p2

    .line 188
    .line 189
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 190
    .line 191
    move-object/from16 v7, p3

    .line 192
    .line 193
    check-cast v7, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    and-int/lit8 v1, v7, 0x11

    .line 203
    .line 204
    const/16 v8, 0x10

    .line 205
    .line 206
    if-eq v1, v8, :cond_6

    .line 207
    .line 208
    move v4, v5

    .line 209
    :cond_6
    and-int/lit8 v1, v7, 0x1

    .line 210
    .line 211
    move-object v14, v6

    .line 212
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 213
    .line 214
    invoke-virtual {v14, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_a

    .line 219
    .line 220
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$0:Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 221
    .line 222
    iget-object v1, v1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 223
    .line 224
    iget-object v10, v1, Lnet/thunderbird/core/validation/input/StringInputField;->value:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v1, v1, Lnet/thunderbird/core/validation/input/StringInputField;->error:Lnet/thunderbird/core/validation/ValidationError;

    .line 227
    .line 228
    if-eqz v1, :cond_7

    .line 229
    .line 230
    iget-object v4, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$1:Landroid/content/res/Resources;

    .line 231
    .line 232
    invoke-static {v1, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->toResourceString(Lnet/thunderbird/core/validation/ValidationError;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    :goto_2
    move-object v12, v1

    .line 237
    goto :goto_3

    .line 238
    :cond_7
    const/4 v1, 0x0

    .line 239
    goto :goto_2

    .line 240
    :goto_3
    invoke-static {v14}, Lcom/fsck/k9/sasl/OAuthBearer;->defaultItemPadding(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    iget-object v1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$3:Lkotlin/jvm/functions/Function1;

    .line 245
    .line 246
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    if-nez v4, :cond_8

    .line 255
    .line 256
    if-ne v5, v3, :cond_9

    .line 257
    .line 258
    :cond_8
    new-instance v5, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;

    .line 259
    .line 260
    const/16 v3, 0x13

    .line 261
    .line 262
    invoke-direct {v5, v3, v1}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda14;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_9
    move-object v8, v5

    .line 269
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 270
    .line 271
    const/4 v15, 0x0

    .line 272
    const/16 v16, 0x14

    .line 273
    .line 274
    iget-object v7, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/content/IncomingFormItemsKt$$ExternalSyntheticLambda6;->f$2:Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;

    .line 275
    .line 276
    const/4 v9, 0x0

    .line 277
    const/4 v11, 0x0

    .line 278
    invoke-static/range {v7 .. v16}, Landroidx/room/util/DBUtil;->ServerSettingsPasswordInput(Lapp/k9mail/feature/account/common/domain/entity/InteractionMode;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/runtime/Composer;II)V

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 283
    .line 284
    .line 285
    :goto_4
    return-object v2

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
