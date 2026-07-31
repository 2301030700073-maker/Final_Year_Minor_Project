.class public final synthetic Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/material3/SheetState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/SheetState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const-wide v5, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/material3/SheetState;

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroidx/compose/material3/internal/MapDraggableAnchors;->minAnchor()F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    cmpg-float v7, v0, p0

    .line 39
    .line 40
    if-gez v7, :cond_0

    .line 41
    .line 42
    sub-float/2addr p0, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move p0, v3

    .line 45
    :goto_0
    cmpl-float v0, p0, v3

    .line 46
    .line 47
    if-lez v0, :cond_1

    .line 48
    .line 49
    iget-wide v7, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 50
    .line 51
    and-long/2addr v7, v5

    .line 52
    long-to-int v0, v7

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-float/2addr v0, p0

    .line 58
    iget-wide v7, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 59
    .line 60
    and-long/2addr v5, v7

    .line 61
    long-to-int p0, v5

    .line 62
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    div-float/2addr v0, p0

    .line 67
    div-float/2addr v4, v0

    .line 68
    :cond_1
    invoke-virtual {p1, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->TransformOrigin(FF)J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getAnchors()Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroidx/compose/material3/internal/MapDraggableAnchors;->minAnchor()F

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    cmpg-float v7, v0, p0

    .line 96
    .line 97
    if-gez v7, :cond_2

    .line 98
    .line 99
    sub-float/2addr p0, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    move p0, v3

    .line 102
    :goto_1
    cmpl-float v0, p0, v3

    .line 103
    .line 104
    if-lez v0, :cond_3

    .line 105
    .line 106
    iget-wide v7, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 107
    .line 108
    and-long/2addr v7, v5

    .line 109
    long-to-int v0, v7

    .line 110
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    add-float/2addr v0, p0

    .line 115
    iget-wide v7, p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 116
    .line 117
    and-long/2addr v5, v7

    .line 118
    long-to-int p0, v5

    .line 119
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    div-float v4, v0, p0

    .line 124
    .line 125
    :cond_3
    invoke-virtual {p1, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 126
    .line 127
    .line 128
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->TransformOrigin(FF)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    invoke-virtual {p1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 133
    .line 134
    .line 135
    return-object v1

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
