.class public final synthetic Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;ILkotlinx/datetime/internal/format/parser/NumberConsumptionError;)V
    .locals 1

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$1:I

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    check-cast v3, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;

    .line 17
    .line 18
    check-cast v1, Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;

    .line 19
    .line 20
    const-string v0, "Can not interpret the string \'"

    .line 21
    .line 22
    const-string v4, "\' as "

    .line 23
    .line 24
    invoke-static {v0, p0, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object v0, v3, Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;->consumers:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lkotlinx/datetime/internal/format/parser/NumberConsumer;

    .line 35
    .line 36
    iget-object v0, v0, Lkotlinx/datetime/internal/format/parser/NumberConsumer;->whatThisExpects:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ": "

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;->errorMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_0
    check-cast p0, Landroidx/compose/material3/WindowBoundsCalculator;

    .line 59
    .line 60
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 61
    .line 62
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 63
    .line 64
    iget-object p0, p0, Landroidx/compose/material3/WindowBoundsCalculator;->view:Landroid/view/View;

    .line 65
    .line 66
    new-instance v0, Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 77
    .line 78
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached$1()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_0

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-wide/16 v4, 0x0

    .line 94
    .line 95
    invoke-interface {v3, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    invoke-static {v6, v7}, Lorg/jsoup/helper/Validate;->toSize-ozmzZPI(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v6

    .line 107
    invoke-static {v4, v5, v6, v7}, Lorg/slf4j/helpers/Util;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    sget-object v3, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    .line 113
    .line 114
    :goto_1
    add-int v4, p0, v2

    .line 115
    .line 116
    sub-int v2, v0, v2

    .line 117
    .line 118
    iget v5, v3, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 119
    .line 120
    int-to-float v0, v0

    .line 121
    cmpl-float v0, v5, v0

    .line 122
    .line 123
    if-gtz v0, :cond_3

    .line 124
    .line 125
    iget v0, v3, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 126
    .line 127
    int-to-float p0, p0

    .line 128
    cmpg-float p0, v0, p0

    .line 129
    .line 130
    if-gez p0, :cond_2

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_2
    int-to-float p0, v4

    .line 134
    sub-float/2addr v5, p0

    .line 135
    int-to-float p0, v2

    .line 136
    sub-float/2addr p0, v0

    .line 137
    invoke-static {v5, p0}, Ljava/lang/Math;->max(FF)F

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    :goto_2
    sub-int p0, v2, v4

    .line 147
    .line 148
    :goto_3
    const/4 v0, 0x0

    .line 149
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 154
    .line 155
    .line 156
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
