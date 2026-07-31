.class public final synthetic Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$3:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/layout/MeasureScope;Landroidx/compose/material3/TopAppBarMeasurePolicy;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/layout/Placeable;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/layout/Placeable;

    .line 11
    .line 12
    iput-wide p5, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$4:J

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/ui/layout/MeasureScope;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/layout/Placeable;

    .line 4
    .line 5
    iget v1, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 6
    .line 7
    iget v2, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    .line 9
    sub-int v1, v2, v1

    .line 10
    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p1, v0, v3, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 15
    .line 16
    .line 17
    sget v1, Landroidx/compose/material3/AppBarKt;->TopAppBarTitleInset:F

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/ui/layout/MeasureScope;

    .line 20
    .line 21
    invoke-interface {v3, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget v0, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 26
    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/layout/Placeable;

    .line 32
    .line 33
    iget v3, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 34
    .line 35
    iget-object v4, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/layout/Placeable;

    .line 36
    .line 37
    iget v5, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 38
    .line 39
    iget-wide v6, p0, Landroidx/compose/material3/TopAppBarMeasurePolicy$$ExternalSyntheticLambda0;->f$4:J

    .line 40
    .line 41
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    .line 47
    sub-int/2addr p0, v5

    .line 48
    int-to-float p0, p0

    .line 49
    const/high16 v5, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr p0, v5

    .line 52
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 53
    .line 54
    const/high16 v9, -0x40800000    # -1.0f

    .line 55
    .line 56
    if-ne v8, v5, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    mul-float/2addr v9, v9

    .line 60
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 61
    .line 62
    add-float/2addr v5, v9

    .line 63
    mul-float/2addr v5, p0

    .line 64
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-ge p0, v0, :cond_1

    .line 69
    .line 70
    sub-int/2addr v0, p0

    .line 71
    :goto_1
    add-int/2addr p0, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    iget v0, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 74
    .line 75
    add-int/2addr v0, p0

    .line 76
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    sub-int/2addr v5, v3

    .line 81
    if-le v0, v5, :cond_2

    .line 82
    .line 83
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sub-int/2addr v0, v3

    .line 88
    iget v3, v4, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 89
    .line 90
    add-int/2addr v3, p0

    .line 91
    sub-int/2addr v0, v3

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_2
    iget v0, v4, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 94
    .line 95
    sub-int v0, v2, v0

    .line 96
    .line 97
    div-int/lit8 v0, v0, 0x2

    .line 98
    .line 99
    invoke-static {p1, v4, p0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    iget v0, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 107
    .line 108
    sub-int/2addr p0, v0

    .line 109
    iget v0, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 110
    .line 111
    sub-int/2addr v2, v0

    .line 112
    div-int/lit8 v2, v2, 0x2

    .line 113
    .line 114
    invoke-static {p1, v1, p0, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 115
    .line 116
    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p0
.end method
