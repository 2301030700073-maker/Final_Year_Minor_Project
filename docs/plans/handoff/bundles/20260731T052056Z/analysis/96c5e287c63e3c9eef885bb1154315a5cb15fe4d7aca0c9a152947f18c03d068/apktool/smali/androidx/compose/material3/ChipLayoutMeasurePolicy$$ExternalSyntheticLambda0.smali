.class public final synthetic Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/layout/Placeable;

    .line 11
    .line 12
    iput p5, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/ui/layout/Placeable;

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/layout/Placeable;

    .line 7
    .line 8
    iget v3, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    const/high16 v4, 0x40000000    # 2.0f

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget v5, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 15
    .line 16
    sub-int v5, v3, v5

    .line 17
    .line 18
    int-to-float v5, v5

    .line 19
    div-float/2addr v5, v4

    .line 20
    mul-float/2addr v5, v1

    .line 21
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-static {p1, v2, v0, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v2, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/layout/Placeable;

    .line 29
    .line 30
    iget v5, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$4:I

    .line 31
    .line 32
    invoke-static {p1, v2, v5, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/ui/layout/Placeable;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v2, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 40
    .line 41
    add-int/2addr v5, v2

    .line 42
    iget p0, p0, Landroidx/compose/material3/ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0;->f$6:I

    .line 43
    .line 44
    sub-int/2addr v3, p0

    .line 45
    int-to-float p0, v3

    .line 46
    div-float/2addr p0, v4

    .line 47
    mul-float/2addr p0, v1

    .line 48
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p1, v0, v5, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method
