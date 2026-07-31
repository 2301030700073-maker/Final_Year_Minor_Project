.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/glance/GlanceModifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/GlanceModifier;IIJZLkotlin/jvm/functions/Function2;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$0:Landroidx/glance/GlanceModifier;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$2:I

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$3:J

    .line 11
    .line 12
    iput-boolean p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$4:Z

    .line 13
    .line 14
    iput-object p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$5:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$6:I

    .line 17
    .line 18
    iput p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$7:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$6:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$0:Landroidx/glance/GlanceModifier;

    .line 18
    .line 19
    iget v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$1:I

    .line 20
    .line 21
    iget v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$2:I

    .line 22
    .line 23
    iget-wide v3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$3:J

    .line 24
    .line 25
    iget-boolean v5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$4:Z

    .line 26
    .line 27
    iget-object v6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$5:Lkotlin/jvm/functions/Function2;

    .line 28
    .line 29
    iget v9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda12;->f$7:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v9}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->SmallWidget-fWhpE4E(Landroidx/glance/GlanceModifier;IIJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;II)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method
