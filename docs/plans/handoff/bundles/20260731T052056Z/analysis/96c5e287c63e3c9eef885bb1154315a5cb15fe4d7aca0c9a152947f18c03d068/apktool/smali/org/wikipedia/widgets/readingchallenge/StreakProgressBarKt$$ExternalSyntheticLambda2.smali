.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$1:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;->f$3:J

    .line 7
    .line 8
    iput-wide p4, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;->f$4:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    const p1, 0x7f08012d

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/high16 p1, 0x41c00000    # 24.0f

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-wide p2, Landroidx/compose/ui/graphics/Color;->White:J

    .line 29
    .line 30
    new-instance v2, Landroidx/glance/color/DayNightColorProvider;

    .line 31
    .line 32
    invoke-direct {v2, p2, p3, p2, p3}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Landroidx/glance/ColorFilter;

    .line 36
    .line 37
    new-instance v5, Landroidx/glance/TintColorFilterParams;

    .line 38
    .line 39
    invoke-direct {v5, v2}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, v5}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 43
    .line 44
    .line 45
    const/16 v6, 0x8

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const v5, 0x8030

    .line 49
    .line 50
    .line 51
    invoke-static/range {v0 .. v6}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 52
    .line 53
    .line 54
    move v9, v5

    .line 55
    new-instance v0, Landroidx/glance/layout/WidthModifier;

    .line 56
    .line 57
    new-instance v1, Landroidx/glance/unit/Dimension$Dp;

    .line 58
    .line 59
    const/high16 v10, 0x41400000    # 12.0f

    .line 60
    .line 61
    invoke-direct {v1, v10}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 65
    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    invoke-static {v0, v4, v11}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Landroidx/glance/CompositionLocalsKt;->LocalSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroidx/compose/ui/unit/DpSize;

    .line 78
    .line 79
    iget-wide v0, v0, Landroidx/compose/ui/unit/DpSize;->packedValue:J

    .line 80
    .line 81
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/high16 v1, 0x43300000    # 176.0f

    .line 86
    .line 87
    sub-float/2addr v0, v1

    .line 88
    const/4 v1, 0x0

    .line 89
    cmpg-float v2, v0, v1

    .line 90
    .line 91
    if-gez v2, :cond_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move v1, v0

    .line 95
    :goto_0
    const/4 v2, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;->f$1:I

    .line 98
    .line 99
    move-object v7, v4

    .line 100
    iget-wide v3, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;->f$3:J

    .line 101
    .line 102
    iget-wide v5, p0, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt$$ExternalSyntheticLambda2;->f$4:J

    .line 103
    .line 104
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->StreakProgressBar-iv-I9-Q(IFLandroidx/glance/GlanceModifier;JJLandroidx/compose/runtime/GapComposer;I)V

    .line 105
    .line 106
    .line 107
    move-object v4, v7

    .line 108
    new-instance p0, Landroidx/glance/layout/WidthModifier;

    .line 109
    .line 110
    new-instance v0, Landroidx/glance/unit/Dimension$Dp;

    .line 111
    .line 112
    invoke-direct {v0, v10}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v0}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v4, v11}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Landroidx/glance/AndroidResourceImageProvider;

    .line 122
    .line 123
    const p0, 0x7f08012e

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, p0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance p0, Landroidx/glance/color/DayNightColorProvider;

    .line 134
    .line 135
    invoke-direct {p0, p2, p3, p2, p3}, Landroidx/glance/color/DayNightColorProvider;-><init>(JJ)V

    .line 136
    .line 137
    .line 138
    new-instance v3, Landroidx/glance/ColorFilter;

    .line 139
    .line 140
    new-instance p1, Landroidx/glance/TintColorFilterParams;

    .line 141
    .line 142
    invoke-direct {p1, p0}, Landroidx/glance/TintColorFilterParams;-><init>(Landroidx/glance/unit/ColorProvider;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {v3, p1}, Landroidx/glance/ColorFilter;-><init>(Landroidx/glance/TintColorFilterParams;)V

    .line 146
    .line 147
    .line 148
    const/16 v6, 0x8

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    move v5, v9

    .line 152
    invoke-static/range {v0 .. v6}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 153
    .line 154
    .line 155
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p0
.end method
