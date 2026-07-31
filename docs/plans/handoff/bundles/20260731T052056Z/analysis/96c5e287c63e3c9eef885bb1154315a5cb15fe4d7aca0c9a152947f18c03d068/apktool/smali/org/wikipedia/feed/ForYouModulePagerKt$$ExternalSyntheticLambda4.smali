.class public final synthetic Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/Serializable;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/Serializable;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$0:Ljava/io/Serializable;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$2:I

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$4:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    .line 9
    .line 10
    iget v5, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$2:I

    .line 11
    .line 12
    iget-object v6, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/feed/ForYouModulePagerKt$$ExternalSyntheticLambda4;->f$0:Ljava/io/Serializable;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast p0, [Landroidx/compose/ui/layout/Placeable;

    .line 20
    .line 21
    check-cast v6, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 22
    .line 23
    check-cast v4, Landroidx/compose/ui/layout/MeasureScope;

    .line 24
    .line 25
    check-cast v3, [I

    .line 26
    .line 27
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 28
    .line 29
    array-length v0, p0

    .line 30
    move v7, v2

    .line 31
    :goto_0
    if-ge v2, v0, :cond_3

    .line 32
    .line 33
    aget-object v8, p0, v2

    .line 34
    .line 35
    add-int/lit8 v9, v7, 0x1

    .line 36
    .line 37
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    instance-of v11, v10, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 45
    .line 46
    const/4 v12, 0x0

    .line 47
    if-eqz v11, :cond_0

    .line 48
    .line 49
    check-cast v10, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move-object v10, v12

    .line 53
    :goto_1
    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    if-eqz v10, :cond_1

    .line 58
    .line 59
    iget-object v12, v10, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/OffsetKt;

    .line 60
    .line 61
    :cond_1
    if-eqz v12, :cond_2

    .line 62
    .line 63
    iget v10, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 64
    .line 65
    invoke-virtual {v12, v5, v10, v11}, Landroidx/compose/foundation/layout/OffsetKt;->align$foundation_layout(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    iget-object v10, v6, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 71
    .line 72
    iget v12, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 73
    .line 74
    invoke-virtual {v10, v12, v5, v11}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    :goto_2
    aget v7, v3, v7

    .line 79
    .line 80
    invoke-static {p1, v8, v10, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    move v7, v9

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    return-object v1

    .line 88
    :pswitch_0
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 89
    .line 90
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 91
    .line 92
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 93
    .line 94
    check-cast v3, Lorg/wikipedia/feed/ForYouModule;

    .line 95
    .line 96
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    .line 104
    .line 105
    if-nez p0, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    invoke-static {p1}, Landroidx/compose/ui/layout/RulerKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/4 v7, 0x1

    .line 113
    invoke-interface {v0, p1, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 118
    .line 119
    iget v8, p1, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 120
    .line 121
    sub-float/2addr v0, v8

    .line 122
    iget v8, p0, Landroidx/compose/ui/geometry/Rect;->right:F

    .line 123
    .line 124
    iget v9, p0, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 125
    .line 126
    sub-float/2addr v8, v9

    .line 127
    const/high16 v9, 0x40000000    # 2.0f

    .line 128
    .line 129
    div-float/2addr v8, v9

    .line 130
    cmpl-float v0, v0, v8

    .line 131
    .line 132
    if-lez v0, :cond_5

    .line 133
    .line 134
    iget v0, p1, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 135
    .line 136
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 137
    .line 138
    sub-float/2addr v0, p1

    .line 139
    iget p1, p0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 140
    .line 141
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 142
    .line 143
    sub-float/2addr p1, p0

    .line 144
    div-float/2addr p1, v9

    .line 145
    cmpl-float p0, v0, p1

    .line 146
    .line 147
    if-lez p0, :cond_5

    .line 148
    .line 149
    move v2, v7

    .line 150
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-eqz v2, :cond_6

    .line 165
    .line 166
    if-nez p0, :cond_6

    .line 167
    .line 168
    invoke-virtual {v3}, Lorg/wikipedia/feed/ForYouModule;->getCards()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v6, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    :goto_3
    return-object v1

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
