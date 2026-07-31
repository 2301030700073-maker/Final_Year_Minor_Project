.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLjava/lang/String;JII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$5:J

    .line 15
    .line 16
    iput p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$6:I

    .line 17
    .line 18
    iput p10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$7:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/glance/layout/RowScopeImplInstance;

    .line 3
    .line 4
    move-object/from16 v5, p2

    .line 5
    .line 6
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    move-object/from16 v1, p3

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroidx/glance/layout/WidthModifier;

    .line 19
    .line 20
    sget-object v1, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 23
    .line 24
    .line 25
    iget-object v7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 26
    .line 27
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    or-int/2addr v1, v2

    .line 42
    iget-object v9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    or-int/2addr v1, v2

    .line 49
    iget-wide v10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$3:J

    .line 50
    .line 51
    invoke-virtual {v5, v10, v11}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    or-int/2addr v1, v2

    .line 56
    iget-object v12, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    or-int/2addr v1, v2

    .line 63
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 70
    .line 71
    if-ne v2, v1, :cond_1

    .line 72
    .line 73
    :cond_0
    new-instance v6, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;

    .line 74
    .line 75
    invoke-direct/range {v6 .. v12}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda19;-><init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object v2, v6

    .line 82
    :cond_1
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-static {v0, v2, v5, v1}, Lkotlin/ResultKt;->LazyColumn-EiNPFjs(Landroidx/glance/GlanceModifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroidx/glance/layout/WidthModifier;

    .line 89
    .line 90
    new-instance v2, Landroidx/glance/unit/Dimension$Dp;

    .line 91
    .line 92
    const/high16 v3, 0x41400000    # 12.0f

    .line 93
    .line 94
    invoke-direct {v2, v3}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v2}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v5, v1}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getSideMascotSize-D9Ej5fM()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    new-instance v1, Landroidx/compose/ui/unit/Dp;

    .line 108
    .line 109
    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 110
    .line 111
    .line 112
    iget-wide v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$5:J

    .line 113
    .line 114
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {v8}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getTitleBarIconSize-D9Ej5fM()F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    sub-float/2addr v0, v2

    .line 123
    new-instance v2, Landroidx/compose/ui/unit/Dp;

    .line 124
    .line 125
    invoke-direct {v2, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v2}, Landroidx/work/Operation$State;->minOf(Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 133
    .line 134
    iget v12, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 135
    .line 136
    invoke-virtual {v8}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getRightColumnExtraSpace-D9Ej5fM()F

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    add-float/2addr v0, v12

    .line 141
    new-instance v1, Landroidx/glance/layout/WidthModifier;

    .line 142
    .line 143
    new-instance v2, Landroidx/glance/unit/Dimension$Dp;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v2}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Landroidx/glance/layout/HeightModifier;

    .line 152
    .line 153
    sget-object v2, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 154
    .line 155
    invoke-direct {v0, v2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Landroidx/glance/layout/WidthModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object v10, v8

    .line 163
    new-instance v8, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;

    .line 164
    .line 165
    const/4 v13, 0x0

    .line 166
    iget v9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$6:I

    .line 167
    .line 168
    iget v11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;->f$7:I

    .line 169
    .line 170
    invoke-direct/range {v8 .. v13}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;-><init>(ILorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;IFI)V

    .line 171
    .line 172
    .line 173
    const p0, 0x6cc1d26b

    .line 174
    .line 175
    .line 176
    invoke-static {p0, v8, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    const/16 v6, 0xc00

    .line 181
    .line 182
    const/4 v7, 0x2

    .line 183
    const/4 v2, 0x0

    .line 184
    const/4 v3, 0x2

    .line 185
    invoke-static/range {v1 .. v7}, Landroidx/room/Room;->Column-K4GKKTE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 186
    .line 187
    .line 188
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 189
    .line 190
    return-object p0
.end method
