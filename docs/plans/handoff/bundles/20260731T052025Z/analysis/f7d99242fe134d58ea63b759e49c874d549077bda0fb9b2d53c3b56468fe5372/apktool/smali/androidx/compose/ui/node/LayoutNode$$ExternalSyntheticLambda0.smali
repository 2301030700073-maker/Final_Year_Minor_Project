.class public final synthetic Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sub-int/2addr p0, p1

    .line 19
    return p0

    .line 20
    :pswitch_0
    check-cast p1, [B

    .line 21
    .line 22
    check-cast p2, [B

    .line 23
    .line 24
    array-length p0, p1

    .line 25
    array-length v0, p2

    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    .line 28
    array-length p0, p1

    .line 29
    array-length p1, p2

    .line 30
    sub-int/2addr p0, p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    move v0, p0

    .line 34
    :goto_0
    array-length v1, p1

    .line 35
    if-ge v0, v1, :cond_2

    .line 36
    .line 37
    aget-byte v1, p1, v0

    .line 38
    .line 39
    aget-byte v2, p2, v0

    .line 40
    .line 41
    if-eq v1, v2, :cond_1

    .line 42
    .line 43
    sub-int p0, v1, v2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    return p0

    .line 50
    :pswitch_1
    check-cast p1, Lkotlin/ranges/IntRange;

    .line 51
    .line 52
    check-cast p2, Lkotlin/ranges/IntRange;

    .line 53
    .line 54
    iget p0, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 55
    .line 56
    iget p1, p1, Lkotlin/ranges/IntProgression;->first:I

    .line 57
    .line 58
    sub-int/2addr p0, p1

    .line 59
    iget p1, p2, Lkotlin/ranges/IntProgression;->last:I

    .line 60
    .line 61
    iget p2, p2, Lkotlin/ranges/IntProgression;->first:I

    .line 62
    .line 63
    sub-int/2addr p1, p2

    .line 64
    sub-int/2addr p0, p1

    .line 65
    return p0

    .line 66
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/Invalidation;

    .line 67
    .line 68
    check-cast p2, Landroidx/compose/runtime/Invalidation;

    .line 69
    .line 70
    iget p0, p1, Landroidx/compose/runtime/Invalidation;->location:I

    .line 71
    .line 72
    iget p1, p2, Landroidx/compose/runtime/Invalidation;->location:I

    .line 73
    .line 74
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    :pswitch_3
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 80
    .line 81
    check-cast p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;

    .line 82
    .line 83
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-interface {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;->getIndex()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    return p0

    .line 96
    :pswitch_4
    check-cast p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 97
    .line 98
    check-cast p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;

    .line 99
    .line 100
    iget p0, p2, Landroidx/compose/foundation/lazy/layout/PriorityTask;->priority:I

    .line 101
    .line 102
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/PriorityTask;->priority:I

    .line 103
    .line 104
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    return p0

    .line 109
    :pswitch_5
    check-cast p1, Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 110
    .line 111
    check-cast p2, Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 112
    .line 113
    iget-object p0, p1, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    .line 114
    .line 115
    iget-object p1, p2, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0

    .line 122
    :pswitch_6
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 123
    .line 124
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 125
    .line 126
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 127
    .line 128
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 129
    .line 130
    iget p0, p0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    .line 131
    .line 132
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 133
    .line 134
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 135
    .line 136
    iget v0, v0, Landroidx/compose/ui/node/MeasurePassDelegate;->zIndex:F

    .line 137
    .line 138
    cmpg-float v1, p0, v0

    .line 139
    .line 140
    if-nez v1, :cond_3

    .line 141
    .line 142
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getPlaceOrder$ui()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    :goto_2
    return p0

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
