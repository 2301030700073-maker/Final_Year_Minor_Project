.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;ZLorg/wikipedia/util/Resource;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$0:Z

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/page/PageTitle;ZLkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 16
    const/4 p5, 0x2

    iput p5, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    iput-boolean p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$0:Z

    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;II)V
    .locals 0

    .line 17
    iput p6, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-boolean p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$0:Z

    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v5, Landroidx/compose/runtime/State;

    .line 18
    .line 19
    check-cast v4, Lorg/wikipedia/util/Resource;

    .line 20
    .line 21
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    move-object/from16 v13, p1

    .line 24
    .line 25
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    and-int/lit8 v7, v1, 0x3

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    if-eq v7, v8, :cond_0

    .line 39
    .line 40
    move v7, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v7, 0x0

    .line 43
    :goto_0
    and-int/2addr v1, v6

    .line 44
    invoke-virtual {v13, v1, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    invoke-direct {v1, v5, v6}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/State;I)V

    .line 53
    .line 54
    .line 55
    const v5, -0x105e77b7

    .line 56
    .line 57
    .line 58
    invoke-static {v5, v1, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v5, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;

    .line 63
    .line 64
    const/4 v6, 0x3

    .line 65
    iget-boolean v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$0:Z

    .line 66
    .line 67
    invoke-direct {v5, v6, v4, v3, v0}, Lorg/wikipedia/compose/components/SettingsKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 68
    .line 69
    .line 70
    const v0, 0x6c0f69cb

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v5, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget v3, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    .line 78
    .line 79
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 80
    .line 81
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 86
    .line 87
    iget-wide v7, v4, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 88
    .line 89
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 94
    .line 95
    iget-wide v9, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 96
    .line 97
    const-wide/16 v11, 0x0

    .line 98
    .line 99
    const/16 v14, 0x3c

    .line 100
    .line 101
    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/TopAppBarDefaults;->topAppBarColors-5tl4gsc(JJJLandroidx/compose/runtime/GapComposer;I)Landroidx/compose/material3/TopAppBarColors;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const/16 v16, 0x186

    .line 106
    .line 107
    const/16 v17, 0xba

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v11, 0x0

    .line 112
    const/4 v12, 0x0

    .line 113
    const/4 v14, 0x0

    .line 114
    move-object v9, v0

    .line 115
    move-object v7, v1

    .line 116
    move-object v15, v13

    .line 117
    move-object v13, v3

    .line 118
    invoke-static/range {v7 .. v17}, Landroidx/compose/material3/AppBarKt;->TopAppBar-GHTll3U(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/PinnedScrollBehavior;Landroidx/compose/runtime/GapComposer;II)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 123
    .line 124
    .line 125
    :goto_1
    return-object v2

    .line 126
    :pswitch_0
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 129
    .line 130
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 131
    .line 132
    move-object/from16 v7, p1

    .line 133
    .line 134
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 135
    .line 136
    move-object/from16 v1, p2

    .line 137
    .line 138
    check-cast v1, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    move-object v6, v4

    .line 148
    move-object v4, v3

    .line 149
    move-object v3, v5

    .line 150
    iget-boolean v5, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$0:Z

    .line 151
    .line 152
    invoke-static/range {v3 .. v8}, Lorg/wikipedia/compose/components/TabsBoxKt;->ArticleCard(Landroidx/compose/ui/Modifier;Lorg/wikipedia/page/PageTitle;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 153
    .line 154
    .line 155
    return-object v2

    .line 156
    :pswitch_1
    move-object v10, v5

    .line 157
    check-cast v10, Ljava/lang/String;

    .line 158
    .line 159
    move-object v11, v4

    .line 160
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 161
    .line 162
    move-object v12, v3

    .line 163
    check-cast v12, Landroidx/compose/ui/Modifier;

    .line 164
    .line 165
    move-object/from16 v13, p1

    .line 166
    .line 167
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 168
    .line 169
    move-object/from16 v1, p2

    .line 170
    .line 171
    check-cast v1, Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    iget-boolean v9, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$0:Z

    .line 181
    .line 182
    invoke-static/range {v9 .. v14}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CustomizationScreenSwitch(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 183
    .line 184
    .line 185
    return-object v2

    .line 186
    :pswitch_2
    check-cast v5, Ljava/lang/String;

    .line 187
    .line 188
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 189
    .line 190
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 191
    .line 192
    move-object/from16 v7, p1

    .line 193
    .line 194
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 195
    .line 196
    move-object/from16 v1, p2

    .line 197
    .line 198
    check-cast v1, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    iget-boolean v0, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda6;->f$0:Z

    .line 208
    .line 209
    move-object v6, v5

    .line 210
    move-object v5, v4

    .line 211
    move-object v4, v6

    .line 212
    move-object v6, v3

    .line 213
    move v3, v0

    .line 214
    invoke-static/range {v3 .. v8}, Lorg/jsoup/Jsoup;->GamesHubLanguageChip(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 215
    .line 216
    .line 217
    return-object v2

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
