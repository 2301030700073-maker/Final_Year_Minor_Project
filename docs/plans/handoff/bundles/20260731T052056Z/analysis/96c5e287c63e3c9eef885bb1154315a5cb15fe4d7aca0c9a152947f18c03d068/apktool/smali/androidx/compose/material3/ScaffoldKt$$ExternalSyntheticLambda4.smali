.class public final synthetic Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$1:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$10:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$11:Ljava/lang/Integer;

.field public final synthetic f$2:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f$5:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f$9:Landroidx/navigation/NavOptions$Builder;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/navigation/NavOptions$Builder;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/ui/layout/Placeable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/layout/Placeable;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/layout/Placeable;

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/foundation/layout/WindowInsets;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$6:I

    .line 17
    .line 18
    iput p8, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$7:I

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$8:Landroidx/compose/ui/layout/Placeable;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$9:Landroidx/navigation/NavOptions$Builder;

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$10:Landroidx/compose/ui/layout/Placeable;

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$11:Ljava/lang/Integer;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$0:Landroidx/compose/ui/layout/Placeable;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$1:Landroidx/compose/ui/layout/Placeable;

    .line 10
    .line 11
    invoke-static {p1, v0, v1, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/layout/Placeable;

    .line 15
    .line 16
    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 17
    .line 18
    iget v3, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$3:I

    .line 19
    .line 20
    sub-int/2addr v3, v2

    .line 21
    iget-object v2, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 22
    .line 23
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/foundation/layout/WindowInsets;

    .line 28
    .line 29
    invoke-interface {v5, v2, v4}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    add-int/2addr v4, v3

    .line 34
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v5, v2, v3}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    sub-int/2addr v4, v2

    .line 43
    div-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    iget v2, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$6:I

    .line 46
    .line 47
    iget v3, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$7:I

    .line 48
    .line 49
    sub-int v3, v2, v3

    .line 50
    .line 51
    invoke-static {p1, v0, v4, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$8:Landroidx/compose/ui/layout/Placeable;

    .line 55
    .line 56
    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 57
    .line 58
    sub-int v3, v2, v3

    .line 59
    .line 60
    invoke-static {p1, v0, v1, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$9:Landroidx/navigation/NavOptions$Builder;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    iget v0, v0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$11:Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sub-int/2addr v2, v1

    .line 79
    iget-object p0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$10:Landroidx/compose/ui/layout/Placeable;

    .line 80
    .line 81
    invoke-static {p1, p0, v0, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 82
    .line 83
    .line 84
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method
