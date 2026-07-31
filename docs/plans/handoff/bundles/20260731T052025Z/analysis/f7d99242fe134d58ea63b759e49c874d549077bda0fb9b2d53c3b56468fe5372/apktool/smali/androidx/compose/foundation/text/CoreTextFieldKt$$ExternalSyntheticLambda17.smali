.class public final synthetic Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZI)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    iput p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$1:Z

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$1:Z

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 14
    const/4 p3, 0x1

    iput p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$1:Z

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-boolean v6, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$1:Z

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 22
    .line 23
    move-object/from16 v7, p2

    .line 24
    .line 25
    check-cast v7, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    and-int/lit8 v8, v7, 0x3

    .line 32
    .line 33
    if-eq v8, v4, :cond_0

    .line 34
    .line 35
    move v2, v5

    .line 36
    :cond_0
    and-int/2addr v5, v7

    .line 37
    move-object v11, v1

    .line 38
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 39
    .line 40
    invoke-virtual {v11, v5, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const v1, 0x7f1200a3

    .line 47
    .line 48
    .line 49
    invoke-static {v11, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    new-instance v1, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const/16 v2, 0x8

    .line 56
    .line 57
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 58
    .line 59
    .line 60
    const v2, 0x39e08b

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    new-instance v1, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;

    .line 68
    .line 69
    invoke-direct {v1, v4, v0, v6}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Z)V

    .line 70
    .line 71
    .line 72
    const v0, -0x6503580c    # -1.044961E-22f

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    const/16 v12, 0xd80

    .line 80
    .line 81
    const/4 v13, 0x2

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v7 .. v13}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-object v3

    .line 91
    :pswitch_0
    move-object v12, v0

    .line 92
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    move-object/from16 v0, p1

    .line 95
    .line 96
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 97
    .line 98
    move-object/from16 v1, p2

    .line 99
    .line 100
    check-cast v1, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    and-int/lit8 v7, v1, 0x3

    .line 107
    .line 108
    if-eq v7, v4, :cond_2

    .line 109
    .line 110
    move v7, v5

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    move v7, v2

    .line 113
    :goto_1
    and-int/2addr v1, v5

    .line 114
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    if-eqz v6, :cond_3

    .line 123
    .line 124
    sget-object v1, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->Visibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    sget-object v1, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->VisibilityOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 128
    .line 129
    :goto_2
    if-eqz v6, :cond_4

    .line 130
    .line 131
    const v5, 0x638daccf

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 135
    .line 136
    .line 137
    sget-object v5, Lnet/thunderbird/core/ui/designsystem/resources/String0_commonMainKt;->designsystem_atom_password_textfield_hide_password$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 138
    .line 139
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    check-cast v5, Lorg/jetbrains/compose/resources/StringResource;

    .line 144
    .line 145
    invoke-static {v5, v0}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_4
    const v5, 0x638f6a6f

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 157
    .line 158
    .line 159
    sget-object v5, Lnet/thunderbird/core/ui/designsystem/resources/String0_commonMainKt;->designsystem_atom_password_textfield_show_password$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 160
    .line 161
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Lorg/jetbrains/compose/resources/StringResource;

    .line 166
    .line 167
    invoke-static {v5, v0}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 172
    .line 173
    .line 174
    :goto_3
    new-instance v2, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda5;

    .line 175
    .line 176
    invoke-direct {v2, v4, v1, v5}, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda5;-><init>(ILandroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const v1, -0xab4fa1c

    .line 180
    .line 181
    .line 182
    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 183
    .line 184
    .line 185
    move-result-object v17

    .line 186
    const/high16 v19, 0x180000

    .line 187
    .line 188
    const/16 v20, 0x3e

    .line 189
    .line 190
    const/4 v13, 0x0

    .line 191
    const/4 v14, 0x0

    .line 192
    const/4 v15, 0x0

    .line 193
    const/16 v16, 0x0

    .line 194
    .line 195
    move-object/from16 v18, v0

    .line 196
    .line 197
    invoke-static/range {v12 .. v20}, Landroidx/compose/material3/CardKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_5
    move-object/from16 v18, v0

    .line 202
    .line 203
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 204
    .line 205
    .line 206
    :goto_4
    return-object v3

    .line 207
    :pswitch_1
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 208
    .line 209
    move-object/from16 v1, p1

    .line 210
    .line 211
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 212
    .line 213
    move-object/from16 v2, p2

    .line 214
    .line 215
    check-cast v2, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    invoke-static {v6, v0, v1, v2}, Landroidx/work/Data$Companion;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 225
    .line 226
    .line 227
    return-object v3

    .line 228
    :pswitch_2
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 229
    .line 230
    move-object/from16 v1, p1

    .line 231
    .line 232
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 233
    .line 234
    move-object/from16 v2, p2

    .line 235
    .line 236
    check-cast v2, Ljava/lang/Integer;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-static {v0, v6, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt;->SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V

    .line 246
    .line 247
    .line 248
    return-object v3

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
