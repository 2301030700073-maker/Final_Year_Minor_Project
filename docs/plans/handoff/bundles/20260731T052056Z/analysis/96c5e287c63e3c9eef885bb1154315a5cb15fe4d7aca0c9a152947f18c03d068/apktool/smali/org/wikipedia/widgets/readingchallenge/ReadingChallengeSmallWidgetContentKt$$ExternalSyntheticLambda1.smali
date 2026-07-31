.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(IZLorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;->f$2:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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
    iget p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;->f$0:I

    .line 28
    .line 29
    invoke-direct {v0, p1}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iget-boolean v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 34
    .line 35
    iget-object v2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;->f$2:Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize;

    .line 36
    .line 37
    const/high16 v3, 0x42380000    # 46.0f

    .line 38
    .line 39
    const/high16 v5, 0x42f00000    # 120.0f

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x3

    .line 43
    const/4 v8, 0x2

    .line 44
    const/4 v9, 0x1

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    aget v1, v1, v2

    .line 57
    .line 58
    if-eq v1, v9, :cond_2

    .line 59
    .line 60
    if-eq v1, v8, :cond_7

    .line 61
    .line 62
    if-eq v1, v7, :cond_1

    .line 63
    .line 64
    if-ne v1, v6, :cond_0

    .line 65
    .line 66
    :goto_0
    move v3, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 69
    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_1
    const/high16 v3, 0x428c0000    # 70.0f

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/high16 v3, 0x42100000    # 36.0f

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/SmallWidgetSize$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    aget v1, v1, v2

    .line 85
    .line 86
    if-eq v1, v9, :cond_7

    .line 87
    .line 88
    if-eq v1, v8, :cond_6

    .line 89
    .line 90
    if-eq v1, v7, :cond_5

    .line 91
    .line 92
    if-ne v1, v6, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_5
    const/high16 v3, 0x42a00000    # 80.0f

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    const/high16 v3, 0x42600000    # 56.0f

    .line 103
    .line 104
    :cond_7
    :goto_1
    invoke-static {v3}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const/16 v5, 0x30

    .line 109
    .line 110
    const/16 v6, 0x18

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v3, 0x0

    .line 114
    invoke-static/range {v0 .. v6}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Landroidx/glance/layout/HeightModifier;

    .line 118
    .line 119
    invoke-direct {p1, p2}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v4, p3}, Landroidx/work/Operation$State;->Spacer(Landroidx/glance/GlanceModifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeSmallWidgetContentKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function2;

    .line 130
    .line 131
    invoke-interface {p0, v4, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0
.end method
