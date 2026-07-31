.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/glance/GlanceModifier;

.field public final synthetic f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$2:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingNeedsReading;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:J

.field public final synthetic f$6:I

.field public final synthetic f$7:J

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingNeedsReading;IIJIJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$0:Landroidx/glance/GlanceModifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$2:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingNeedsReading;

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$4:I

    .line 13
    .line 14
    iput-wide p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$5:J

    .line 15
    .line 16
    iput p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$6:I

    .line 17
    .line 18
    iput-wide p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$7:J

    .line 19
    .line 20
    iput p11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$8:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$8:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$0:Landroidx/glance/GlanceModifier;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$2:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingNeedsReading;

    .line 22
    .line 23
    iget v3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$3:I

    .line 24
    .line 25
    iget v4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$4:I

    .line 26
    .line 27
    iget-wide v5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$5:J

    .line 28
    .line 29
    iget v7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$6:I

    .line 30
    .line 31
    iget-wide v8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda28;->f$7:J

    .line 32
    .line 33
    invoke-static/range {v0 .. v11}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->StreakOngoingNeedsReadingLargeWidget-IDJXs2g(Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingNeedsReading;IIJIJLandroidx/compose/runtime/GapComposer;I)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method
