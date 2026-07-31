.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;JLandroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$3:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

    .line 11
    .line 12
    iput-wide p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$4:J

    .line 13
    .line 14
    iput-object p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$5:Landroid/content/Context;

    .line 15
    .line 16
    iput p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/glance/layout/ColumnScopeImplInstance;

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
    new-instance v1, Landroidx/glance/layout/WidthModifier;

    .line 19
    .line 20
    sget-object v0, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;

    .line 26
    .line 27
    iget-object v7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 28
    .line 29
    iget-wide v8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$2:J

    .line 30
    .line 31
    iget-object v10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$5:Landroid/content/Context;

    .line 32
    .line 33
    iget v11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$6:I

    .line 34
    .line 35
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLandroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    move-wide v9, v8

    .line 39
    move-object v8, v7

    .line 40
    const v2, 0x6511a128

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/16 v6, 0xc00

    .line 48
    .line 49
    const/4 v7, 0x6

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static/range {v1 .. v7}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Landroidx/glance/layout/HeightModifier;

    .line 56
    .line 57
    sget-object v2, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 58
    .line 59
    invoke-direct {v1, v2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getStreakBadgeTextSize-XSAIIZE()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-virtual {v8}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getStreakBadgeIconSize-D9Ej5fM()F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    .line 71
    .line 72
    invoke-direct {v7, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 73
    .line 74
    .line 75
    const/4 v12, 0x0

    .line 76
    const/16 v13, 0x10

    .line 77
    .line 78
    move-wide v8, v9

    .line 79
    move-object v10, v1

    .line 80
    iget-object v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 81
    .line 82
    move-object v11, v5

    .line 83
    move v5, v4

    .line 84
    const v4, 0x7f08016a

    .line 85
    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static/range {v1 .. v13}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetBadge-LNF6LQw(Ljava/lang/String;JIFFLandroidx/compose/ui/graphics/Color;JLandroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 89
    .line 90
    .line 91
    move-object v5, v11

    .line 92
    new-instance v1, Landroidx/glance/layout/WidthModifier;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lkotlin/text/UStringsKt;->padding-VpY3zN4(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$3:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

    .line 102
    .line 103
    iget v2, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;->streak:I

    .line 104
    .line 105
    move-wide v3, v8

    .line 106
    sget-wide v7, Lorg/wikipedia/widgets/readingchallenge/WidgetColors;->white:J

    .line 107
    .line 108
    const v10, 0xc00180

    .line 109
    .line 110
    .line 111
    iget-wide v11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda1;->f$4:J

    .line 112
    .line 113
    move-object v9, v5

    .line 114
    move-wide v5, v11

    .line 115
    invoke-static/range {v1 .. v10}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->BoxedStreakProgressBar-nhtM5HE(Landroidx/glance/GlanceModifier;IJJJLandroidx/compose/runtime/GapComposer;I)V

    .line 116
    .line 117
    .line 118
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p0
.end method
