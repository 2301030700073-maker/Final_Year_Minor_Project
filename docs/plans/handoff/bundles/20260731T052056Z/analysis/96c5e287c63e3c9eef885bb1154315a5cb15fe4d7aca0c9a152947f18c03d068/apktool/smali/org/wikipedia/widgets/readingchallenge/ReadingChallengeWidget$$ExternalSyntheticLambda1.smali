.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

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
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/State;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v11, p1

    .line 14
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    move-object/from16 v0, p2

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    and-int/lit8 v5, v0, 0x3

    .line 25
    .line 26
    if-eq v5, v2, :cond_0

    .line 27
    .line 28
    move v3, v4

    .line 29
    :cond_0
    and-int/2addr v0, v4

    .line 30
    invoke-virtual {v11, v0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/16 p0, 0x12c

    .line 47
    .line 48
    const/4 v0, 0x6

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-static {p0, v0, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {p0, v0, v3}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    sget-object v10, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->lambda$-2068516575:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 67
    .line 68
    const v12, 0x30d80

    .line 69
    .line 70
    .line 71
    const/16 v13, 0x12

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    invoke-static/range {v5 .. v13}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-object v1

    .line 83
    :pswitch_0
    move-object v0, p1

    .line 84
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 85
    .line 86
    move-object/from16 v5, p2

    .line 87
    .line 88
    check-cast v5, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    and-int/lit8 v6, v5, 0x3

    .line 95
    .line 96
    if-eq v6, v2, :cond_2

    .line 97
    .line 98
    move v2, v4

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move v2, v3

    .line 101
    :goto_1
    and-int/2addr v4, v5

    .line 102
    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_7

    .line 107
    .line 108
    sget-object v2, Landroidx/glance/CompositionLocalsKt;->LocalSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Landroidx/compose/ui/unit/DpSize;

    .line 115
    .line 116
    iget-wide v4, v2, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 117
    .line 118
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 119
    .line 120
    const v2, 0x7f12064c

    .line 121
    .line 122
    .line 123
    const-string v6, ""

    .line 124
    .line 125
    invoke-static {v2, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-nez v7, :cond_3

    .line 130
    .line 131
    move-object v7, v6

    .line 132
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-lez v7, :cond_5

    .line 137
    .line 138
    invoke-static {v2, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-nez v2, :cond_4

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    move-object v6, v2

    .line 146
    :goto_2
    invoke-static {v6}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :goto_3
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const/high16 v5, 0x43a00000    # 320.0f

    .line 160
    .line 161
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-ltz v4, :cond_6

    .line 166
    .line 167
    const v4, 0x2945d75d

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-static {p0, v2, v0, v3}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->ReadingChallengeLargeWidgetContent(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState;Lj$/time/LocalDate;Landroidx/compose/runtime/GapComposer;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_6
    const v4, 0x2947667d

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 193
    .line 194
    .line 195
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    check-cast p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState;

    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {p0, v2, v0, v3}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->ReadingChallengeSmallWidgetContent(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState;Lj$/time/LocalDate;Landroidx/compose/runtime/GapComposer;I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 212
    .line 213
    .line 214
    :goto_4
    return-object v1

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
