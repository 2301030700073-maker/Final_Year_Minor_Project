.class public final Landroidx/compose/foundation/layout/Arrangement$End$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Horizontal;
.implements Landroidx/compose/foundation/layout/Arrangement$Vertical;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 3

    .line 1
    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    if-ne p4, p0, :cond_0

    .line 12
    .line 13
    array-length p0, p3

    .line 14
    move p1, v0

    .line 15
    move p2, p1

    .line 16
    :goto_0
    if-ge v0, p0, :cond_2

    .line 17
    .line 18
    aget p4, p3, v0

    .line 19
    .line 20
    add-int/lit8 v1, p1, 0x1

    .line 21
    .line 22
    aput p2, p5, p1

    .line 23
    .line 24
    add-int/2addr p2, p4

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    move p1, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length p0, p3

    .line 30
    move p4, v0

    .line 31
    :goto_1
    if-ge v0, p0, :cond_1

    .line 32
    .line 33
    aget v2, p3, v0

    .line 34
    .line 35
    add-int/2addr p4, v2

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sub-int/2addr p2, p4

    .line 40
    array-length p0, p3

    .line 41
    sub-int/2addr p0, v1

    .line 42
    :goto_2
    if-ge p1, p0, :cond_2

    .line 43
    .line 44
    aget p4, p3, p0

    .line 45
    .line 46
    aput p2, p5, p0

    .line 47
    .line 48
    add-int/2addr p2, p4

    .line 49
    add-int/lit8 p0, p0, -0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    return-void

    .line 53
    :pswitch_1
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 54
    .line 55
    if-ne p4, p0, :cond_3

    .line 56
    .line 57
    invoke-static {p2, p3, p5, v0}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceBetween$foundation_layout(I[I[IZ)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-static {p2, p3, p5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceBetween$foundation_layout(I[I[IZ)V

    .line 62
    .line 63
    .line 64
    :goto_3
    return-void

    .line 65
    :pswitch_2
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 66
    .line 67
    if-ne p4, p0, :cond_4

    .line 68
    .line 69
    invoke-static {p2, p3, p5, v0}, Landroidx/compose/foundation/layout/OffsetKt;->placeCenter$foundation_layout(I[I[IZ)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_4
    invoke-static {p2, p3, p5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->placeCenter$foundation_layout(I[I[IZ)V

    .line 74
    .line 75
    .line 76
    :goto_4
    return-void

    .line 77
    :pswitch_3
    array-length p0, p3

    .line 78
    move p1, v0

    .line 79
    move p4, p1

    .line 80
    :goto_5
    if-ge p1, p0, :cond_5

    .line 81
    .line 82
    aget v1, p3, p1

    .line 83
    .line 84
    add-int/2addr p4, v1

    .line 85
    add-int/lit8 p1, p1, 0x1

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_5
    sub-int/2addr p2, p4

    .line 89
    array-length p0, p3

    .line 90
    move p1, v0

    .line 91
    :goto_6
    if-ge v0, p0, :cond_6

    .line 92
    .line 93
    aget p4, p3, v0

    .line 94
    .line 95
    add-int/lit8 v1, p1, 0x1

    .line 96
    .line 97
    aput p2, p5, p1

    .line 98
    .line 99
    add-int/2addr p2, p4

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    move p1, v1

    .line 103
    goto :goto_6

    .line 104
    :cond_6
    return-void

    .line 105
    :pswitch_4
    array-length p0, p3

    .line 106
    move p1, v0

    .line 107
    move p2, p1

    .line 108
    :goto_7
    if-ge v0, p0, :cond_7

    .line 109
    .line 110
    aget p4, p3, v0

    .line 111
    .line 112
    add-int/lit8 v1, p1, 0x1

    .line 113
    .line 114
    aput p2, p5, p1

    .line 115
    .line 116
    add-int/2addr p2, p4

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    move p1, v1

    .line 120
    goto :goto_7

    .line 121
    :cond_7
    return-void

    .line 122
    :pswitch_5
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 123
    .line 124
    if-ne p4, p0, :cond_9

    .line 125
    .line 126
    array-length p0, p3

    .line 127
    move p1, v0

    .line 128
    move p4, p1

    .line 129
    :goto_8
    if-ge p1, p0, :cond_8

    .line 130
    .line 131
    aget v1, p3, p1

    .line 132
    .line 133
    add-int/2addr p4, v1

    .line 134
    add-int/lit8 p1, p1, 0x1

    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_8
    sub-int/2addr p2, p4

    .line 138
    array-length p0, p3

    .line 139
    move p1, v0

    .line 140
    :goto_9
    if-ge v0, p0, :cond_a

    .line 141
    .line 142
    aget p4, p3, v0

    .line 143
    .line 144
    add-int/lit8 v1, p1, 0x1

    .line 145
    .line 146
    aput p2, p5, p1

    .line 147
    .line 148
    add-int/2addr p2, p4

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 150
    .line 151
    move p1, v1

    .line 152
    goto :goto_9

    .line 153
    :cond_9
    array-length p0, p3

    .line 154
    sub-int/2addr p0, v1

    .line 155
    :goto_a
    if-ge p1, p0, :cond_a

    .line 156
    .line 157
    aget p2, p3, p0

    .line 158
    .line 159
    aput v0, p5, p0

    .line 160
    .line 161
    add-int/2addr v0, p2

    .line 162
    add-int/lit8 p0, p0, -0x1

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :cond_a
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public arrange(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 3

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 167
    array-length p0, p3

    move p2, p1

    move v0, p2

    :goto_0
    if-ge p1, p0, :cond_0

    aget v1, p3, p1

    add-int/lit8 v2, p2, 0x1

    .line 168
    aput v0, p4, p2

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    move p2, v2

    goto :goto_0

    :cond_0
    return-void

    .line 169
    :pswitch_0
    invoke-static {p2, p3, p4, p1}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceBetween$foundation_layout(I[I[IZ)V

    return-void

    .line 170
    :pswitch_1
    invoke-static {p2, p3, p4, p1}, Landroidx/compose/foundation/layout/OffsetKt;->placeCenter$foundation_layout(I[I[IZ)V

    return-void

    .line 171
    :pswitch_2
    array-length p0, p3

    move v0, p1

    move v1, v0

    :goto_1
    if-ge v0, p0, :cond_1

    aget v2, p3, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr p2, v1

    .line 172
    array-length p0, p3

    move v0, p2

    move p2, p1

    :goto_2
    if-ge p1, p0, :cond_2

    aget v1, p3, p1

    add-int/lit8 v2, p2, 0x1

    .line 173
    aput v0, p4, p2

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    move p2, v2

    goto :goto_2

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSpacing-D9Ej5fM()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :pswitch_3
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :pswitch_4
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :pswitch_5
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :pswitch_6
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    nop

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

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "Arrangement#Top"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "Arrangement#Start"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "Arrangement#SpaceBetween"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "Arrangement#Center"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, "Arrangement#Bottom"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "AbsoluteArrangement#Right"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "AbsoluteArrangement#Left"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "Arrangement#End"

    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
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
