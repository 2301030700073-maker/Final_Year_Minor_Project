.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/glance/GlanceModifier;

.field public final synthetic f$3:I

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(JLandroidx/glance/GlanceModifier;IJJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$0:J

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$1:Landroidx/glance/GlanceModifier;

    .line 10
    .line 11
    iput p4, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$3:I

    .line 12
    .line 13
    iput-wide p5, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$5:J

    .line 14
    .line 15
    iput-wide p7, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$6:J

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/glance/GlanceModifier;IJJJI)V
    .locals 0

    .line 18
    const/4 p9, 0x1

    iput p9, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$1:Landroidx/glance/GlanceModifier;

    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$3:I

    iput-wide p3, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$0:J

    iput-wide p5, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$5:J

    iput-wide p7, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$6:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v11, p1

    .line 11
    .line 12
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    move-object/from16 v1, p2

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const v1, 0xc00181

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result v12

    .line 28
    iget-object v3, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$1:Landroidx/glance/GlanceModifier;

    .line 29
    .line 30
    iget v4, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$3:I

    .line 31
    .line 32
    iget-wide v5, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$0:J

    .line 33
    .line 34
    iget-wide v7, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$5:J

    .line 35
    .line 36
    iget-wide v9, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$6:J

    .line 37
    .line 38
    invoke-static/range {v3 .. v12}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->BoxedStreakProgressBar-nhtM5HE(Landroidx/glance/GlanceModifier;IJJJLandroidx/compose/runtime/GapComposer;I)V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :pswitch_0
    move-object/from16 v1, p1

    .line 43
    .line 44
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 45
    .line 46
    move-object/from16 v3, p2

    .line 47
    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    and-int/lit8 v4, v3, 0x3

    .line 55
    .line 56
    const/4 v5, 0x2

    .line 57
    const/4 v6, 0x1

    .line 58
    if-eq v4, v5, :cond_0

    .line 59
    .line 60
    move v4, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v4, 0x0

    .line 63
    :goto_0
    and-int/2addr v3, v6

    .line 64
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    new-instance v13, Landroidx/glance/AndroidResourceImageProvider;

    .line 71
    .line 72
    const v3, 0x7f080317

    .line 73
    .line 74
    .line 75
    invoke-direct {v13, v3}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Landroidx/glance/layout/WidthModifier;

    .line 79
    .line 80
    sget-object v4, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 81
    .line 82
    invoke-direct {v3, v4}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 83
    .line 84
    .line 85
    const/high16 v4, 0x42400000    # 48.0f

    .line 86
    .line 87
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpKt;->height-3ABfNKs(Landroidx/glance/GlanceModifier;F)Landroidx/glance/GlanceModifier;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    new-instance v3, Landroidx/glance/color/DayNightColorProvider;

    .line 92
    .line 93
    iget-wide v4, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$0:J

    .line 94
    .line 95
    invoke-direct {v3, v4, v5, v4, v5}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 96
    .line 97
    .line 98
    new-instance v4, Landroidx/glance/ColorFilter;

    .line 99
    .line 100
    new-instance v5, Landroidx/glance/TintColorFilterParams;

    .line 101
    .line 102
    invoke-direct {v5, v3}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v4, v5}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 106
    .line 107
    .line 108
    const v18, 0x8030

    .line 109
    .line 110
    .line 111
    const/16 v19, 0x8

    .line 112
    .line 113
    const/4 v15, 0x0

    .line 114
    move-object/from16 v17, v1

    .line 115
    .line 116
    move-object/from16 v16, v4

    .line 117
    .line 118
    invoke-static/range {v13 .. v19}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;

    .line 122
    .line 123
    iget v4, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$3:I

    .line 124
    .line 125
    iget-wide v5, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$5:J

    .line 126
    .line 127
    iget-wide v7, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$6:J

    .line 128
    .line 129
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;-><init>(IJJ)V

    .line 130
    .line 131
    .line 132
    const v4, 0x2dfe62dd

    .line 133
    .line 134
    .line 135
    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 136
    .line 137
    .line 138
    move-result-object v16

    .line 139
    const/16 v18, 0xc00

    .line 140
    .line 141
    const/16 v19, 0x2

    .line 142
    .line 143
    iget-object v13, v0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda0;->f$1:Landroidx/glance/GlanceModifier;

    .line 144
    .line 145
    const/4 v14, 0x0

    .line 146
    const/4 v15, 0x1

    .line 147
    invoke-static/range {v13 .. v19}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    move-object/from16 v17, v1

    .line 152
    .line 153
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 154
    .line 155
    .line 156
    :goto_1
    return-object v2

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
