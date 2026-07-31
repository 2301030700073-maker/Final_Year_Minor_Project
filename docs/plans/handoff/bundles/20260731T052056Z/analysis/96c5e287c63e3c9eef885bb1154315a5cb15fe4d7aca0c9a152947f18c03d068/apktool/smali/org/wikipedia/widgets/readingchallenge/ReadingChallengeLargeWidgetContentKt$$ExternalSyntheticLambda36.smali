.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

.field public final synthetic f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLjava/lang/String;JIILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p7, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$5:J

    .line 15
    .line 16
    iput p9, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$6:I

    .line 17
    .line 18
    iput p10, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$7:I

    .line 19
    .line 20
    iput-object p11, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$8:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

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
    new-instance v7, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;

    .line 33
    .line 34
    iget-object v8, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$0:Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 35
    .line 36
    iget-object v9, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 37
    .line 38
    iget-object v10, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$2:Ljava/lang/String;

    .line 39
    .line 40
    iget-wide v11, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$3:J

    .line 41
    .line 42
    iget-object v13, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$4:Ljava/lang/String;

    .line 43
    .line 44
    iget-wide v14, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$5:J

    .line 45
    .line 46
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$6:I

    .line 47
    .line 48
    iget v3, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$7:I

    .line 49
    .line 50
    move/from16 v16, v1

    .line 51
    .line 52
    move/from16 v17, v3

    .line 53
    .line 54
    invoke-direct/range {v7 .. v17}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda5;-><init>(Landroidx/glance/appwidget/action/RunCallbackAction;Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Ljava/lang/String;JLjava/lang/String;JII)V

    .line 55
    .line 56
    .line 57
    const v1, -0x4331f35f

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v7, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/16 v7, 0xc00

    .line 65
    .line 66
    const/4 v8, 0x6

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static/range {v2 .. v8}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Landroidx/glance/layout/HeightModifier;

    .line 73
    .line 74
    new-instance v2, Landroidx/glance/unit/Dimension$Dp;

    .line 75
    .line 76
    const/high16 v3, 0x40000000    # 2.0f

    .line 77
    .line 78
    invoke-direct {v2, v3}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 82
    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-static {v1, v6, v2}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Landroidx/glance/layout/WidthModifier;

    .line 89
    .line 90
    sget-object v3, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 91
    .line 92
    invoke-direct {v1, v3}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;

    .line 96
    .line 97
    iget-object v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda36;->f$8:Landroid/content/Context;

    .line 98
    .line 99
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;I)V

    .line 100
    .line 101
    .line 102
    const v0, -0x15570736

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const/4 v3, 0x0

    .line 110
    move-object v2, v1

    .line 111
    invoke-static/range {v2 .. v8}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 115
    .line 116
    return-object v0
.end method
