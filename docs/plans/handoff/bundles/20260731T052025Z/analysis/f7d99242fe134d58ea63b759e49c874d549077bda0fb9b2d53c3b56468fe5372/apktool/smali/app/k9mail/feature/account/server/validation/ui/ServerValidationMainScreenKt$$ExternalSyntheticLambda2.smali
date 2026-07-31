.class public final synthetic Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;->f$1:Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const v3, 0xe000

    .line 8
    .line 9
    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/16 v7, 0x12

    .line 16
    .line 17
    const/4 v8, 0x4

    .line 18
    iget-object v9, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    iget-object v10, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;->f$1:Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;

    .line 21
    .line 22
    iget-object v0, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationMainScreenKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/runtime/MutableState;

    .line 23
    .line 24
    const/4 v11, 0x2

    .line 25
    const/4 v12, 0x1

    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    move-object/from16 v1, p1

    .line 30
    .line 31
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 32
    .line 33
    move-object/from16 v13, p2

    .line 34
    .line 35
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 36
    .line 37
    move-object/from16 v14, p3

    .line 38
    .line 39
    check-cast v14, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    and-int/lit8 v15, v14, 0x6

    .line 49
    .line 50
    if-nez v15, :cond_1

    .line 51
    .line 52
    move-object v15, v13

    .line 53
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v15

    .line 59
    if-eqz v15, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v8, v11

    .line 63
    :goto_0
    or-int/2addr v14, v8

    .line 64
    :cond_1
    and-int/lit8 v8, v14, 0x13

    .line 65
    .line 66
    if-eq v8, v7, :cond_2

    .line 67
    .line 68
    move v6, v12

    .line 69
    :cond_2
    and-int/lit8 v7, v14, 0x1

    .line 70
    .line 71
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 72
    .line 73
    invoke-virtual {v13, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 84
    .line 85
    move v6, v14

    .line 86
    iget-boolean v14, v10, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->isIncomingValidation:Z

    .line 87
    .line 88
    iget-object v15, v10, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->oAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 89
    .line 90
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    if-nez v7, :cond_3

    .line 99
    .line 100
    if-ne v8, v5, :cond_4

    .line 101
    .line 102
    :cond_3
    new-instance v8, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {v8, v11, v9}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    move-object/from16 v16, v8

    .line 111
    .line 112
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 113
    .line 114
    shl-int/lit8 v5, v6, 0xc

    .line 115
    .line 116
    and-int/2addr v3, v5

    .line 117
    or-int v20, v4, v3

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    move-object/from16 v17, v1

    .line 122
    .line 123
    move-object/from16 v19, v13

    .line 124
    .line 125
    move-object v13, v0

    .line 126
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/unit/IntOffsetKt;->ServerValidationContent(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    move-object/from16 v19, v13

    .line 131
    .line 132
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 133
    .line 134
    .line 135
    :goto_1
    return-object v2

    .line 136
    :pswitch_0
    move-object/from16 v1, p1

    .line 137
    .line 138
    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 139
    .line 140
    move-object/from16 v13, p2

    .line 141
    .line 142
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 143
    .line 144
    move-object/from16 v14, p3

    .line 145
    .line 146
    check-cast v14, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v14

    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    and-int/lit8 v15, v14, 0x6

    .line 156
    .line 157
    if-nez v15, :cond_7

    .line 158
    .line 159
    move-object v15, v13

    .line 160
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 161
    .line 162
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    if-eqz v15, :cond_6

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    move v8, v11

    .line 170
    :goto_2
    or-int/2addr v14, v8

    .line 171
    :cond_7
    and-int/lit8 v8, v14, 0x13

    .line 172
    .line 173
    if-eq v8, v7, :cond_8

    .line 174
    .line 175
    move v6, v12

    .line 176
    :cond_8
    and-int/lit8 v7, v14, 0x1

    .line 177
    .line 178
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 179
    .line 180
    invoke-virtual {v13, v7, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_b

    .line 185
    .line 186
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 191
    .line 192
    move v6, v4

    .line 193
    iget-boolean v4, v10, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->isIncomingValidation:Z

    .line 194
    .line 195
    iget-object v7, v10, Lapp/k9mail/feature/account/server/validation/ui/BaseServerValidationViewModel;->oAuthViewModel:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 196
    .line 197
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    if-nez v8, :cond_9

    .line 206
    .line 207
    if-ne v10, v5, :cond_a

    .line 208
    .line 209
    :cond_9
    new-instance v10, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    invoke-direct {v10, v12, v9}, Lkotlin/sequences/SequencesKt___SequencesKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_a
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 218
    .line 219
    shl-int/lit8 v5, v14, 0xc

    .line 220
    .line 221
    and-int/2addr v3, v5

    .line 222
    or-int/2addr v3, v6

    .line 223
    const/4 v8, 0x0

    .line 224
    move-object v5, v7

    .line 225
    move-object v6, v10

    .line 226
    move-object v9, v13

    .line 227
    move-object v7, v1

    .line 228
    move v10, v3

    .line 229
    move-object v3, v0

    .line 230
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/IntOffsetKt;->ServerValidationContent(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_b
    move-object v9, v13

    .line 235
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 236
    .line 237
    .line 238
    :goto_3
    return-object v2

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
