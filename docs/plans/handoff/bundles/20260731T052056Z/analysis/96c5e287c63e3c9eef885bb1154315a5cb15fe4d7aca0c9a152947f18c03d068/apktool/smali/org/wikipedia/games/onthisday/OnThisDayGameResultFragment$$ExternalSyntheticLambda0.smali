.class public final synthetic Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

.field public final synthetic f$1:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p1

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    move-object/from16 v8, p2

    .line 23
    .line 24
    check-cast v8, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    and-int/lit8 v9, v8, 0x3

    .line 31
    .line 32
    if-eq v9, v3, :cond_0

    .line 33
    .line 34
    move v3, v7

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v3, v4

    .line 37
    :goto_0
    and-int/2addr v7, v8

    .line 38
    invoke-virtual {v1, v7, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_5

    .line 43
    .line 44
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const v3, 0x50ba9f28

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 54
    .line 55
    .line 56
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 57
    .line 58
    const/high16 v5, 0x3f800000    # 1.0f

    .line 59
    .line 60
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget v9, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->totalGamesPlayed:I

    .line 65
    .line 66
    iget v10, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->currentStreak:I

    .line 67
    .line 68
    iget-object v3, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->averageScore:Ljava/lang/Double;

    .line 69
    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    :goto_1
    move-wide v12, v5

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    const-wide/16 v5, 0x0

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :goto_2
    iget v11, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;->bestStreak:I

    .line 82
    .line 83
    const v18, 0x30006

    .line 84
    .line 85
    .line 86
    const/16 v19, 0xc0

    .line 87
    .line 88
    const/4 v14, 0x0

    .line 89
    const/4 v15, 0x0

    .line 90
    const/16 v16, 0x0

    .line 91
    .line 92
    move-object/from16 v17, v1

    .line 93
    .line 94
    invoke-static/range {v8 .. v19}, Lorg/wikipedia/activitytab/ImpactModuleKt;->WikiGamesStatsCard(Landroidx/compose/ui/Modifier;IIIDZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 95
    .line 96
    .line 97
    move-object/from16 v0, v17

    .line 98
    .line 99
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    move-object v0, v1

    .line 104
    const v1, 0x50c1f115

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 121
    .line 122
    if-ne v3, v1, :cond_4

    .line 123
    .line 124
    :cond_3
    new-instance v3, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    const/16 v1, 0xe

    .line 127
    .line 128
    invoke-direct {v3, v1, v6}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 135
    .line 136
    invoke-static {v5, v3, v0, v4}, Lorg/wikipedia/activitytab/ImpactModuleKt;->OnThisDayGameLoginPromptCard(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    move-object v0, v1

    .line 144
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 145
    .line 146
    .line 147
    :goto_3
    return-object v2

    .line 148
    :pswitch_0
    move-object/from16 v1, p1

    .line 149
    .line 150
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 151
    .line 152
    move-object/from16 v8, p2

    .line 153
    .line 154
    check-cast v8, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    and-int/lit8 v9, v8, 0x3

    .line 161
    .line 162
    if-eq v9, v3, :cond_6

    .line 163
    .line 164
    move v4, v7

    .line 165
    :cond_6
    and-int/lit8 v3, v8, 0x1

    .line 166
    .line 167
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_7

    .line 172
    .line 173
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    invoke-direct {v3, v0, v6, v7}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V

    .line 176
    .line 177
    .line 178
    const v0, -0x18dfe5ef

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const/16 v3, 0x30

    .line 186
    .line 187
    invoke-static {v5, v0, v1, v3, v7}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 192
    .line 193
    .line 194
    :goto_4
    return-object v2

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
