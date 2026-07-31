.class public final Landroidx/compose/foundation/layout/Arrangement$End$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
.method public final arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 3

    .line 1
    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    if-ne p4, v0, :cond_0

    .line 12
    .line 13
    array-length p0, p3

    .line 14
    move p1, v1

    .line 15
    move p2, p1

    .line 16
    :goto_0
    if-ge v1, p0, :cond_2

    .line 17
    .line 18
    aget p4, p3, v1

    .line 19
    .line 20
    add-int/lit8 v0, p1, 0x1

    .line 21
    .line 22
    aput p2, p5, p1

    .line 23
    .line 24
    add-int/2addr p2, p4

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    move p1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length p0, p3

    .line 30
    move p4, v1

    .line 31
    :goto_1
    if-ge v1, p0, :cond_1

    .line 32
    .line 33
    aget v0, p3, v1

    .line 34
    .line 35
    add-int/2addr p4, v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sub-int/2addr p2, p4

    .line 40
    array-length p0, p3

    .line 41
    sub-int/2addr p0, v2

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
    :pswitch_0
    if-ne p4, v0, :cond_3

    .line 54
    .line 55
    invoke-static {p2, p3, p5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceEvenly$foundation_layout(I[I[IZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    invoke-static {p2, p3, p5, v2}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceEvenly$foundation_layout(I[I[IZ)V

    .line 60
    .line 61
    .line 62
    :goto_3
    return-void

    .line 63
    :pswitch_1
    if-ne p4, v0, :cond_4

    .line 64
    .line 65
    invoke-static {p2, p3, p5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceBetween$foundation_layout(I[I[IZ)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    invoke-static {p2, p3, p5, v2}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceBetween$foundation_layout(I[I[IZ)V

    .line 70
    .line 71
    .line 72
    :goto_4
    return-void

    .line 73
    :pswitch_2
    if-ne p4, v0, :cond_5

    .line 74
    .line 75
    invoke-static {p2, p3, p5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->placeCenter$foundation_layout(I[I[IZ)V

    .line 76
    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_5
    invoke-static {p2, p3, p5, v2}, Landroidx/compose/foundation/layout/OffsetKt;->placeCenter$foundation_layout(I[I[IZ)V

    .line 80
    .line 81
    .line 82
    :goto_5
    return-void

    .line 83
    :pswitch_3
    array-length p0, p3

    .line 84
    move p1, v1

    .line 85
    move p4, p1

    .line 86
    :goto_6
    if-ge p1, p0, :cond_6

    .line 87
    .line 88
    aget v0, p3, p1

    .line 89
    .line 90
    add-int/2addr p4, v0

    .line 91
    add-int/lit8 p1, p1, 0x1

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_6
    sub-int/2addr p2, p4

    .line 95
    array-length p0, p3

    .line 96
    move p1, v1

    .line 97
    :goto_7
    if-ge v1, p0, :cond_7

    .line 98
    .line 99
    aget p4, p3, v1

    .line 100
    .line 101
    add-int/lit8 v0, p1, 0x1

    .line 102
    .line 103
    aput p2, p5, p1

    .line 104
    .line 105
    add-int/2addr p2, p4

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    move p1, v0

    .line 109
    goto :goto_7

    .line 110
    :cond_7
    return-void

    .line 111
    :pswitch_4
    array-length p0, p3

    .line 112
    move p1, v1

    .line 113
    move p2, p1

    .line 114
    :goto_8
    if-ge v1, p0, :cond_8

    .line 115
    .line 116
    aget p4, p3, v1

    .line 117
    .line 118
    add-int/lit8 v0, p1, 0x1

    .line 119
    .line 120
    aput p2, p5, p1

    .line 121
    .line 122
    add-int/2addr p2, p4

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    move p1, v0

    .line 126
    goto :goto_8

    .line 127
    :cond_8
    return-void

    .line 128
    :pswitch_5
    if-ne p4, v0, :cond_a

    .line 129
    .line 130
    array-length p0, p3

    .line 131
    move p1, v1

    .line 132
    move p4, p1

    .line 133
    :goto_9
    if-ge p1, p0, :cond_9

    .line 134
    .line 135
    aget v0, p3, p1

    .line 136
    .line 137
    add-int/2addr p4, v0

    .line 138
    add-int/lit8 p1, p1, 0x1

    .line 139
    .line 140
    goto :goto_9

    .line 141
    :cond_9
    sub-int/2addr p2, p4

    .line 142
    array-length p0, p3

    .line 143
    move p1, v1

    .line 144
    :goto_a
    if-ge v1, p0, :cond_b

    .line 145
    .line 146
    aget p4, p3, v1

    .line 147
    .line 148
    add-int/lit8 v0, p1, 0x1

    .line 149
    .line 150
    aput p2, p5, p1

    .line 151
    .line 152
    add-int/2addr p2, p4

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    move p1, v0

    .line 156
    goto :goto_a

    .line 157
    :cond_a
    array-length p0, p3

    .line 158
    sub-int/2addr p0, v2

    .line 159
    :goto_b
    if-ge p1, p0, :cond_b

    .line 160
    .line 161
    aget p2, p3, p0

    .line 162
    .line 163
    aput v1, p5, p0

    .line 164
    .line 165
    add-int/2addr v1, p2

    .line 166
    add-int/lit8 p0, p0, -0x1

    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_b
    return-void

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public arrange(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 171
    invoke-static {p2, p3, p4, p1}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceEvenly$foundation_layout(I[I[IZ)V

    return-void

    .line 172
    :pswitch_0
    invoke-static {p2, p3, p4, p1}, Landroidx/compose/foundation/layout/OffsetKt;->placeSpaceBetween$foundation_layout(I[I[IZ)V

    return-void

    .line 173
    :pswitch_1
    invoke-static {p2, p3, p4, p1}, Landroidx/compose/foundation/layout/OffsetKt;->placeCenter$foundation_layout(I[I[IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
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
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
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
    const-string p0, "Arrangement#Start"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "Arrangement#SpaceEvenly"

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
    const-string p0, "AbsoluteArrangement#Right"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "AbsoluteArrangement#Left"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, "Arrangement#End"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
