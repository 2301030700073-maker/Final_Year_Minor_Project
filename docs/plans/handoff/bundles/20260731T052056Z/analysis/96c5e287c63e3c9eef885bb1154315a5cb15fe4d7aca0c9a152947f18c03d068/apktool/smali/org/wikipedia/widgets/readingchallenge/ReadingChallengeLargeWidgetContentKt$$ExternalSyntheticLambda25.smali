.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/glance/GlanceModifier;

.field public final synthetic f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroid/content/Context;

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/GlanceModifier;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;JLandroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$0:Landroidx/glance/GlanceModifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$4:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

    .line 13
    .line 14
    iput-wide p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$5:J

    .line 15
    .line 16
    iput-object p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$6:Landroid/content/Context;

    .line 17
    .line 18
    iput p10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$7:I

    .line 19
    .line 20
    iput p11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$8:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v3, p1

    .line 2
    .line 3
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit8 v1, v0, 0x3

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    move v1, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    and-int/2addr v0, v4

    .line 23
    invoke-virtual {v3, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v4, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    iget-object v5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 32
    .line 33
    iget-object v6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$2:Ljava/lang/String;

    .line 34
    .line 35
    iget-wide v7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$3:J

    .line 36
    .line 37
    iget-object v9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$4:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

    .line 38
    .line 39
    iget-wide v10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$5:J

    .line 40
    .line 41
    iget-object v12, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$6:Landroid/content/Context;

    .line 42
    .line 43
    iget v13, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$7:I

    .line 44
    .line 45
    iget v14, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$8:I

    .line 46
    .line 47
    invoke-direct/range {v4 .. v14}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;JLandroid/content/Context;II)V

    .line 48
    .line 49
    .line 50
    const v0, 0x4f7300ce

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/16 v4, 0x180

    .line 58
    .line 59
    const/4 v5, 0x2

    .line 60
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda25;->f$0:Landroidx/glance/GlanceModifier;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-static/range {v0 .. v5}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 68
    .line 69
    .line 70
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method
