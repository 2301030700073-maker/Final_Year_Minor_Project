.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(IIJJIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$1:I

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$3:J

    .line 11
    .line 12
    iput p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$4:I

    .line 13
    .line 14
    iput p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

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
    move-result v9

    .line 14
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$0:I

    .line 15
    .line 16
    iget v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$1:I

    .line 17
    .line 18
    iget-wide v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$2:J

    .line 19
    .line 20
    iget-wide v4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$3:J

    .line 21
    .line 22
    iget v6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$4:I

    .line 23
    .line 24
    iget v7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda34;->f$5:I

    .line 25
    .line 26
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->EnrolledNotStartedLargeWidget-Y0xEhic(IIJJIILandroidx/compose/runtime/GapComposer;I)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method
