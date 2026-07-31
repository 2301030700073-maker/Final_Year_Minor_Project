.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/glance/GlanceModifier;

.field public final synthetic f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$10:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:I

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/action/RunCallbackAction;JJILjava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$0:Landroidx/glance/GlanceModifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$3:J

    .line 11
    .line 12
    iput p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$4:I

    .line 13
    .line 14
    iput-object p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput p10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$7:I

    .line 19
    .line 20
    iput-boolean p11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$8:Z

    .line 21
    .line 22
    iput-object p12, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$9:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iput-object p13, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$10:Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    iput p14, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$11:I

    .line 27
    .line 28
    iput p15, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$12:I

    .line 29
    .line 30
    move/from16 p1, p16

    .line 31
    .line 32
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$13:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$11:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 19
    .line 20
    .line 21
    move-result v14

    .line 22
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$12:I

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result v15

    .line 28
    iget-object v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$0:Landroidx/glance/GlanceModifier;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 32
    .line 33
    move-object v4, v2

    .line 34
    iget-wide v2, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$2:J

    .line 35
    .line 36
    move-object v6, v4

    .line 37
    iget-wide v4, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$3:J

    .line 38
    .line 39
    move-object v7, v6

    .line 40
    iget v6, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$4:I

    .line 41
    .line 42
    move-object v8, v7

    .line 43
    iget-object v7, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$5:Ljava/lang/String;

    .line 44
    .line 45
    move-object v9, v8

    .line 46
    iget-object v8, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$6:Ljava/lang/String;

    .line 47
    .line 48
    move-object v10, v9

    .line 49
    iget v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$7:I

    .line 50
    .line 51
    move-object v11, v10

    .line 52
    iget-boolean v10, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$8:Z

    .line 53
    .line 54
    move-object v12, v11

    .line 55
    iget-object v11, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$9:Lkotlin/jvm/functions/Function2;

    .line 56
    .line 57
    move-object/from16 v16, v12

    .line 58
    .line 59
    iget-object v12, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$10:Lkotlin/jvm/functions/Function2;

    .line 60
    .line 61
    iget v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda32;->f$13:I

    .line 62
    .line 63
    move-object/from16 v17, v16

    .line 64
    .line 65
    move/from16 v16, v0

    .line 66
    .line 67
    move-object/from16 v0, v17

    .line 68
    .line 69
    invoke-static/range {v0 .. v16}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->GeneralLargeWidget-VQfMllA(Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/action/RunCallbackAction;JJILjava/lang/String;Ljava/lang/String;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;III)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    return-object v0
.end method
