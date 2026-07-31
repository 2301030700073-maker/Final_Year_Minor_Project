.class public final synthetic Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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

.field public final synthetic f$9:Landroidx/compose/material3/FabPlacement;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/FabPlacement;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;)V
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
    iput-object p10, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$9:Landroidx/compose/material3/FabPlacement;

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
    .locals 7

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
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v0, v1, v1, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$2:Landroidx/compose/ui/layout/Placeable;

    .line 16
    .line 17
    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 18
    .line 19
    iget v4, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$3:I

    .line 20
    .line 21
    sub-int/2addr v4, v3

    .line 22
    iget-object v3, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$5:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 23
    .line 24
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v6, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$4:Landroidx/compose/foundation/layout/WindowInsets;

    .line 29
    .line 30
    invoke-interface {v6, v3, v5}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/2addr v5, v4

    .line 35
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v6, v3, v4}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    sub-int/2addr v5, v3

    .line 44
    div-int/lit8 v5, v5, 0x2

    .line 45
    .line 46
    iget v3, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$6:I

    .line 47
    .line 48
    iget v4, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$7:I

    .line 49
    .line 50
    sub-int v4, v3, v4

    .line 51
    .line 52
    invoke-virtual {p1, v0, v5, v4, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$8:Landroidx/compose/ui/layout/Placeable;

    .line 56
    .line 57
    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 58
    .line 59
    sub-int v4, v3, v4

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1, v4, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$9:Landroidx/compose/material3/FabPlacement;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    iget v0, v0, Landroidx/compose/material3/FabPlacement;->left:I

    .line 69
    .line 70
    iget-object v1, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$11:Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    sub-int/2addr v3, v1

    .line 80
    iget-object p0, p0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda4;->f$10:Landroidx/compose/ui/layout/Placeable;

    .line 81
    .line 82
    invoke-virtual {p1, p0, v0, v3, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 83
    .line 84
    .line 85
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0
.end method
