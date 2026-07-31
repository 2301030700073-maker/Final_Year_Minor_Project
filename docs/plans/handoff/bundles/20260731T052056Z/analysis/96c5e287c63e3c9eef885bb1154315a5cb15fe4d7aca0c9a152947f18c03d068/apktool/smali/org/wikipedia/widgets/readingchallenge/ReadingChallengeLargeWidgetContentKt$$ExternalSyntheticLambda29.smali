.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(ILorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;ILandroid/content/Context;JJI)V
    .locals 0

    .line 1
    iput p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$0:I

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 6
    .line 7
    iput p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$2:I

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$3:Landroid/content/Context;

    .line 10
    .line 11
    iput-wide p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$4:J

    .line 12
    .line 13
    iput-wide p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$5:J

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v11, p1

    .line 16
    .line 17
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v1, p2

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    and-int/lit8 v7, v1, 0x3

    .line 28
    .line 29
    if-eq v7, v5, :cond_0

    .line 30
    .line 31
    move v4, v6

    .line 32
    :cond_0
    and-int/2addr v1, v6

    .line 33
    invoke-virtual {v11, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {v3}, Landroidx/compose/ui/unit/DpKt;->fillMaxWidth(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    new-instance v1, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;

    .line 44
    .line 45
    iget v4, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$0:I

    .line 46
    .line 47
    iget-object v14, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 48
    .line 49
    invoke-direct {v1, v4, v14, v6}, Lorg/wikipedia/feed/onthisday/OnThisDayModuleKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Enum;I)V

    .line 50
    .line 51
    .line 52
    const v4, -0x1da41b4a

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v1, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const/16 v12, 0xc00

    .line 60
    .line 61
    const/4 v13, 0x4

    .line 62
    const/4 v8, 0x2

    .line 63
    const/4 v9, 0x0

    .line 64
    invoke-static/range {v7 .. v13}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    new-instance v12, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;

    .line 72
    .line 73
    iget v13, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$2:I

    .line 74
    .line 75
    iget-object v15, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$3:Landroid/content/Context;

    .line 76
    .line 77
    iget-wide v3, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$4:J

    .line 78
    .line 79
    iget-wide v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$5:J

    .line 80
    .line 81
    move-wide/from16 v18, v0

    .line 82
    .line 83
    move-wide/from16 v16, v3

    .line 84
    .line 85
    invoke-direct/range {v12 .. v19}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;-><init>(ILorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Landroid/content/Context;JJ)V

    .line 86
    .line 87
    .line 88
    const v0, 0x281b9748

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v12, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const/16 v12, 0xc00

    .line 96
    .line 97
    const/4 v13, 0x0

    .line 98
    const/4 v8, 0x1

    .line 99
    const/4 v9, 0x1

    .line 100
    invoke-static/range {v7 .. v13}, Landroidx/room/Room;->Column-K4GKKTE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-object v2

    .line 108
    :pswitch_0
    move-object/from16 v1, p1

    .line 109
    .line 110
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 111
    .line 112
    move-object/from16 v7, p2

    .line 113
    .line 114
    check-cast v7, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    and-int/lit8 v8, v7, 0x3

    .line 121
    .line 122
    if-eq v8, v5, :cond_2

    .line 123
    .line 124
    move v5, v6

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    move v5, v4

    .line 127
    :goto_1
    and-int/2addr v6, v7

    .line 128
    invoke-virtual {v1, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_3

    .line 133
    .line 134
    invoke-static {v3}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3}, Lkotlin/text/UStringsKt;->padding-VpY3zN4(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-array v5, v4, [Landroidx/glance/action/ActionParameters$Pair;

    .line 143
    .line 144
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, [Landroidx/glance/action/ActionParameters$Pair;

    .line 149
    .line 150
    invoke-static {v4}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    new-instance v5, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 155
    .line 156
    const-class v6, Lorg/wikipedia/widgets/readingchallenge/RandomArticleWidgetAction;

    .line 157
    .line 158
    invoke-direct {v5, v6, v4}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v3, v5}, Lkotlin/ResultKt;->clickable(Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/action/RunCallbackAction;)Landroidx/glance/GlanceModifier;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    new-instance v4, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;

    .line 166
    .line 167
    const/4 v13, 0x1

    .line 168
    iget v5, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$0:I

    .line 169
    .line 170
    iget-object v6, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 171
    .line 172
    iget v7, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$2:I

    .line 173
    .line 174
    iget-object v8, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$3:Landroid/content/Context;

    .line 175
    .line 176
    iget-wide v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$4:J

    .line 177
    .line 178
    iget-wide v11, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;->f$5:J

    .line 179
    .line 180
    invoke-direct/range {v4 .. v13}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda29;-><init>(ILorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;ILandroid/content/Context;JJI)V

    .line 181
    .line 182
    .line 183
    const v0, -0x14fb6ae

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const/16 v7, 0x180

    .line 191
    .line 192
    const/4 v8, 0x2

    .line 193
    const/4 v4, 0x0

    .line 194
    move-object v6, v1

    .line 195
    invoke-static/range {v3 .. v8}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_3
    move-object v6, v1

    .line 200
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 201
    .line 202
    .line 203
    :goto_2
    return-object v2

    .line 204
    nop

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
