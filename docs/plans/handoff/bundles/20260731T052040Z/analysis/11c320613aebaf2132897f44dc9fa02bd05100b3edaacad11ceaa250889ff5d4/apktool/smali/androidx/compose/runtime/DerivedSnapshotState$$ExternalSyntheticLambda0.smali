.class public final synthetic Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/internal/IntRef;Landroidx/collection/MutableObjectIntMap;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput p4, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$3:I

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowMeasurePolicy;I[I)V
    .locals 1

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$3:I

    iput-object p4, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/runtime/DerivedSnapshotState$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, [Landroidx/compose/ui/layout/Placeable;

    .line 18
    .line 19
    check-cast v4, Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 20
    .line 21
    check-cast v2, [I

    .line 22
    .line 23
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 24
    .line 25
    array-length v0, p0

    .line 26
    const/4 v6, 0x0

    .line 27
    move v7, v6

    .line 28
    :goto_0
    if-ge v6, v0, :cond_3

    .line 29
    .line 30
    aget-object v8, p0, v6

    .line 31
    .line 32
    add-int/lit8 v9, v7, 0x1

    .line 33
    .line 34
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getParentData()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    instance-of v11, v10, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 42
    .line 43
    if-eqz v11, :cond_0

    .line 44
    .line 45
    check-cast v10, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move-object v10, v5

    .line 49
    :goto_1
    if-eqz v10, :cond_1

    .line 50
    .line 51
    iget-object v10, v10, Landroidx/compose/foundation/layout/RowColumnParentData;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    move-object v10, v5

    .line 55
    :goto_2
    if-eqz v10, :cond_2

    .line 56
    .line 57
    iget v11, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 58
    .line 59
    sget-object v12, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 60
    .line 61
    iget-object v10, v10, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;->horizontal:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 62
    .line 63
    invoke-virtual {v10, v11, v3, v12}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    iget-object v10, v4, Landroidx/compose/foundation/layout/RowMeasurePolicy;->verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 69
    .line 70
    iget v11, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 71
    .line 72
    invoke-virtual {v10, v11, v3}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    :goto_3
    aget v7, v2, v7

    .line 77
    .line 78
    invoke-static {p1, v8, v7, v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    move v7, v9

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    return-object v1

    .line 86
    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 87
    .line 88
    check-cast v4, Landroidx/compose/runtime/internal/IntRef;

    .line 89
    .line 90
    check-cast v2, Landroidx/collection/MutableObjectIntMap;

    .line 91
    .line 92
    if-eq p1, p0, :cond_5

    .line 93
    .line 94
    instance-of p0, p1, Landroidx/compose/runtime/snapshots/StateObject;

    .line 95
    .line 96
    if-eqz p0, :cond_6

    .line 97
    .line 98
    iget p0, v4, Landroidx/compose/runtime/internal/IntRef;->element:I

    .line 99
    .line 100
    sub-int/2addr p0, v3

    .line 101
    invoke-virtual {v2, p1}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-ltz v0, :cond_4

    .line 106
    .line 107
    iget-object v3, v2, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 108
    .line 109
    aget v0, v3, v0

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    const v0, 0x7fffffff

    .line 113
    .line 114
    .line 115
    :goto_4
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    invoke-virtual {v2, p0, p1}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    const-string p0, "A derived state calculation cannot read itself"

    .line 124
    .line 125
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object v1, v5

    .line 129
    :cond_6
    :goto_5
    return-object v1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
