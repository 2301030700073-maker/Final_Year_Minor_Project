.class public final Lcom/google/android/material/motion/MaterialSideContainerBackHelper;
.super Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final maxScaleXDistanceGrow:F

.field public final maxScaleXDistanceShrink:F

.field public final maxScaleYDistance:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/motion/MaterialBackAnimationHelper;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0700ce

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceShrink:F

    .line 16
    .line 17
    const v0, 0x7f0700cd

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceGrow:F

    .line 25
    .line 26
    const v0, 0x7f0700cf

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleYDistance:F

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final updateBackProgress(FIZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->progressInterpolator:Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v1, 0x3

    .line 18
    and-int/2addr p2, v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne p2, v1, :cond_0

    .line 22
    .line 23
    move p2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p2, v2

    .line 26
    :goto_0
    if-ne p3, p2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v3, v2

    .line 30
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-float v4, p3

    .line 39
    const/4 v5, 0x0

    .line 40
    cmpg-float v6, v4, v5

    .line 41
    .line 42
    if-lez v6, :cond_b

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    cmpg-float v6, v1, v5

    .line 46
    .line 47
    if-gtz v6, :cond_2

    .line 48
    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_2
    iget v6, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceShrink:F

    .line 52
    .line 53
    div-float/2addr v6, v4

    .line 54
    iget v7, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleXDistanceGrow:F

    .line 55
    .line 56
    div-float/2addr v7, v4

    .line 57
    iget p0, p0, Lcom/google/android/material/motion/MaterialSideContainerBackHelper;->maxScaleYDistance:F

    .line 58
    .line 59
    div-float/2addr p0, v1

    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    move v4, v5

    .line 63
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 64
    .line 65
    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    neg-float v7, v6

    .line 70
    :goto_2
    invoke-static {v5, v7, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/high16 v4, 0x3f800000    # 1.0f

    .line 75
    .line 76
    add-float v6, v1, v4

    .line 77
    .line 78
    invoke-static {v5, p0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    sub-float p0, v4, p0

    .line 83
    .line 84
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_b

    .line 89
    .line 90
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    goto :goto_8

    .line 97
    :cond_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p0}, Landroid/view/View;->setScaleY(F)V

    .line 101
    .line 102
    .line 103
    instance-of p1, v0, Landroid/view/ViewGroup;

    .line 104
    .line 105
    if-eqz p1, :cond_b

    .line 106
    .line 107
    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    .line 109
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-ge v2, p1, :cond_b

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p2, :cond_6

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    sub-int v7, p3, v7

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    add-int/2addr v8, v7

    .line 132
    int-to-float v7, v8

    .line 133
    goto :goto_4

    .line 134
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    neg-int v7, v7

    .line 139
    int-to-float v7, v7

    .line 140
    :goto_4
    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    neg-int v7, v7

    .line 148
    int-to-float v7, v7

    .line 149
    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 150
    .line 151
    .line 152
    if-eqz v3, :cond_7

    .line 153
    .line 154
    sub-float v7, v4, v1

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    move v7, v4

    .line 158
    :goto_5
    cmpl-float v8, p0, v5

    .line 159
    .line 160
    if-eqz v8, :cond_8

    .line 161
    .line 162
    div-float v8, v6, p0

    .line 163
    .line 164
    mul-float/2addr v8, v7

    .line 165
    goto :goto_6

    .line 166
    :cond_8
    move v8, v4

    .line 167
    :goto_6
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_a

    .line 172
    .line 173
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    if-eqz v9, :cond_9

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_9
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 184
    .line 185
    .line 186
    :cond_a
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_b
    :goto_8
    return-void
.end method
