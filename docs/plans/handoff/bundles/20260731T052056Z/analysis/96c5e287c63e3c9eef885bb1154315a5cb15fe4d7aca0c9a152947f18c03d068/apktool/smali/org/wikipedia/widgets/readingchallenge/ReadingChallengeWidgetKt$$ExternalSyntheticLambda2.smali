.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:F

.field public final synthetic f$2:Landroidx/compose/ui/graphics/Color;

.field public final synthetic f$3:F

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(IFLandroidx/compose/ui/graphics/Color;FLjava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$1:F

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/ui/graphics/Color;

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$3:F

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p6, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$5:J

    .line 15
    .line 16
    iput-wide p8, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$6:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/glance/layout/RowScopeImplInstance;

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
    new-instance v0, Landroidx/glance/AndroidResourceImageProvider;

    .line 15
    .line 16
    iget p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$0:I

    .line 17
    .line 18
    invoke-direct {v0, p1}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$1:F

    .line 22
    .line 23
    invoke-static {p1}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/ui/graphics/Color;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-wide p1, p1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 32
    .line 33
    new-instance p3, Landroidx/glance/color/DayNightColorProvider;

    .line 34
    .line 35
    invoke-direct {p3, p1, p2, p1, p2}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Landroidx/glance/ColorFilter;

    .line 39
    .line 40
    new-instance p2, Landroidx/glance/TintColorFilterParams;

    .line 41
    .line 42
    invoke-direct {p2, p3}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    move-object v3, p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    const v5, 0x8030

    .line 53
    .line 54
    .line 55
    const/16 v6, 0x8

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-static/range {v0 .. v6}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Landroidx/glance/layout/WidthModifier;

    .line 62
    .line 63
    new-instance p2, Landroidx/glance/unit/Dimension$Dp;

    .line 64
    .line 65
    iget p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$3:F

    .line 66
    .line 67
    invoke-direct {p2, p3}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 71
    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    invoke-static {p1, v4, p2}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Landroidx/glance/color/DayNightColorProvider;

    .line 78
    .line 79
    iget-wide p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$5:J

    .line 80
    .line 81
    invoke-direct {p1, p2, p3, p2, p3}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Landroidx/glance/text/TextStyle;

    .line 85
    .line 86
    new-instance p2, Landroidx/compose/ui/unit/TextUnit;

    .line 87
    .line 88
    iget-wide v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$6:J

    .line 89
    .line 90
    invoke-direct {p2, v0, v1}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 91
    .line 92
    .line 93
    new-instance p3, Landroidx/glance/text/FontWeight;

    .line 94
    .line 95
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    const/16 v0, 0x78

    .line 99
    .line 100
    invoke-direct {v2, p1, p2, p3, v0}, Landroidx/glance/text/TextStyle;-><init>(Landroidx/glance/unit/ColorProvider;Landroidx/compose/ui/unit/TextUnit;Landroidx/glance/text/FontWeight;I)V

    .line 101
    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    const/16 v6, 0xa

    .line 105
    .line 106
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetKt$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-static/range {v0 .. v6}, Lkotlin/ResultKt;->Text(Ljava/lang/String;Landroidx/glance/GlanceModifier;Landroidx/glance/text/TextStyle;ILandroidx/compose/runtime/GapComposer;II)V

    .line 111
    .line 112
    .line 113
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0
.end method
