.class public final synthetic Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/material3/WindowBoundsCalculator;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public final synthetic f$4:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/WindowBoundsCalculator;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const/16 p1, 0x20

    .line 13
    .line 14
    shr-long/2addr v1, p1

    .line 15
    long-to-int p1, v1

    .line 16
    iget-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/WindowBoundsCalculator;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/compose/material3/WindowBoundsCalculator;->view:Landroid/view/View;

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget p1, v1, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached$1()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    invoke-static {v4, v5}, Lorg/jsoup/helper/Validate;->toSize-ozmzZPI(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-static {v2, v3, v4, v5}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    .line 72
    .line 73
    :goto_1
    iget v2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$1:I

    .line 74
    .line 75
    add-int v3, p1, v2

    .line 76
    .line 77
    sub-int v2, v1, v2

    .line 78
    .line 79
    iget v4, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 80
    .line 81
    int-to-float v1, v1

    .line 82
    cmpl-float v1, v4, v1

    .line 83
    .line 84
    if-gtz v1, :cond_3

    .line 85
    .line 86
    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 87
    .line 88
    int-to-float p1, p1

    .line 89
    cmpg-float p1, v0, p1

    .line 90
    .line 91
    if-gez p1, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    int-to-float p1, v3

    .line 95
    sub-float/2addr v4, p1

    .line 96
    int-to-float p1, v2

    .line 97
    sub-float/2addr p1, v0

    .line 98
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    :goto_2
    sub-int p1, v2, v3

    .line 108
    .line 109
    :goto_3
    const/4 v0, 0x0

    .line 110
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 117
    .line 118
    .line 119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method
