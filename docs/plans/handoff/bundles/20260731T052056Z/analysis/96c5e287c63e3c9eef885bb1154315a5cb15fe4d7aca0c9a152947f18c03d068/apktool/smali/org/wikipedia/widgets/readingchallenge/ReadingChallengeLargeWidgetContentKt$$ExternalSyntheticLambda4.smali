.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(ILorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;Landroid/content/Context;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$3:J

    .line 11
    .line 12
    iput-wide p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$4:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/glance/layout/ColumnScopeImplInstance;

    .line 2
    .line 3
    move-object v4, p2

    .line 4
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroidx/glance/layout/HeightModifier;

    .line 15
    .line 16
    sget-object p2, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 19
    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-static {p1, v4, p3}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroidx/glance/AndroidResourceImageProvider;

    .line 26
    .line 27
    iget p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$0:I

    .line 28
    .line 29
    invoke-direct {v0, p1}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getExpandedMascotSize-D9Ej5fM()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p1}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/16 v5, 0x30

    .line 43
    .line 44
    const/16 v6, 0x18

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static/range {v0 .. v6}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroidx/glance/layout/HeightModifier;

    .line 52
    .line 53
    invoke-direct {p1, p2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v4, p3}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 57
    .line 58
    .line 59
    const p1, 0x7f1209ef

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-array p1, p3, [Landroidx/glance/action/ActionParameters$Pair;

    .line 72
    .line 73
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [Landroidx/glance/action/ActionParameters$Pair;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v1, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 84
    .line 85
    const-class p2, Lorg/wikipedia/widgets/readingchallenge/RandomArticleWidgetAction;

    .line 86
    .line 87
    invoke-direct {v1, p2, p1}, Landroidx/glance/appwidget/action/RunCallbackAction;-><init>(Ljava/lang/Class;Landroidx/glance/action/MutableActionParameters;)V

    .line 88
    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    const/16 v10, 0x30

    .line 92
    .line 93
    iget-wide v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$3:J

    .line 94
    .line 95
    iget-wide p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda4;->f$4:J

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v7, 0x0

    .line 99
    move-object v8, v4

    .line 100
    move-wide v4, p0

    .line 101
    invoke-static/range {v0 .. v10}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->WidgetButton-Y0xEhic(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;JJLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;II)V

    .line 102
    .line 103
    .line 104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p0
.end method
