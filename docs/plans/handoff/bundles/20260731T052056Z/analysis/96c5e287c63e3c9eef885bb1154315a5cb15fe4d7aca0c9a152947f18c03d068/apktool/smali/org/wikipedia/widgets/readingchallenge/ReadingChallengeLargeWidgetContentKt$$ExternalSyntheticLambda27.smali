.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/glance/GlanceModifier;

.field public final synthetic f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:J

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLjava/lang/String;JIILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$0:Landroidx/glance/GlanceModifier;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$4:J

    .line 13
    .line 14
    iput-object p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-wide p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$6:J

    .line 17
    .line 18
    iput p10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$7:I

    .line 19
    .line 20
    iput p11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$8:I

    .line 21
    .line 22
    iput-object p12, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$9:Landroid/content/Context;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    move v2, v5

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    and-int/2addr v1, v5

    .line 25
    invoke-virtual {v4, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$0:Landroidx/glance/GlanceModifier;

    .line 32
    .line 33
    iget-object v6, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 34
    .line 35
    invoke-static {v1, v6}, Lkotlin/ResultKt;->clickable(Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/action/RunCallbackAction;)Landroidx/glance/GlanceModifier;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v5, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;

    .line 40
    .line 41
    iget-object v7, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 42
    .line 43
    iget-object v8, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$3:Ljava/lang/String;

    .line 44
    .line 45
    iget-wide v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$4:J

    .line 46
    .line 47
    iget-object v11, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$5:Ljava/lang/String;

    .line 48
    .line 49
    iget-wide v12, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$6:J

    .line 50
    .line 51
    iget v14, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$7:I

    .line 52
    .line 53
    iget v15, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$8:I

    .line 54
    .line 55
    iget-object v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda27;->f$9:Landroid/content/Context;

    .line 56
    .line 57
    move-object/from16 v16, v0

    .line 58
    .line 59
    invoke-direct/range {v5 .. v16}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;-><init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLjava/lang/String;JIILandroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    const v0, -0x1de8c37b

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v5, v4}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/16 v5, 0xc00

    .line 70
    .line 71
    const/4 v6, 0x6

    .line 72
    move-object v0, v1

    .line 73
    const/4 v1, 0x0

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-static/range {v0 .. v6}, Landroidx/room/Room;->Column-K4GKKTE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 80
    .line 81
    .line 82
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 83
    .line 84
    return-object v0
.end method
