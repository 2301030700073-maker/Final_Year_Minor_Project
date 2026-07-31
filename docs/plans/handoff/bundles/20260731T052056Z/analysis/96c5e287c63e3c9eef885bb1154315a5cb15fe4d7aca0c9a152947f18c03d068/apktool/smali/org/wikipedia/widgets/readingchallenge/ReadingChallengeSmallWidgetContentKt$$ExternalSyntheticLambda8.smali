.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

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
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    check-cast v7, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    and-int/lit8 v8, v7, 0x3

    .line 28
    .line 29
    if-eq v8, v4, :cond_0

    .line 30
    .line 31
    move v3, v5

    .line 32
    :cond_0
    and-int/lit8 v4, v7, 0x1

    .line 33
    .line 34
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    sget-object v3, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->Companion:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$Companion;

    .line 41
    .line 42
    sget-object v4, Landroidx/glance/CompositionLocalsKt;->LocalSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroidx/compose/ui/unit/DpSize;

    .line 49
    .line 50
    iget-wide v4, v4, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v5}, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$Companion;->from-EaSLcWc(J)Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->getBadgeIconSize-D9Ej5fM()F

    .line 60
    .line 61
    .line 62
    move-result v11

    .line 63
    invoke-virtual {v3}, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->getBadgeTextSize-XSAIIZE()J

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    iget-wide v14, v6, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->contentColor:J

    .line 68
    .line 69
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    .line 70
    .line 71
    invoke-direct {v13, v14, v15}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 72
    .line 73
    .line 74
    const/16 v18, 0x0

    .line 75
    .line 76
    const/16 v19, 0x90

    .line 77
    .line 78
    iget-object v7, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 79
    .line 80
    const v10, 0x7f08016a

    .line 81
    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    const/16 v16, 0x0

    .line 85
    .line 86
    move-object/from16 v17, v1

    .line 87
    .line 88
    invoke-static/range {v7 .. v19}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetBadge-LNF6LQw(Ljava/lang/String;JIFFLandroidx/compose/ui/graphics/Color;JLandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    move-object/from16 v17, v1

    .line 93
    .line 94
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-object v2

    .line 98
    :pswitch_0
    move-object/from16 v13, p1

    .line 99
    .line 100
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 101
    .line 102
    move-object/from16 v1, p2

    .line 103
    .line 104
    check-cast v1, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    and-int/lit8 v7, v1, 0x3

    .line 111
    .line 112
    if-eq v7, v4, :cond_2

    .line 113
    .line 114
    move v3, v5

    .line 115
    :cond_2
    and-int/2addr v1, v5

    .line 116
    invoke-virtual {v13, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->Companion:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$Companion;

    .line 123
    .line 124
    sget-object v3, Landroidx/glance/CompositionLocalsKt;->LocalSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 125
    .line 126
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Landroidx/compose/ui/unit/DpSize;

    .line 131
    .line 132
    iget-wide v3, v3, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v4}, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$Companion;->from-EaSLcWc(J)Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->getBadgeIconSize-D9Ej5fM()F

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    invoke-virtual {v1}, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;->getBadgeTextSize-XSAIIZE()J

    .line 146
    .line 147
    .line 148
    move-result-wide v4

    .line 149
    iget-wide v10, v6, Lorg/wikipedia/widgets/readingchallenge/WidgetCombination;->contentColor:J

    .line 150
    .line 151
    const/4 v14, 0x0

    .line 152
    const/16 v15, 0xb0

    .line 153
    .line 154
    iget-object v3, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 155
    .line 156
    const v6, 0x7f0801eb

    .line 157
    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v12, 0x0

    .line 162
    invoke-static/range {v3 .. v15}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetBadge-LNF6LQw(Ljava/lang/String;JIFFLandroidx/compose/ui/graphics/Color;JLandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 167
    .line 168
    .line 169
    :goto_1
    return-object v2

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
