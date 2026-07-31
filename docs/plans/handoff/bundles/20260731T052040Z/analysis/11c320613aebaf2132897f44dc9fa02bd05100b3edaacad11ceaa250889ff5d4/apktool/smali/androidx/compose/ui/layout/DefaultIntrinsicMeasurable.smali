.class public final Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final measurable:Landroidx/compose/ui/layout/Measurable;

.field public final minMax:Ljava/lang/Enum;

.field public final widthHeight:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Measurable;Ljava/lang/Enum;Ljava/lang/Enum;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->minMax:Ljava/lang/Enum;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->widthHeight:Ljava/lang/Enum;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getParentData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 14
    .line 15
    invoke-interface {p0}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final maxIntrinsicHeight(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final maxIntrinsicWidth(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->minMax:Ljava/lang/Enum;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->widthHeight:Ljava/lang/Enum;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 8
    .line 9
    const/16 v3, 0x7fff

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v2, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    sget-object v4, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;->Max:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicMinMax;

    .line 20
    .line 21
    sget-object v5, Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;->Width:Landroidx/compose/ui/node/NodeMeasuringIntrinsics$IntrinsicWidthHeight;

    .line 22
    .line 23
    if-ne v2, v5, :cond_2

    .line 24
    .line 25
    if-ne v1, v4, :cond_0

    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    :cond_1
    new-instance p1, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;

    .line 55
    .line 56
    invoke-direct {p1, p0, v3, v0}, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;-><init>(III)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    if-ne v1, v4, :cond_3

    .line 61
    .line 62
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    :goto_1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    :cond_4
    new-instance p1, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;

    .line 90
    .line 91
    invoke-direct {p1, v3, p0, v0}, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;-><init>(III)V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-object p1

    .line 95
    :pswitch_0
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    .line 96
    .line 97
    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    sget-object v4, Landroidx/compose/ui/layout/IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 101
    .line 102
    sget-object v5, Landroidx/compose/ui/layout/IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    .line 103
    .line 104
    if-ne v2, v5, :cond_7

    .line 105
    .line 106
    if-ne v1, v4, :cond_5

    .line 107
    .line 108
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    :goto_3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_6

    .line 130
    .line 131
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    :cond_6
    new-instance p1, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;

    .line 136
    .line 137
    invoke-direct {p1, p0, v3, v0}, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;-><init>(III)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    if-ne v1, v4, :cond_8

    .line 142
    .line 143
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicHeight(I)I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-interface {p0, v1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    :goto_4
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    :cond_9
    new-instance p1, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;

    .line 171
    .line 172
    invoke-direct {p1, v3, p0, v0}, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;-><init>(III)V

    .line 173
    .line 174
    .line 175
    :goto_5
    return-object p1

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final minIntrinsicHeight(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final minIntrinsicWidth(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/Measurable;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
