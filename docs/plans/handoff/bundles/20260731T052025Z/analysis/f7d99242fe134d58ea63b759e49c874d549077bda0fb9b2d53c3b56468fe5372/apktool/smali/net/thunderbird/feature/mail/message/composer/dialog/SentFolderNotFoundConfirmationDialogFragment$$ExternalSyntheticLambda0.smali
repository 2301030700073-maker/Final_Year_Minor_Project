.class public final synthetic Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    iget-object v4, v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    check-cast v7, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    and-int/lit8 v8, v7, 0x3

    .line 28
    .line 29
    if-eq v8, v3, :cond_0

    .line 30
    .line 31
    move v3, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v6

    .line 34
    :goto_0
    and-int/2addr v5, v7

    .line 35
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {v1, v5, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;

    .line 44
    .line 45
    iget-object v3, v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 46
    .line 47
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 52
    .line 53
    new-instance v5, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    invoke-direct {v5, v0, v4, v6}, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    const v0, -0x7ece2cc4

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v4, 0x6

    .line 66
    check-cast v3, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 67
    .line 68
    invoke-virtual {v3, v0, v1, v4}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-object v2

    .line 76
    :pswitch_0
    move-object/from16 v1, p1

    .line 77
    .line 78
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 79
    .line 80
    move-object/from16 v7, p2

    .line 81
    .line 82
    check-cast v7, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    and-int/lit8 v8, v7, 0x3

    .line 89
    .line 90
    if-eq v8, v3, :cond_2

    .line 91
    .line 92
    move v3, v5

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v3, v6

    .line 95
    :goto_2
    and-int/2addr v7, v5

    .line 96
    move-object v12, v1

    .line 97
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 98
    .line 99
    invoke-virtual {v12, v7, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_9

    .line 104
    .line 105
    iget-object v15, v0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;

    .line 106
    .line 107
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    or-int/2addr v0, v1

    .line 116
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 121
    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    if-ne v1, v3, :cond_4

    .line 125
    .line 126
    :cond_3
    new-instance v1, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda1;

    .line 127
    .line 128
    invoke-direct {v1, v15, v4, v6}, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    move-object v8, v1

    .line 135
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 136
    .line 137
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    or-int/2addr v0, v1

    .line 146
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    if-ne v1, v3, :cond_6

    .line 153
    .line 154
    :cond_5
    new-instance v1, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda1;

    .line 155
    .line 156
    invoke-direct {v1, v15, v4, v5}, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    move-object v9, v1

    .line 163
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 164
    .line 165
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-nez v0, :cond_7

    .line 174
    .line 175
    if-ne v1, v3, :cond_8

    .line 176
    .line 177
    :cond_7
    new-instance v13, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 178
    .line 179
    const/16 v19, 0x0

    .line 180
    .line 181
    const/16 v20, 0x15

    .line 182
    .line 183
    const/4 v14, 0x0

    .line 184
    const-class v16, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;

    .line 185
    .line 186
    const-string v17, "dismiss"

    .line 187
    .line 188
    const-string v18, "dismiss()V"

    .line 189
    .line 190
    invoke-direct/range {v13 .. v20}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    move-object v1, v13

    .line 197
    :cond_8
    check-cast v1, Lkotlin/reflect/KFunction;

    .line 198
    .line 199
    move-object v10, v1

    .line 200
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 201
    .line 202
    const/4 v11, 0x0

    .line 203
    const/4 v13, 0x6

    .line 204
    invoke-static/range {v8 .. v13}, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogKt;->SentFolderNotFoundConfirmationDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 209
    .line 210
    .line 211
    :goto_3
    return-object v2

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
