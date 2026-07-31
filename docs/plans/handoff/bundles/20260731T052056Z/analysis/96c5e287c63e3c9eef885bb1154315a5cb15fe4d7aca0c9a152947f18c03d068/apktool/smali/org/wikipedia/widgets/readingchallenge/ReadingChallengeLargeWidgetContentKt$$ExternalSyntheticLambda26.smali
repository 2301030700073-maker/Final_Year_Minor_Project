.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/glance/GlanceModifier;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;ILandroidx/glance/GlanceModifier;JJJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$2:Landroidx/glance/GlanceModifier;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$3:J

    .line 11
    .line 12
    iput-wide p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$4:J

    .line 13
    .line 14
    iput-wide p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$5:J

    .line 15
    .line 16
    iput p10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$6:I

    .line 17
    .line 18
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
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result v11

    .line 14
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;

    .line 15
    .line 16
    iget v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$1:I

    .line 17
    .line 18
    iget-object v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$2:Landroidx/glance/GlanceModifier;

    .line 19
    .line 20
    iget-wide v3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$3:J

    .line 21
    .line 22
    iget-wide v5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$4:J

    .line 23
    .line 24
    iget-wide v7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$5:J

    .line 25
    .line 26
    iget v9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda26;->f$6:I

    .line 27
    .line 28
    invoke-static/range {v0 .. v11}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->StreakOngoingLargeWidget-EMNEwkI(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeState$StreakOngoingReadToday;ILandroidx/glance/GlanceModifier;JJJILandroidx/compose/runtime/GapComposer;I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method
