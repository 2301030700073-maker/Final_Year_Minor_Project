.class public final synthetic Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/WrapContentNode;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$1:I

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput p4, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$3:I

    .line 14
    .line 15
    iput-object p5, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowMeasurePolicy;II[I)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$1:I

    iput p4, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, [Landroidx/compose/ui/layout/Placeable;

    .line 15
    .line 16
    check-cast v3, Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 17
    .line 18
    check-cast v2, [I

    .line 19
    .line 20
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 21
    .line 22
    array-length v0, v4

    .line 23
    const/4 v5, 0x0

    .line 24
    move v6, v5

    .line 25
    :goto_0
    if-ge v5, v0, :cond_3

    .line 26
    .line 27
    aget-object v11, v4, v5

    .line 28
    .line 29
    add-int/lit8 v13, v6, 0x1

    .line 30
    .line 31
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    instance-of v8, v7, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    if-eqz v8, :cond_0

    .line 42
    .line 43
    check-cast v7, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move-object v7, v9

    .line 47
    :goto_1
    if-eqz v7, :cond_1

    .line 48
    .line 49
    iget-object v9, v7, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/OffsetKt;

    .line 50
    .line 51
    :cond_1
    move-object v7, v9

    .line 52
    iget v8, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$1:I

    .line 53
    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    iget v9, v11, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 57
    .line 58
    sget-object v10, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 59
    .line 60
    iget v12, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$3:I

    .line 61
    .line 62
    invoke-virtual/range {v7 .. v12}, Landroidx/compose/foundation/layout/OffsetKt;->align$foundation_layout(IILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object v7, v3, Landroidx/compose/foundation/layout/RowMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 68
    .line 69
    iget v9, v11, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 70
    .line 71
    invoke-virtual {v7, v9, v8}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    :goto_2
    aget v6, v2, v6

    .line 76
    .line 77
    invoke-static {p1, v11, v6, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    move v6, v13

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-object v1

    .line 85
    :pswitch_0
    check-cast v4, Landroidx/compose/foundation/layout/WrapContentNode;

    .line 86
    .line 87
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 88
    .line 89
    check-cast v2, Landroidx/compose/ui/layout/MeasureScope;

    .line 90
    .line 91
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 92
    .line 93
    iget-object v0, v4, Landroidx/compose/foundation/layout/WrapContentNode;->alignmentCallback:Lkotlin/jvm/functions/Function2;

    .line 94
    .line 95
    iget v4, v3, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 96
    .line 97
    iget v5, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$1:I

    .line 98
    .line 99
    sub-int/2addr v5, v4

    .line 100
    iget v4, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 101
    .line 102
    iget p0, p0, Landroidx/compose/foundation/layout/WrapContentNode$$ExternalSyntheticLambda0;->f$3:I

    .line 103
    .line 104
    sub-int/2addr p0, v4

    .line 105
    int-to-long v4, v5

    .line 106
    const/16 v6, 0x20

    .line 107
    .line 108
    shl-long/2addr v4, v6

    .line 109
    int-to-long v6, p0

    .line 110
    const-wide v8, 0xffffffffL

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    and-long/2addr v6, v8

    .line 116
    or-long/2addr v4, v6

    .line 117
    new-instance p0, Landroidx/compose/ui/unit/IntSize;

    .line 118
    .line 119
    invoke-direct {p0, v4, v5}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-interface {v0, p0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    check-cast p0, Landroidx/compose/ui/unit/IntOffset;

    .line 131
    .line 132
    iget-wide v4, p0, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 133
    .line 134
    invoke-static {p1, v3, v4, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
