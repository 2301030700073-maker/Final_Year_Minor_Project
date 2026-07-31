.class public final synthetic Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/widgets/SearchWidgetInstallDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/SearchWidgetInstallDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/widgets/SearchWidgetInstallDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v0, v0, Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/widgets/SearchWidgetInstallDialog;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x2

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v14, p1

    .line 18
    .line 19
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    move-object/from16 v1, p2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    and-int/lit8 v7, v1, 0x3

    .line 30
    .line 31
    if-eq v7, v6, :cond_0

    .line 32
    .line 33
    move v4, v5

    .line 34
    :cond_0
    and-int/2addr v1, v5

    .line 35
    invoke-virtual {v14, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-static {}, Lorg/wikipedia/util/DeviceUtil;->isPinWidgetSupported()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 46
    .line 47
    const/high16 v5, 0x3f800000    # 1.0f

    .line 48
    .line 49
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    or-int/2addr v4, v5

    .line 62
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-nez v4, :cond_1

    .line 67
    .line 68
    if-ne v5, v2, :cond_2

    .line 69
    .line 70
    :cond_1
    new-instance v5, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;

    .line 71
    .line 72
    const/4 v2, 0x6

    .line 73
    invoke-direct {v5, v1, v0, v2}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda2;-><init>(ZLjava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    move-object v7, v5

    .line 80
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 81
    .line 82
    new-instance v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda5;-><init>(IZ)V

    .line 86
    .line 87
    .line 88
    const v1, -0x20391e8d

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    const/16 v15, 0x6030

    .line 96
    .line 97
    const/16 v16, 0xc

    .line 98
    .line 99
    const-wide/16 v9, 0x0

    .line 100
    .line 101
    const-wide/16 v11, 0x0

    .line 102
    .line 103
    invoke-static/range {v7 .. v16}, Lorg/wikipedia/compose/components/TabsBoxKt;->AppButton-t6yy7ic(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-object v3

    .line 111
    :pswitch_0
    move-object/from16 v10, p1

    .line 112
    .line 113
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 114
    .line 115
    move-object/from16 v1, p2

    .line 116
    .line 117
    check-cast v1, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    and-int/lit8 v7, v1, 0x3

    .line 124
    .line 125
    if-eq v7, v6, :cond_4

    .line 126
    .line 127
    move v4, v5

    .line 128
    :cond_4
    and-int/2addr v1, v5

    .line 129
    invoke-virtual {v10, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    const v1, 0x7f120856

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const v1, 0x7f120855

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v10}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    if-nez v1, :cond_5

    .line 158
    .line 159
    if-ne v7, v2, :cond_6

    .line 160
    .line 161
    :cond_5
    new-instance v7, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;

    .line 162
    .line 163
    invoke-direct {v7, v6, v0}, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 170
    .line 171
    new-instance v1, Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;

    .line 172
    .line 173
    invoke-direct {v1, v0, v6}, Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/widgets/SearchWidgetInstallDialog;I)V

    .line 174
    .line 175
    .line 176
    const v0, 0x373494f7

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v1, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sget-object v9, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Companion;->lambda$530805054:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 184
    .line 185
    const v11, 0x30c00

    .line 186
    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    move-object v6, v7

    .line 190
    move-object v7, v0

    .line 191
    invoke-static/range {v4 .. v11}, Lorg/wikipedia/compose/components/TabsBoxKt;->InstallWidgetScreen(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 196
    .line 197
    .line 198
    :goto_1
    return-object v3

    .line 199
    :pswitch_1
    move-object/from16 v1, p1

    .line 200
    .line 201
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 202
    .line 203
    move-object/from16 v2, p2

    .line 204
    .line 205
    check-cast v2, Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    and-int/lit8 v7, v2, 0x3

    .line 212
    .line 213
    if-eq v7, v6, :cond_8

    .line 214
    .line 215
    move v4, v5

    .line 216
    :cond_8
    and-int/2addr v2, v5

    .line 217
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_9

    .line 222
    .line 223
    new-instance v2, Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;

    .line 224
    .line 225
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/widgets/SearchWidgetInstallDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/widgets/SearchWidgetInstallDialog;I)V

    .line 226
    .line 227
    .line 228
    const v0, -0x568d0ac6

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const/16 v2, 0x30

    .line 236
    .line 237
    const/4 v4, 0x0

    .line 238
    invoke-static {v4, v0, v1, v2, v5}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 243
    .line 244
    .line 245
    :goto_2
    return-object v3

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
