.class public final synthetic Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:I

.field public final synthetic f$3:J

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;IJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;->f$3:J

    .line 9
    .line 10
    iput p5, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;->f$4:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const/16 p1, 0x20

    .line 12
    .line 13
    shr-long/2addr v1, p1

    .line 14
    long-to-int p1, v1

    .line 15
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const-wide v3, 0xffffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    and-long/2addr v1, v3

    .line 29
    long-to-int v1, v1

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/lit8 v3, v3, -0x1

    .line 41
    .line 42
    int-to-float v3, v3

    .line 43
    div-float/2addr p1, v3

    .line 44
    iget v3, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;->f$1:I

    .line 45
    .line 46
    int-to-float v3, v3

    .line 47
    div-float v3, v1, v3

    .line 48
    .line 49
    move v4, v1

    .line 50
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    int-to-float v5, v5

    .line 65
    mul-float/2addr v5, v3

    .line 66
    sub-float v5, v4, v5

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    iget-object v7, v1, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    .line 70
    .line 71
    invoke-virtual {v7, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_1

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v5, :cond_0

    .line 96
    .line 97
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    add-int/lit8 v7, v5, 0x1

    .line 101
    .line 102
    int-to-float v5, v5

    .line 103
    mul-float/2addr v5, p1

    .line 104
    int-to-float v6, v6

    .line 105
    mul-float/2addr v6, v3

    .line 106
    sub-float v6, v4, v6

    .line 107
    .line 108
    invoke-virtual {v1, v5, v6}, Landroidx/compose/ui/graphics/AndroidPath;->lineTo(FF)V

    .line 109
    .line 110
    .line 111
    move v5, v7

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    new-instance v5, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 114
    .line 115
    iget p1, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;->f$4:F

    .line 116
    .line 117
    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    const/4 v10, 0x0

    .line 122
    const/16 v11, 0x1a

    .line 123
    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v9, 0x1

    .line 126
    move-object v6, v5

    .line 127
    invoke-direct/range {v6 .. v11}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 128
    .line 129
    .line 130
    const/16 v6, 0x34

    .line 131
    .line 132
    iget-wide v2, p0, Lorg/wikipedia/compose/components/LineChartKt$$ExternalSyntheticLambda1;->f$3:J

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/Modifier$-CC;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;JFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 136
    .line 137
    .line 138
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 139
    .line 140
    return-object p0
.end method
