.class public final synthetic Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;->f$0:Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;->f$1:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/16 v5, 0x12

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x4

    .line 14
    const/4 v8, 0x1

    .line 15
    iget-object v9, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;->f$1:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 23
    .line 24
    move-object/from16 v10, p2

    .line 25
    .line 26
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    move-object/from16 v11, p3

    .line 29
    .line 30
    check-cast v11, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    and-int/lit8 v12, v11, 0x6

    .line 40
    .line 41
    if-nez v12, :cond_1

    .line 42
    .line 43
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    if-eqz v12, :cond_0

    .line 48
    .line 49
    move v6, v7

    .line 50
    :cond_0
    or-int/2addr v11, v6

    .line 51
    :cond_1
    and-int/lit8 v6, v11, 0x13

    .line 52
    .line 53
    if-eq v6, v5, :cond_2

    .line 54
    .line 55
    move v4, v8

    .line 56
    :cond_2
    and-int/lit8 v5, v11, 0x1

    .line 57
    .line 58
    invoke-virtual {v10, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    sget-object v4, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    .line 65
    .line 66
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 77
    .line 78
    invoke-interface {v1, v3, v5}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 83
    .line 84
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 89
    .line 90
    iget-wide v14, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 91
    .line 92
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 97
    .line 98
    iget-wide v5, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 99
    .line 100
    const/16 v20, 0x0

    .line 101
    .line 102
    const/16 v21, 0x20

    .line 103
    .line 104
    iget-object v11, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;->f$0:Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 105
    .line 106
    const/16 v18, 0x0

    .line 107
    .line 108
    move-wide/from16 v16, v5

    .line 109
    .line 110
    move-object/from16 v19, v10

    .line 111
    .line 112
    move-object v10, v4

    .line 113
    invoke-virtual/range {v10 .. v21}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->Indicator-2poqoh4(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/GapComposer;II)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    move-object/from16 v19, v10

    .line 118
    .line 119
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 120
    .line 121
    .line 122
    :goto_0
    return-object v2

    .line 123
    :pswitch_0
    move-object/from16 v1, p1

    .line 124
    .line 125
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 126
    .line 127
    move-object/from16 v10, p2

    .line 128
    .line 129
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 130
    .line 131
    move-object/from16 v11, p3

    .line 132
    .line 133
    check-cast v11, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    and-int/lit8 v12, v11, 0x6

    .line 143
    .line 144
    if-nez v12, :cond_5

    .line 145
    .line 146
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-eqz v12, :cond_4

    .line 151
    .line 152
    move v6, v7

    .line 153
    :cond_4
    or-int/2addr v11, v6

    .line 154
    :cond_5
    and-int/lit8 v6, v11, 0x13

    .line 155
    .line 156
    if-eq v6, v5, :cond_6

    .line 157
    .line 158
    move v4, v8

    .line 159
    :cond_6
    and-int/lit8 v5, v11, 0x1

    .line 160
    .line 161
    invoke-virtual {v10, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_7

    .line 166
    .line 167
    sget-object v4, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    .line 168
    .line 169
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 180
    .line 181
    invoke-interface {v1, v3, v5}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 186
    .line 187
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 192
    .line 193
    iget-wide v14, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 194
    .line 195
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 200
    .line 201
    iget-wide v5, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 202
    .line 203
    const/16 v20, 0x0

    .line 204
    .line 205
    const/16 v21, 0x20

    .line 206
    .line 207
    iget-object v11, v0, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda21;->f$0:Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 208
    .line 209
    const/16 v18, 0x0

    .line 210
    .line 211
    move-wide/from16 v16, v5

    .line 212
    .line 213
    move-object/from16 v19, v10

    .line 214
    .line 215
    move-object v10, v4

    .line 216
    invoke-virtual/range {v10 .. v21}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->Indicator-2poqoh4(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/GapComposer;II)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_7
    move-object/from16 v19, v10

    .line 221
    .line 222
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 223
    .line 224
    .line 225
    :goto_1
    return-object v2

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
