.class public final Landroidx/transition/ViewUtils$1;
.super Landroid/util/Property;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p2, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_3
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_4
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_5
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 30
    .line 31
    iget p0, p1, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_6
    check-cast p1, Landroid/view/View;

    .line 39
    .line 40
    sget-object p0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi23;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lokio/Okio;->getTransitionAlpha(Landroid/view/View;)F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
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

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    check-cast p2, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 16
    .line 17
    check-cast p2, Landroid/graphics/PointF;

    .line 18
    .line 19
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v0, p0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/2addr v1, p2

    .line 41
    invoke-static {p1, p0, p2, v0, v1}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    check-cast p1, Landroid/view/View;

    .line 46
    .line 47
    check-cast p2, Landroid/graphics/PointF;

    .line 48
    .line 49
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 50
    .line 51
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {p1, p0, p2, v0, v1}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 74
    .line 75
    check-cast p2, Landroid/graphics/PointF;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 92
    .line 93
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-static {p1, p0, v0, v1, p2}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_3
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 102
    .line 103
    check-cast p2, Landroid/graphics/PointF;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 109
    .line 110
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 115
    .line 116
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 117
    .line 118
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 123
    .line 124
    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 125
    .line 126
    add-int/lit8 p2, p2, 0x1

    .line 127
    .line 128
    iput p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 129
    .line 130
    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 131
    .line 132
    if-ne v1, p2, :cond_0

    .line 133
    .line 134
    iget-object p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    .line 135
    .line 136
    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 137
    .line 138
    iget v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 139
    .line 140
    iget v3, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 141
    .line 142
    invoke-static {p2, v1, v2, v3, p0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 143
    .line 144
    .line 145
    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 146
    .line 147
    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 148
    .line 149
    :cond_0
    return-void

    .line 150
    :pswitch_4
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 151
    .line 152
    check-cast p2, Landroid/graphics/PointF;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 158
    .line 159
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 164
    .line 165
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 166
    .line 167
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 172
    .line 173
    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 174
    .line 175
    add-int/lit8 p2, p2, 0x1

    .line 176
    .line 177
    iput p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 178
    .line 179
    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 180
    .line 181
    if-ne p2, v1, :cond_1

    .line 182
    .line 183
    iget-object p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    .line 184
    .line 185
    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 186
    .line 187
    iget v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 188
    .line 189
    iget v3, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 190
    .line 191
    invoke-static {p2, v1, p0, v2, v3}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 192
    .line 193
    .line 194
    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 195
    .line 196
    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 197
    .line 198
    :cond_1
    return-void

    .line 199
    :pswitch_5
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 200
    .line 201
    check-cast p2, Ljava/lang/Float;

    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_6
    check-cast p1, Landroid/view/View;

    .line 212
    .line 213
    check-cast p2, Ljava/lang/Float;

    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    sget-object p2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi23;

    .line 220
    .line 221
    invoke-virtual {p2, p1, p0}, Lokio/Okio;->setTransitionAlpha(Landroid/view/View;F)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
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
