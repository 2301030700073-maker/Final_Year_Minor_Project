.class public final synthetic Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 12
    iput p3, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p2, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 8
    .line 9
    iput-object p1, p0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-boolean v4, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    move-object/from16 v0, p1

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 21
    .line 22
    move-object/from16 v1, p2

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    move-object/from16 v7, p3

    .line 27
    .line 28
    check-cast v7, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    and-int/lit8 v0, v7, 0x11

    .line 38
    .line 39
    const/16 v8, 0x10

    .line 40
    .line 41
    if-eq v0, v8, :cond_0

    .line 42
    .line 43
    move v5, v3

    .line 44
    :cond_0
    and-int/lit8 v0, v7, 0x1

    .line 45
    .line 46
    invoke-virtual {v1, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    const/16 v12, 0xd

    .line 54
    .line 55
    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    const/high16 v9, 0x41400000    # 12.0f

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v3, 0x6

    .line 66
    invoke-static {v3, v1, v0, v6, v4}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->NotificationView(ILandroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-object v2

    .line 74
    :pswitch_0
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 75
    .line 76
    move-object/from16 v0, p1

    .line 77
    .line 78
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 79
    .line 80
    move-object/from16 v1, p2

    .line 81
    .line 82
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 83
    .line 84
    move-object/from16 v2, p3

    .line 85
    .line 86
    check-cast v2, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const v2, -0xbba9706

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 95
    .line 96
    .line 97
    sget-object v2, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 104
    .line 105
    iget-wide v2, v2, Landroidx/compose/foundation/text/selection/TextSelectionColors;->handleColor:J

    .line 106
    .line 107
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    or-int/2addr v7, v8

    .line 116
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    or-int/2addr v7, v8

    .line 121
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    if-nez v7, :cond_2

    .line 126
    .line 127
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 128
    .line 129
    if-ne v8, v7, :cond_3

    .line 130
    .line 131
    :cond_2
    new-instance v8, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda9;

    .line 132
    .line 133
    invoke-direct {v8, v2, v3, v6, v4}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda9;-><init>(JLkotlin/jvm/functions/Function0;Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 140
    .line 141
    invoke-static {v0, v8}, Landroidx/compose/ui/draw/ClipKt;->drawWithCache(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 146
    .line 147
    .line 148
    return-object v0

    .line 149
    :pswitch_1
    move-object v7, v6

    .line 150
    check-cast v7, Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;

    .line 151
    .line 152
    move-object/from16 v1, p1

    .line 153
    .line 154
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 155
    .line 156
    move-object/from16 v15, p2

    .line 157
    .line 158
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 159
    .line 160
    move-object/from16 v4, p3

    .line 161
    .line 162
    check-cast v4, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    and-int/lit8 v6, v4, 0x6

    .line 172
    .line 173
    if-nez v6, :cond_5

    .line 174
    .line 175
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-eqz v6, :cond_4

    .line 180
    .line 181
    const/4 v6, 0x4

    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const/4 v6, 0x2

    .line 184
    :goto_1
    or-int/2addr v4, v6

    .line 185
    :cond_5
    and-int/lit8 v6, v4, 0x13

    .line 186
    .line 187
    const/16 v8, 0x12

    .line 188
    .line 189
    if-eq v6, v8, :cond_6

    .line 190
    .line 191
    move v5, v3

    .line 192
    :cond_6
    and-int/2addr v3, v4

    .line 193
    invoke-virtual {v15, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_7

    .line 198
    .line 199
    sget-object v6, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->INSTANCE:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    .line 200
    .line 201
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 202
    .line 203
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    .line 204
    .line 205
    invoke-interface {v1, v3, v4}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 210
    .line 211
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 216
    .line 217
    iget-wide v10, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 218
    .line 219
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 224
    .line 225
    iget-wide v12, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 226
    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    const/16 v17, 0x20

    .line 230
    .line 231
    iget-boolean v8, v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 232
    .line 233
    const/4 v14, 0x0

    .line 234
    invoke-virtual/range {v6 .. v17}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->Indicator-2poqoh4(Landroidx/compose/material3/pulltorefresh/PullToRefreshStateImpl;ZLandroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/GapComposer;II)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_7
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 239
    .line 240
    .line 241
    :goto_2
    return-object v2

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
