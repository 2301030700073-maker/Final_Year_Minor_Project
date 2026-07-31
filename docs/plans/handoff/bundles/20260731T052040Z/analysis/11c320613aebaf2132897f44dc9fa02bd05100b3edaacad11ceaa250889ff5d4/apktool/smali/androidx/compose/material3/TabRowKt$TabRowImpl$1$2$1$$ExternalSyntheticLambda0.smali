.class public final synthetic Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/io/Serializable;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$3:Ljava/io/Serializable;

    .line 14
    .line 15
    iput p5, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$4:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/ColumnMeasurePolicy;ILandroidx/compose/ui/layout/MeasureScope;[I)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$4:I

    iput-object p4, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$3:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$3:Ljava/io/Serializable;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    iget v5, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$4:I

    .line 11
    .line 12
    iget-object v6, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    iget-object v12, v10, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    .line 60
    .line 61
    :cond_1
    if-eqz v12, :cond_2

    .line 62
    .line 63
    iget v10, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 64
    .line 65
    iget-object v12, v12, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;->horizontal:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 66
    .line 67
    invoke-virtual {v12, v10, v5, v11}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object v10, v6, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;->horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 73
    .line 74
    iget v12, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 75
    .line 76
    invoke-virtual {v10, v12, v5, v11}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    :goto_2
    aget v7, v3, v7

    .line 81
    .line 82
    invoke-static {p1, v8, v10, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    move v7, v9

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    return-object v1

    .line 90
    :pswitch_0
    check-cast p0, Ljava/util/ArrayList;

    .line 91
    .line 92
    check-cast v6, Ljava/util/ArrayList;

    .line 93
    .line 94
    check-cast v4, Ljava/util/ArrayList;

    .line 95
    .line 96
    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 97
    .line 98
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    move v7, v2

    .line 105
    :goto_3
    if-ge v7, v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 112
    .line 113
    iget v9, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 114
    .line 115
    mul-int/2addr v9, v7

    .line 116
    invoke-static {p1, v8, v9, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    move v0, v2

    .line 127
    :goto_4
    if-ge v0, p0, :cond_5

    .line 128
    .line 129
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 134
    .line 135
    iget v7, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 136
    .line 137
    sub-int v7, v5, v7

    .line 138
    .line 139
    invoke-static {p1, v3, v2, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 140
    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    move v0, v2

    .line 150
    :goto_5
    if-ge v0, p0, :cond_6

    .line 151
    .line 152
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 157
    .line 158
    iget v6, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 159
    .line 160
    sub-int v6, v5, v6

    .line 161
    .line 162
    invoke-static {p1, v3, v2, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    return-object v1

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
