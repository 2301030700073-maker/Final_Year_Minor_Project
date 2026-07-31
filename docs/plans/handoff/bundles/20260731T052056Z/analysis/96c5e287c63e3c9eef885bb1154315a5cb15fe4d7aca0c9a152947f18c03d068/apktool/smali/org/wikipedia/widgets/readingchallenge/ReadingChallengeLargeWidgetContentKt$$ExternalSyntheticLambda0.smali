.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$6:Z

    .line 17
    .line 18
    iput-wide p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$7:J

    .line 19
    .line 20
    iput p11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$8:I

    .line 21
    .line 22
    iput p12, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$9:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/glance/layout/RowScopeImplInstance;

    .line 6
    .line 7
    move-object/from16 v6, p2

    .line 8
    .line 9
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroidx/glance/layout/WidthModifier;

    .line 22
    .line 23
    sget-object v2, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 26
    .line 27
    .line 28
    iget-object v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 29
    .line 30
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v12, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 35
    .line 36
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    or-int/2addr v2, v3

    .line 45
    move-object v10, v12

    .line 46
    iget-wide v11, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$2:J

    .line 47
    .line 48
    invoke-virtual {v6, v11, v12}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    or-int/2addr v2, v3

    .line 53
    iget-object v13, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    or-int/2addr v2, v3

    .line 60
    iget-object v14, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function2;

    .line 61
    .line 62
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    or-int/2addr v2, v3

    .line 67
    iget-object v8, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    or-int/2addr v2, v3

    .line 74
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-nez v2, :cond_0

    .line 79
    .line 80
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 81
    .line 82
    if-ne v3, v2, :cond_1

    .line 83
    .line 84
    :cond_0
    new-instance v7, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;

    .line 85
    .line 86
    invoke-direct/range {v7 .. v14}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object v3, v7

    .line 93
    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-static {v1, v3, v6, v2}, Lkotlin/ResultKt;->LazyColumn-EiNPFjs(Landroidx/glance/GlanceModifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Landroidx/glance/layout/WidthModifier;

    .line 100
    .line 101
    new-instance v3, Landroidx/glance/unit/Dimension$Dp;

    .line 102
    .line 103
    const/high16 v4, 0x41400000    # 12.0f

    .line 104
    .line 105
    invoke-direct {v3, v4}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v3}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v6, v2}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 112
    .line 113
    .line 114
    iget-boolean v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$6:Z

    .line 115
    .line 116
    iget-wide v2, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$7:J

    .line 117
    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    invoke-virtual {v10}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getExpandedMascotSize-D9Ej5fM()F

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    new-instance v4, Landroidx/compose/ui/unit/Dp;

    .line 125
    .line 126
    invoke-direct {v4, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 127
    .line 128
    .line 129
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {v10}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getTitleBarIconSize-D9Ej5fM()F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    sub-float/2addr v1, v2

    .line 138
    new-instance v2, Landroidx/compose/ui/unit/Dp;

    .line 139
    .line 140
    invoke-direct {v2, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 141
    .line 142
    .line 143
    invoke-static {v4, v2}, Landroidx/work/Operation$State;->minOf(Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v10}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getSideMascotSize-D9Ej5fM()F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    new-instance v4, Landroidx/compose/ui/unit/Dp;

    .line 155
    .line 156
    invoke-direct {v4, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 157
    .line 158
    .line 159
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {v10}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getTitleBarIconSize-D9Ej5fM()F

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    sub-float/2addr v1, v2

    .line 168
    new-instance v2, Landroidx/compose/ui/unit/Dp;

    .line 169
    .line 170
    invoke-direct {v2, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v2}, Landroidx/work/Operation$State;->minOf(Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 178
    .line 179
    :goto_0
    iget v14, v1, Landroidx/compose/ui/unit/Dp;->value:F

    .line 180
    .line 181
    invoke-virtual {v10}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getRightColumnExtraSpace-D9Ej5fM()F

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    add-float/2addr v1, v14

    .line 186
    new-instance v2, Landroidx/glance/layout/WidthModifier;

    .line 187
    .line 188
    new-instance v3, Landroidx/glance/unit/Dimension$Dp;

    .line 189
    .line 190
    invoke-direct {v3, v1}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 191
    .line 192
    .line 193
    invoke-direct {v2, v3}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 194
    .line 195
    .line 196
    new-instance v1, Landroidx/glance/layout/HeightModifier;

    .line 197
    .line 198
    sget-object v3, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 199
    .line 200
    invoke-direct {v1, v3}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1}, Landroidx/glance/layout/WidthModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    move-object v12, v10

    .line 208
    new-instance v10, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;

    .line 209
    .line 210
    const/4 v15, 0x1

    .line 211
    iget v11, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$8:I

    .line 212
    .line 213
    iget v13, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;->f$9:I

    .line 214
    .line 215
    invoke-direct/range {v10 .. v15}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;-><init>(ILorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;IFI)V

    .line 216
    .line 217
    .line 218
    const v0, -0x62d72270    # -2.234916E-21f

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v10, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    const/16 v7, 0xc00

    .line 226
    .line 227
    const/4 v8, 0x2

    .line 228
    const/4 v3, 0x0

    .line 229
    const/4 v4, 0x2

    .line 230
    invoke-static/range {v2 .. v8}, Landroidx/room/Room;->Column-K4GKKTE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 231
    .line 232
    .line 233
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 234
    .line 235
    return-object v0
.end method
