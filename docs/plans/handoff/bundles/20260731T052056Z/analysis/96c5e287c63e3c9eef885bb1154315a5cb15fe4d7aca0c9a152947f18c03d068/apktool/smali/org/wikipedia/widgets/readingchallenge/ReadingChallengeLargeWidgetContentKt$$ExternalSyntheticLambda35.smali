.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$10:I

.field public final synthetic f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Z

.field public final synthetic f$8:J

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$0:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$5:Lkotlin/jvm/functions/Function2;

    .line 15
    .line 16
    iput-object p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$7:Z

    .line 19
    .line 20
    iput-wide p10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$8:J

    .line 21
    .line 22
    iput p12, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$9:I

    .line 23
    .line 24
    iput p13, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$10:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/glance/layout/ColumnScopeImplInstance;

    .line 6
    .line 7
    move-object/from16 v6, p2

    .line 8
    .line 9
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroidx/glance/layout/HeightModifier;

    .line 22
    .line 23
    sget-object v2, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroidx/compose/ui/unit/DpKt;->fillMaxWidth(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v7, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    iget-object v8, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$1:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 35
    .line 36
    iget-object v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$2:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 37
    .line 38
    iget-wide v10, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$3:J

    .line 39
    .line 40
    iget-object v12, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$4:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v13, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$5:Lkotlin/jvm/functions/Function2;

    .line 43
    .line 44
    iget-object v14, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$6:Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v15, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$7:Z

    .line 47
    .line 48
    iget-wide v3, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$8:J

    .line 49
    .line 50
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$9:I

    .line 51
    .line 52
    iget v5, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$10:I

    .line 53
    .line 54
    move/from16 v18, v1

    .line 55
    .line 56
    move-wide/from16 v16, v3

    .line 57
    .line 58
    move/from16 v19, v5

    .line 59
    .line 60
    invoke-direct/range {v7 .. v19}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda0;-><init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;JLjava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZJII)V

    .line 61
    .line 62
    .line 63
    const v1, -0x6d6ffeba

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v7, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const/16 v7, 0xc00

    .line 71
    .line 72
    const/4 v8, 0x6

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-static/range {v2 .. v8}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Landroidx/glance/layout/HeightModifier;

    .line 79
    .line 80
    new-instance v2, Landroidx/glance/unit/Dimension$Dp;

    .line 81
    .line 82
    const/high16 v3, 0x40000000    # 2.0f

    .line 83
    .line 84
    invoke-direct {v2, v3}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-static {v1, v6, v2}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda35;->f$0:Lkotlin/jvm/functions/Function2;

    .line 99
    .line 100
    invoke-interface {v0, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 104
    .line 105
    return-object v0
.end method
