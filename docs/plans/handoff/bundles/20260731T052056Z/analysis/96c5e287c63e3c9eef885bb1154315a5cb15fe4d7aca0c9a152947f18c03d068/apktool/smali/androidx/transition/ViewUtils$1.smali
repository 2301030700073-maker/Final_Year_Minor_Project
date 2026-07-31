.class public final Landroidx/transition/ViewUtils$1;
.super Landroid/util/Property;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

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
    check-cast p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    .line 8
    .line 9
    iget p0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animationFraction:F

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_0
    check-cast p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    .line 17
    .line 18
    iget p0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->animationFraction:F

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_1
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    int-to-float p0, p0

    .line 43
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    int-to-float p0, p0

    .line 55
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    .line 68
    int-to-float p0, p0

    .line 69
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_5
    check-cast p1, Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    .line 82
    int-to-float p0, p0

    .line 83
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :pswitch_6
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentOriginalTextColor()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p0, :cond_0

    .line 107
    .line 108
    int-to-float p1, p1

    .line 109
    int-to-float p0, p0

    .line 110
    div-float/2addr p1, p0

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/4 p1, 0x0

    .line 113
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :pswitch_7
    check-cast p1, Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_8
    check-cast p1, Landroid/view/View;

    .line 126
    .line 127
    return-object v0

    .line 128
    :pswitch_9
    check-cast p1, Landroid/view/View;

    .line 129
    .line 130
    return-object v0

    .line 131
    :pswitch_a
    check-cast p1, Landroid/view/View;

    .line 132
    .line 133
    return-object v0

    .line 134
    :pswitch_b
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 135
    .line 136
    return-object v0

    .line 137
    :pswitch_c
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 138
    .line 139
    return-object v0

    .line 140
    :pswitch_d
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 141
    .line 142
    iget p0, p1, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    .line 143
    .line 144
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :pswitch_e
    check-cast p1, Landroid/view/View;

    .line 150
    .line 151
    sget-object p0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi23;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lkotlin/text/RegexKt;->getTransitionAlpha(Landroid/view/View;)F

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
    .locals 12

    .line 1
    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    iput p0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animationFraction:F

    .line 20
    .line 21
    const/high16 p2, 0x44e10000    # 1800.0f

    .line 22
    .line 23
    mul-float/2addr p0, p2

    .line 24
    float-to-int p0, p0

    .line 25
    iget-object p2, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->interpolatorArray:[Landroid/view/animation/Interpolator;

    .line 26
    .line 27
    iget-object v4, p1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Ljava/util/ArrayList;

    .line 30
    .line 31
    move v5, v2

    .line 32
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-ge v5, v6, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 43
    .line 44
    sget-object v7, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->DELAY_TO_MOVE_SEGMENT_ENDS:[I

    .line 45
    .line 46
    mul-int/lit8 v8, v5, 0x2

    .line 47
    .line 48
    aget v9, v7, v8

    .line 49
    .line 50
    sget-object v10, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->DURATION_TO_MOVE_SEGMENT_ENDS:[I

    .line 51
    .line 52
    aget v11, v10, v8

    .line 53
    .line 54
    sub-int v9, p0, v9

    .line 55
    .line 56
    int-to-float v9, v9

    .line 57
    int-to-float v11, v11

    .line 58
    div-float/2addr v9, v11

    .line 59
    invoke-static {v9, v0, v1}, Lkotlin/text/RegexKt;->clamp(FFF)F

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    aget-object v11, p2, v8

    .line 64
    .line 65
    invoke-interface {v11, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    invoke-static {v9, v0, v1}, Lkotlin/text/RegexKt;->clamp(FFF)F

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    iput v9, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 74
    .line 75
    add-int/2addr v8, v3

    .line 76
    aget v7, v7, v8

    .line 77
    .line 78
    aget v9, v10, v8

    .line 79
    .line 80
    sub-int v7, p0, v7

    .line 81
    .line 82
    int-to-float v7, v7

    .line 83
    int-to-float v9, v9

    .line 84
    div-float/2addr v7, v9

    .line 85
    invoke-static {v7, v0, v1}, Lkotlin/text/RegexKt;->clamp(FFF)F

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    aget-object v8, p2, v8

    .line 90
    .line 91
    invoke-interface {v8, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-static {v7, v0, v1}, Lkotlin/text/RegexKt;->clamp(FFF)F

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    iput v7, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 100
    .line 101
    add-int/lit8 v5, v5, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    iget-boolean p0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->dirtyColors:Z

    .line 105
    .line 106
    if-eqz p0, :cond_2

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_1

    .line 117
    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 123
    .line 124
    iget-object v0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorColors:[I

    .line 127
    .line 128
    iget v1, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->indicatorColorIndex:I

    .line 129
    .line 130
    aget v0, v0, v1

    .line 131
    .line 132
    iput v0, p2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    iput-boolean v2, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->dirtyColors:Z

    .line 136
    .line 137
    :cond_2
    iget-object p0, p1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_0
    check-cast p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    .line 146
    .line 147
    check-cast p2, Ljava/lang/Float;

    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    iput p0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->animationFraction:F

    .line 154
    .line 155
    const p2, 0x43a68000    # 333.0f

    .line 156
    .line 157
    .line 158
    mul-float/2addr p0, p2

    .line 159
    float-to-int p0, p0

    .line 160
    iget-object p2, p1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p2, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 169
    .line 170
    iput v0, v4, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 171
    .line 172
    int-to-float p0, p0

    .line 173
    const v4, 0x4426c000    # 667.0f

    .line 174
    .line 175
    .line 176
    div-float/2addr p0, v4

    .line 177
    invoke-static {p0, v0, v1}, Lkotlin/text/RegexKt;->clamp(FFF)F

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 186
    .line 187
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 192
    .line 193
    iget-object v5, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 194
    .line 195
    invoke-virtual {v5, p0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    iput v6, v4, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 200
    .line 201
    iput v6, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 202
    .line 203
    const v0, 0x3eff9dbf

    .line 204
    .line 205
    .line 206
    add-float/2addr p0, v0

    .line 207
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 212
    .line 213
    const/4 v4, 0x2

    .line 214
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    check-cast v6, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 219
    .line 220
    invoke-virtual {v5, p0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    iput p0, v6, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->startFraction:F

    .line 225
    .line 226
    iput p0, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 227
    .line 228
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    check-cast p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 233
    .line 234
    iput v1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 235
    .line 236
    iget-boolean p0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->dirtyColors:Z

    .line 237
    .line 238
    if-eqz p0, :cond_3

    .line 239
    .line 240
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    check-cast p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 245
    .line 246
    iget p0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->endFraction:F

    .line 247
    .line 248
    cmpg-float p0, p0, v1

    .line 249
    .line 250
    if-gez p0, :cond_3

    .line 251
    .line 252
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 257
    .line 258
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 263
    .line 264
    iget v0, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    .line 265
    .line 266
    iput v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    .line 267
    .line 268
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    check-cast p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 273
    .line 274
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 279
    .line 280
    iget v0, v0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    .line 281
    .line 282
    iput v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    .line 283
    .line 284
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    check-cast p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    .line 289
    .line 290
    iget-object p2, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 291
    .line 292
    iget-object p2, p2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorColors:[I

    .line 293
    .line 294
    iget v0, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->newIndicatorColorIndex:I

    .line 295
    .line 296
    aget p2, p2, v0

    .line 297
    .line 298
    iput p2, p0, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;->color:I

    .line 299
    .line 300
    iput-boolean v2, p1, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->dirtyColors:Z

    .line 301
    .line 302
    :cond_3
    iget-object p0, p1, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :pswitch_1
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 311
    .line 312
    check-cast p2, Ljava/lang/Float;

    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    iget p2, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    .line 319
    .line 320
    cmpl-float p2, p2, p0

    .line 321
    .line 322
    if-eqz p2, :cond_4

    .line 323
    .line 324
    iput p0, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    .line 325
    .line 326
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 327
    .line 328
    .line 329
    :cond_4
    return-void

    .line 330
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 331
    .line 332
    check-cast p2, Ljava/lang/Float;

    .line 333
    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 355
    .line 356
    check-cast p2, Ljava/lang/Float;

    .line 357
    .line 358
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result p0

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 363
    .line 364
    .line 365
    move-result p2

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 379
    .line 380
    check-cast p2, Ljava/lang/Float;

    .line 381
    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result p2

    .line 390
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 391
    .line 392
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :pswitch_5
    check-cast p1, Landroid/view/View;

    .line 397
    .line 398
    check-cast p2, Ljava/lang/Float;

    .line 399
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result p2

    .line 408
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 409
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :pswitch_6
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 415
    .line 416
    check-cast p2, Ljava/lang/Float;

    .line 417
    .line 418
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 419
    .line 420
    .line 421
    move-result p0

    .line 422
    cmpl-float p0, p0, v1

    .line 423
    .line 424
    if-nez p0, :cond_5

    .line 425
    .line 426
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getOriginalTextColor()Landroid/content/res/ColorStateList;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->silentlyUpdateTextColor(Landroid/content/res/ColorStateList;)V

    .line 431
    .line 432
    .line 433
    goto :goto_2

    .line 434
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCurrentOriginalTextColor()I

    .line 435
    .line 436
    .line 437
    move-result p0

    .line 438
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    int-to-float v1, v1

    .line 443
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 444
    .line 445
    .line 446
    move-result p2

    .line 447
    invoke-static {v0, v1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    .line 448
    .line 449
    .line 450
    move-result p2

    .line 451
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 452
    .line 453
    .line 454
    move-result p2

    .line 455
    invoke-static {p0, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 456
    .line 457
    .line 458
    move-result p0

    .line 459
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->silentlyUpdateTextColor(Landroid/content/res/ColorStateList;)V

    .line 464
    .line 465
    .line 466
    :goto_2
    return-void

    .line 467
    :pswitch_7
    check-cast p1, Landroid/view/View;

    .line 468
    .line 469
    check-cast p2, Landroid/graphics/Rect;

    .line 470
    .line 471
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :pswitch_8
    check-cast p1, Landroid/view/View;

    .line 476
    .line 477
    check-cast p2, Landroid/graphics/PointF;

    .line 478
    .line 479
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 480
    .line 481
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 482
    .line 483
    .line 484
    move-result p0

    .line 485
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 486
    .line 487
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 488
    .line 489
    .line 490
    move-result p2

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    add-int/2addr v0, p0

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    add-int/2addr v1, p2

    .line 501
    invoke-static {p1, p0, p2, v0, v1}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :pswitch_9
    check-cast p1, Landroid/view/View;

    .line 506
    .line 507
    check-cast p2, Landroid/graphics/PointF;

    .line 508
    .line 509
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 510
    .line 511
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 512
    .line 513
    .line 514
    move-result p0

    .line 515
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 516
    .line 517
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 518
    .line 519
    .line 520
    move-result p2

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    invoke-static {p1, p0, p2, v0, v1}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_a
    check-cast p1, Landroid/view/View;

    .line 534
    .line 535
    check-cast p2, Landroid/graphics/PointF;

    .line 536
    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 538
    .line 539
    .line 540
    move-result p0

    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 546
    .line 547
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 552
    .line 553
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 554
    .line 555
    .line 556
    move-result p2

    .line 557
    invoke-static {p1, p0, v0, v1, p2}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 558
    .line 559
    .line 560
    return-void

    .line 561
    :pswitch_b
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 562
    .line 563
    check-cast p2, Landroid/graphics/PointF;

    .line 564
    .line 565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 569
    .line 570
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 571
    .line 572
    .line 573
    move-result p0

    .line 574
    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 575
    .line 576
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 577
    .line 578
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 579
    .line 580
    .line 581
    move-result p0

    .line 582
    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 583
    .line 584
    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 585
    .line 586
    add-int/2addr p2, v3

    .line 587
    iput p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 588
    .line 589
    iget v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 590
    .line 591
    if-ne v0, p2, :cond_6

    .line 592
    .line 593
    iget-object p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    .line 594
    .line 595
    iget v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 596
    .line 597
    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 598
    .line 599
    iget v3, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 600
    .line 601
    invoke-static {p2, v0, v1, v3, p0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 602
    .line 603
    .line 604
    iput v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 605
    .line 606
    iput v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 607
    .line 608
    :cond_6
    return-void

    .line 609
    :pswitch_c
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    .line 610
    .line 611
    check-cast p2, Landroid/graphics/PointF;

    .line 612
    .line 613
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 617
    .line 618
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 619
    .line 620
    .line 621
    move-result p0

    .line 622
    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 623
    .line 624
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 625
    .line 626
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 627
    .line 628
    .line 629
    move-result p0

    .line 630
    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    .line 631
    .line 632
    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 633
    .line 634
    add-int/2addr p2, v3

    .line 635
    iput p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 636
    .line 637
    iget v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 638
    .line 639
    if-ne p2, v0, :cond_7

    .line 640
    .line 641
    iget-object p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    .line 642
    .line 643
    iget v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    .line 644
    .line 645
    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    .line 646
    .line 647
    iget v3, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    .line 648
    .line 649
    invoke-static {p2, v0, p0, v1, v3}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 650
    .line 651
    .line 652
    iput v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    .line 653
    .line 654
    iput v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    .line 655
    .line 656
    :cond_7
    return-void

    .line 657
    :pswitch_d
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 658
    .line 659
    check-cast p2, Ljava/lang/Float;

    .line 660
    .line 661
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 662
    .line 663
    .line 664
    move-result p0

    .line 665
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    .line 666
    .line 667
    .line 668
    return-void

    .line 669
    :pswitch_e
    check-cast p1, Landroid/view/View;

    .line 670
    .line 671
    check-cast p2, Ljava/lang/Float;

    .line 672
    .line 673
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 674
    .line 675
    .line 676
    move-result p0

    .line 677
    sget-object p2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi23;

    .line 678
    .line 679
    invoke-virtual {p2, p1, p0}, Lkotlin/text/RegexKt;->setTransitionAlpha(Landroid/view/View;F)V

    .line 680
    .line 681
    .line 682
    return-void

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
