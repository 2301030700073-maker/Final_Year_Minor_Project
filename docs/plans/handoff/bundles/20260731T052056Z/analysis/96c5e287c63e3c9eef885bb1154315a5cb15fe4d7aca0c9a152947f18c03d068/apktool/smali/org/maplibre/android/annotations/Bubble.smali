.class public final Lorg/maplibre/android/annotations/Bubble;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public arrowHeight:F

.field public arrowPosition:F

.field public arrowWidth:F

.field public cornersRadius:F

.field public paint:Landroid/graphics/Paint;

.field public path:Landroid/graphics/Path;

.field public rect:Landroid/graphics/RectF;

.field public strokePaint:Landroid/graphics/Paint;

.field public strokePath:Landroid/graphics/Path;

.field public strokeWidth:F


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/maplibre/android/annotations/Bubble;->strokeWidth:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/maplibre/android/annotations/Bubble;->strokePath:Landroid/graphics/Path;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/maplibre/android/annotations/Bubble;->strokePaint:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/annotations/Bubble;->path:Landroid/graphics/Path;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    float-to-int p0, p0

    .line 8
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    float-to-int p0, p0

    .line 8
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public final initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    add-float/2addr v0, p3

    .line 4
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 5
    .line 6
    add-float/2addr v1, p3

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    .line 9
    .line 10
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 11
    .line 12
    sub-float/2addr v0, p3

    .line 13
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 14
    .line 15
    add-float/2addr v1, p3

    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    .line 18
    .line 19
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 20
    .line 21
    sub-float/2addr v0, p3

    .line 22
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 23
    .line 24
    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    .line 25
    .line 26
    sub-float/2addr v1, v2

    .line 27
    sub-float/2addr v1, p3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    .line 30
    .line 31
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 32
    .line 33
    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    .line 34
    .line 35
    add-float/2addr v0, v1

    .line 36
    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    .line 37
    .line 38
    add-float/2addr v0, p0

    .line 39
    const/high16 v3, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float v4, p3, v3

    .line 42
    .line 43
    sub-float/2addr v0, v4

    .line 44
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 45
    .line 46
    sub-float/2addr v5, v2

    .line 47
    sub-float/2addr v5, p3

    .line 48
    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    .line 50
    .line 51
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 52
    .line 53
    add-float/2addr v0, p0

    .line 54
    div-float/2addr v1, v3

    .line 55
    add-float/2addr v1, v0

    .line 56
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 57
    .line 58
    sub-float/2addr v0, p3

    .line 59
    sub-float/2addr v0, p3

    .line 60
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 61
    .line 62
    .line 63
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 64
    .line 65
    add-float/2addr v0, p0

    .line 66
    add-float/2addr v0, v4

    .line 67
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 68
    .line 69
    sub-float/2addr v1, v2

    .line 70
    sub-float/2addr v1, p3

    .line 71
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    .line 73
    .line 74
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 75
    .line 76
    add-float/2addr v0, p0

    .line 77
    add-float/2addr v0, p3

    .line 78
    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    .line 79
    .line 80
    sub-float/2addr p0, v2

    .line 81
    sub-float/2addr p0, p3

    .line 82
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    .line 84
    .line 85
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 86
    .line 87
    add-float/2addr p0, p3

    .line 88
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 89
    .line 90
    sub-float/2addr v0, v2

    .line 91
    sub-float/2addr v0, p3

    .line 92
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    .line 94
    .line 95
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 96
    .line 97
    add-float/2addr p0, p3

    .line 98
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 99
    .line 100
    add-float/2addr p1, p3

    .line 101
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 4
    .line 5
    add-float/2addr v1, v0

    .line 6
    add-float/2addr v1, p3

    .line 7
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 8
    .line 9
    add-float/2addr v2, p3

    .line 10
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-float/2addr v1, p3

    .line 18
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 19
    .line 20
    add-float/2addr v2, p3

    .line 21
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    .line 23
    .line 24
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 25
    .line 26
    sub-float/2addr v1, p3

    .line 27
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 28
    .line 29
    sub-float/2addr v2, p3

    .line 30
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 31
    .line 32
    .line 33
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 34
    .line 35
    add-float/2addr v1, v0

    .line 36
    add-float/2addr v1, p3

    .line 37
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 38
    .line 39
    sub-float/2addr v2, p3

    .line 40
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    .line 42
    .line 43
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 44
    .line 45
    add-float/2addr v1, v0

    .line 46
    add-float/2addr v1, p3

    .line 47
    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    .line 48
    .line 49
    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    .line 50
    .line 51
    add-float v3, v2, p0

    .line 52
    .line 53
    const/high16 v4, 0x40000000    # 2.0f

    .line 54
    .line 55
    div-float v5, p3, v4

    .line 56
    .line 57
    sub-float/2addr v3, v5

    .line 58
    invoke-virtual {p2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    .line 60
    .line 61
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 62
    .line 63
    add-float/2addr v1, p3

    .line 64
    add-float/2addr v1, p3

    .line 65
    div-float/2addr v2, v4

    .line 66
    add-float/2addr v2, p0

    .line 67
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    .line 69
    .line 70
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 71
    .line 72
    add-float/2addr v1, v0

    .line 73
    add-float/2addr v1, p3

    .line 74
    add-float/2addr p0, v5

    .line 75
    invoke-virtual {p2, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    .line 77
    .line 78
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 79
    .line 80
    add-float/2addr p0, v0

    .line 81
    add-float/2addr p0, p3

    .line 82
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 83
    .line 84
    add-float/2addr p1, p3

    .line 85
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final initPath(Lorg/maplibre/android/annotations/ArrowDirection;Landroid/graphics/Path;F)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget v3, v0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    .line 8
    .line 9
    iget v4, v0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    .line 10
    .line 11
    iget v5, v0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    .line 12
    .line 13
    iget v6, v0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    .line 14
    .line 15
    iget-object v7, v0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    .line 16
    .line 17
    move-object/from16 v8, p1

    .line 18
    .line 19
    iget v8, v8, Lorg/maplibre/android/annotations/ArrowDirection;->value:I

    .line 20
    .line 21
    const/high16 v9, 0x43340000    # 180.0f

    .line 22
    .line 23
    const/high16 v11, 0x42b40000    # 90.0f

    .line 24
    .line 25
    const/high16 v12, 0x43870000    # 270.0f

    .line 26
    .line 27
    const/4 v13, 0x0

    .line 28
    if-eqz v8, :cond_9

    .line 29
    .line 30
    const/4 v14, 0x1

    .line 31
    if-eq v8, v14, :cond_6

    .line 32
    .line 33
    const/4 v14, 0x2

    .line 34
    if-eq v8, v14, :cond_3

    .line 35
    .line 36
    const/4 v14, 0x3

    .line 37
    if-eq v8, v14, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    cmpg-float v8, v6, v13

    .line 41
    .line 42
    if-gtz v8, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v7, v1, v2}, Lorg/maplibre/android/annotations/Bubble;->initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    cmpl-float v8, v2, v13

    .line 49
    .line 50
    if-lez v8, :cond_2

    .line 51
    .line 52
    cmpl-float v8, v2, v6

    .line 53
    .line 54
    if-lez v8, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v7, v1, v2}, Lorg/maplibre/android/annotations/Bubble;->initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 61
    .line 62
    add-float/2addr v0, v6

    .line 63
    add-float/2addr v0, v2

    .line 64
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 65
    .line 66
    add-float/2addr v8, v2

    .line 67
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    sub-float/2addr v0, v6

    .line 75
    sub-float/2addr v0, v2

    .line 76
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 77
    .line 78
    add-float/2addr v8, v2

    .line 79
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Landroid/graphics/RectF;

    .line 83
    .line 84
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .line 85
    .line 86
    sub-float v14, v8, v6

    .line 87
    .line 88
    iget v15, v7, Landroid/graphics/RectF;->top:F

    .line 89
    .line 90
    const/high16 p1, 0x40000000    # 2.0f

    .line 91
    .line 92
    add-float v10, v15, v2

    .line 93
    .line 94
    sub-float/2addr v8, v2

    .line 95
    add-float/2addr v15, v6

    .line 96
    invoke-direct {v0, v14, v10, v8, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 100
    .line 101
    .line 102
    iget v0, v7, Landroid/graphics/RectF;->right:F

    .line 103
    .line 104
    sub-float/2addr v0, v2

    .line 105
    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 106
    .line 107
    sub-float/2addr v8, v5

    .line 108
    sub-float/2addr v8, v6

    .line 109
    sub-float/2addr v8, v2

    .line 110
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Landroid/graphics/RectF;

    .line 114
    .line 115
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .line 116
    .line 117
    sub-float v10, v8, v6

    .line 118
    .line 119
    iget v12, v7, Landroid/graphics/RectF;->bottom:F

    .line 120
    .line 121
    sub-float v14, v12, v6

    .line 122
    .line 123
    sub-float/2addr v14, v5

    .line 124
    sub-float/2addr v8, v2

    .line 125
    sub-float/2addr v12, v5

    .line 126
    sub-float/2addr v12, v2

    .line 127
    invoke-direct {v0, v10, v14, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v0, v13, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 131
    .line 132
    .line 133
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 134
    .line 135
    add-float/2addr v0, v4

    .line 136
    add-float/2addr v0, v3

    .line 137
    div-float v8, v2, p1

    .line 138
    .line 139
    sub-float/2addr v0, v8

    .line 140
    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    .line 141
    .line 142
    sub-float/2addr v10, v5

    .line 143
    sub-float/2addr v10, v2

    .line 144
    invoke-virtual {v1, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    .line 146
    .line 147
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 148
    .line 149
    add-float/2addr v0, v3

    .line 150
    div-float v4, v4, p1

    .line 151
    .line 152
    add-float/2addr v4, v0

    .line 153
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 154
    .line 155
    sub-float/2addr v0, v2

    .line 156
    sub-float/2addr v0, v2

    .line 157
    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 158
    .line 159
    .line 160
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 161
    .line 162
    add-float/2addr v0, v3

    .line 163
    add-float/2addr v0, v8

    .line 164
    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    .line 165
    .line 166
    sub-float/2addr v4, v5

    .line 167
    sub-float/2addr v4, v2

    .line 168
    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    .line 170
    .line 171
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 172
    .line 173
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    add-float/2addr v3, v0

    .line 178
    add-float/2addr v3, v2

    .line 179
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 180
    .line 181
    sub-float/2addr v0, v5

    .line 182
    sub-float/2addr v0, v2

    .line 183
    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Landroid/graphics/RectF;

    .line 187
    .line 188
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 189
    .line 190
    add-float v4, v3, v2

    .line 191
    .line 192
    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 193
    .line 194
    sub-float v10, v8, v6

    .line 195
    .line 196
    sub-float/2addr v10, v5

    .line 197
    add-float/2addr v3, v6

    .line 198
    sub-float/2addr v8, v5

    .line 199
    sub-float/2addr v8, v2

    .line 200
    invoke-direct {v0, v4, v10, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v0, v11, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 204
    .line 205
    .line 206
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 207
    .line 208
    add-float/2addr v0, v2

    .line 209
    iget v3, v7, Landroid/graphics/RectF;->top:F

    .line 210
    .line 211
    add-float/2addr v3, v6

    .line 212
    add-float/2addr v3, v2

    .line 213
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Landroid/graphics/RectF;

    .line 217
    .line 218
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 219
    .line 220
    add-float v4, v3, v2

    .line 221
    .line 222
    iget v5, v7, Landroid/graphics/RectF;->top:F

    .line 223
    .line 224
    add-float/2addr v2, v5

    .line 225
    add-float/2addr v3, v6

    .line 226
    add-float/2addr v6, v5

    .line 227
    invoke-direct {v0, v4, v2, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v0, v9, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    .line 238
    .line 239
    cmpg-float v8, v6, v13

    .line 240
    .line 241
    if-gtz v8, :cond_4

    .line 242
    .line 243
    invoke-virtual {v0, v7, v1, v2}, Lorg/maplibre/android/annotations/Bubble;->initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_4
    cmpl-float v8, v2, v13

    .line 248
    .line 249
    if-lez v8, :cond_5

    .line 250
    .line 251
    cmpl-float v8, v2, v6

    .line 252
    .line 253
    if-lez v8, :cond_5

    .line 254
    .line 255
    invoke-virtual {v0, v7, v1, v2}, Lorg/maplibre/android/annotations/Bubble;->initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_5
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 260
    .line 261
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    add-float/2addr v8, v0

    .line 266
    add-float/2addr v8, v2

    .line 267
    iget v0, v7, Landroid/graphics/RectF;->top:F

    .line 268
    .line 269
    add-float/2addr v0, v5

    .line 270
    add-float/2addr v0, v2

    .line 271
    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 272
    .line 273
    .line 274
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 275
    .line 276
    add-float/2addr v0, v3

    .line 277
    div-float v8, v2, p1

    .line 278
    .line 279
    add-float/2addr v0, v8

    .line 280
    iget v10, v7, Landroid/graphics/RectF;->top:F

    .line 281
    .line 282
    add-float/2addr v10, v5

    .line 283
    add-float/2addr v10, v2

    .line 284
    invoke-virtual {v1, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 285
    .line 286
    .line 287
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 288
    .line 289
    div-float v10, v4, p1

    .line 290
    .line 291
    add-float/2addr v10, v0

    .line 292
    add-float/2addr v10, v3

    .line 293
    iget v0, v7, Landroid/graphics/RectF;->top:F

    .line 294
    .line 295
    add-float/2addr v0, v2

    .line 296
    add-float/2addr v0, v2

    .line 297
    invoke-virtual {v1, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 298
    .line 299
    .line 300
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 301
    .line 302
    add-float/2addr v0, v4

    .line 303
    add-float/2addr v0, v3

    .line 304
    sub-float/2addr v0, v8

    .line 305
    iget v3, v7, Landroid/graphics/RectF;->top:F

    .line 306
    .line 307
    add-float/2addr v3, v5

    .line 308
    add-float/2addr v3, v2

    .line 309
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    .line 311
    .line 312
    iget v0, v7, Landroid/graphics/RectF;->right:F

    .line 313
    .line 314
    sub-float/2addr v0, v6

    .line 315
    sub-float/2addr v0, v2

    .line 316
    iget v3, v7, Landroid/graphics/RectF;->top:F

    .line 317
    .line 318
    add-float/2addr v3, v5

    .line 319
    add-float/2addr v3, v2

    .line 320
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 321
    .line 322
    .line 323
    new-instance v0, Landroid/graphics/RectF;

    .line 324
    .line 325
    iget v3, v7, Landroid/graphics/RectF;->right:F

    .line 326
    .line 327
    sub-float v4, v3, v6

    .line 328
    .line 329
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 330
    .line 331
    add-float v10, v8, v5

    .line 332
    .line 333
    add-float/2addr v10, v2

    .line 334
    sub-float/2addr v3, v2

    .line 335
    add-float/2addr v8, v6

    .line 336
    add-float/2addr v8, v5

    .line 337
    invoke-direct {v0, v4, v10, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v0, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 341
    .line 342
    .line 343
    iget v0, v7, Landroid/graphics/RectF;->right:F

    .line 344
    .line 345
    sub-float/2addr v0, v2

    .line 346
    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 347
    .line 348
    sub-float/2addr v3, v6

    .line 349
    sub-float/2addr v3, v2

    .line 350
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 351
    .line 352
    .line 353
    new-instance v0, Landroid/graphics/RectF;

    .line 354
    .line 355
    iget v3, v7, Landroid/graphics/RectF;->right:F

    .line 356
    .line 357
    sub-float v4, v3, v6

    .line 358
    .line 359
    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 360
    .line 361
    sub-float v10, v8, v6

    .line 362
    .line 363
    sub-float/2addr v3, v2

    .line 364
    sub-float/2addr v8, v2

    .line 365
    invoke-direct {v0, v4, v10, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v0, v13, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 369
    .line 370
    .line 371
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 372
    .line 373
    add-float/2addr v0, v6

    .line 374
    add-float/2addr v0, v2

    .line 375
    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 376
    .line 377
    sub-float/2addr v3, v2

    .line 378
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 379
    .line 380
    .line 381
    new-instance v0, Landroid/graphics/RectF;

    .line 382
    .line 383
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 384
    .line 385
    add-float v4, v3, v2

    .line 386
    .line 387
    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 388
    .line 389
    sub-float v10, v8, v6

    .line 390
    .line 391
    add-float/2addr v3, v6

    .line 392
    sub-float/2addr v8, v2

    .line 393
    invoke-direct {v0, v4, v10, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v0, v11, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 397
    .line 398
    .line 399
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 400
    .line 401
    add-float/2addr v0, v2

    .line 402
    iget v3, v7, Landroid/graphics/RectF;->top:F

    .line 403
    .line 404
    add-float/2addr v3, v5

    .line 405
    add-float/2addr v3, v6

    .line 406
    add-float/2addr v3, v2

    .line 407
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    .line 409
    .line 410
    new-instance v0, Landroid/graphics/RectF;

    .line 411
    .line 412
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 413
    .line 414
    add-float v4, v3, v2

    .line 415
    .line 416
    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 417
    .line 418
    add-float v8, v7, v5

    .line 419
    .line 420
    add-float/2addr v8, v2

    .line 421
    add-float/2addr v3, v6

    .line 422
    add-float/2addr v6, v7

    .line 423
    add-float/2addr v6, v5

    .line 424
    invoke-direct {v0, v4, v8, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v0, v9, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :cond_6
    const/high16 p1, 0x40000000    # 2.0f

    .line 435
    .line 436
    cmpg-float v8, v6, v13

    .line 437
    .line 438
    if-gtz v8, :cond_7

    .line 439
    .line 440
    invoke-virtual {v0, v7, v1, v2}, Lorg/maplibre/android/annotations/Bubble;->initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :cond_7
    cmpl-float v8, v2, v13

    .line 445
    .line 446
    if-lez v8, :cond_8

    .line 447
    .line 448
    cmpl-float v8, v2, v6

    .line 449
    .line 450
    if-lez v8, :cond_8

    .line 451
    .line 452
    invoke-virtual {v0, v7, v1, v2}, Lorg/maplibre/android/annotations/Bubble;->initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :cond_8
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 457
    .line 458
    add-float/2addr v0, v6

    .line 459
    add-float/2addr v0, v2

    .line 460
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 461
    .line 462
    add-float/2addr v8, v2

    .line 463
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    sub-float/2addr v0, v6

    .line 471
    sub-float/2addr v0, v4

    .line 472
    sub-float/2addr v0, v2

    .line 473
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 474
    .line 475
    add-float/2addr v8, v2

    .line 476
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 477
    .line 478
    .line 479
    new-instance v0, Landroid/graphics/RectF;

    .line 480
    .line 481
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .line 482
    .line 483
    sub-float v10, v8, v6

    .line 484
    .line 485
    sub-float/2addr v10, v4

    .line 486
    iget v14, v7, Landroid/graphics/RectF;->top:F

    .line 487
    .line 488
    add-float v15, v14, v2

    .line 489
    .line 490
    sub-float/2addr v8, v4

    .line 491
    sub-float/2addr v8, v2

    .line 492
    add-float/2addr v14, v6

    .line 493
    invoke-direct {v0, v10, v15, v8, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, v0, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 497
    .line 498
    .line 499
    iget v0, v7, Landroid/graphics/RectF;->right:F

    .line 500
    .line 501
    sub-float/2addr v0, v4

    .line 502
    sub-float/2addr v0, v2

    .line 503
    div-float v8, v2, p1

    .line 504
    .line 505
    add-float v10, v3, v8

    .line 506
    .line 507
    invoke-virtual {v1, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 508
    .line 509
    .line 510
    iget v0, v7, Landroid/graphics/RectF;->right:F

    .line 511
    .line 512
    sub-float/2addr v0, v2

    .line 513
    sub-float/2addr v0, v2

    .line 514
    div-float v10, v5, p1

    .line 515
    .line 516
    add-float/2addr v10, v3

    .line 517
    invoke-virtual {v1, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 518
    .line 519
    .line 520
    iget v0, v7, Landroid/graphics/RectF;->right:F

    .line 521
    .line 522
    sub-float/2addr v0, v4

    .line 523
    sub-float/2addr v0, v2

    .line 524
    add-float/2addr v3, v5

    .line 525
    sub-float/2addr v3, v8

    .line 526
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 527
    .line 528
    .line 529
    iget v0, v7, Landroid/graphics/RectF;->right:F

    .line 530
    .line 531
    sub-float/2addr v0, v4

    .line 532
    sub-float/2addr v0, v2

    .line 533
    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 534
    .line 535
    sub-float/2addr v3, v6

    .line 536
    sub-float/2addr v3, v2

    .line 537
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Landroid/graphics/RectF;

    .line 541
    .line 542
    iget v3, v7, Landroid/graphics/RectF;->right:F

    .line 543
    .line 544
    sub-float v5, v3, v6

    .line 545
    .line 546
    sub-float/2addr v5, v4

    .line 547
    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 548
    .line 549
    sub-float v10, v8, v6

    .line 550
    .line 551
    sub-float/2addr v3, v4

    .line 552
    sub-float/2addr v3, v2

    .line 553
    sub-float/2addr v8, v2

    .line 554
    invoke-direct {v0, v5, v10, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v0, v13, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 558
    .line 559
    .line 560
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 561
    .line 562
    add-float/2addr v0, v4

    .line 563
    add-float/2addr v0, v2

    .line 564
    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    .line 565
    .line 566
    sub-float/2addr v3, v2

    .line 567
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 568
    .line 569
    .line 570
    new-instance v0, Landroid/graphics/RectF;

    .line 571
    .line 572
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 573
    .line 574
    add-float v4, v3, v2

    .line 575
    .line 576
    iget v5, v7, Landroid/graphics/RectF;->bottom:F

    .line 577
    .line 578
    sub-float v8, v5, v6

    .line 579
    .line 580
    add-float/2addr v3, v6

    .line 581
    sub-float/2addr v5, v2

    .line 582
    invoke-direct {v0, v4, v8, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v1, v0, v11, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 586
    .line 587
    .line 588
    new-instance v0, Landroid/graphics/RectF;

    .line 589
    .line 590
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 591
    .line 592
    add-float v4, v3, v2

    .line 593
    .line 594
    iget v5, v7, Landroid/graphics/RectF;->top:F

    .line 595
    .line 596
    add-float/2addr v2, v5

    .line 597
    add-float/2addr v3, v6

    .line 598
    add-float/2addr v6, v5

    .line 599
    invoke-direct {v0, v4, v2, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1, v0, v9, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 606
    .line 607
    .line 608
    return-void

    .line 609
    :cond_9
    const/high16 p1, 0x40000000    # 2.0f

    .line 610
    .line 611
    cmpg-float v8, v6, v13

    .line 612
    .line 613
    if-gtz v8, :cond_a

    .line 614
    .line 615
    invoke-virtual {v0, v7, v1, v2}, Lorg/maplibre/android/annotations/Bubble;->initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    .line 616
    .line 617
    .line 618
    return-void

    .line 619
    :cond_a
    cmpl-float v8, v2, v13

    .line 620
    .line 621
    if-lez v8, :cond_b

    .line 622
    .line 623
    cmpl-float v8, v2, v6

    .line 624
    .line 625
    if-lez v8, :cond_b

    .line 626
    .line 627
    invoke-virtual {v0, v7, v1, v2}, Lorg/maplibre/android/annotations/Bubble;->initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    .line 628
    .line 629
    .line 630
    return-void

    .line 631
    :cond_b
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 632
    .line 633
    add-float/2addr v0, v4

    .line 634
    add-float/2addr v0, v6

    .line 635
    add-float/2addr v0, v2

    .line 636
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 637
    .line 638
    add-float/2addr v8, v2

    .line 639
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    sub-float/2addr v0, v6

    .line 647
    sub-float/2addr v0, v2

    .line 648
    iget v8, v7, Landroid/graphics/RectF;->top:F

    .line 649
    .line 650
    add-float/2addr v8, v2

    .line 651
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 652
    .line 653
    .line 654
    new-instance v0, Landroid/graphics/RectF;

    .line 655
    .line 656
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .line 657
    .line 658
    sub-float v10, v8, v6

    .line 659
    .line 660
    iget v14, v7, Landroid/graphics/RectF;->top:F

    .line 661
    .line 662
    add-float v15, v14, v2

    .line 663
    .line 664
    sub-float/2addr v8, v2

    .line 665
    add-float/2addr v14, v6

    .line 666
    invoke-direct {v0, v10, v15, v8, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1, v0, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 670
    .line 671
    .line 672
    iget v0, v7, Landroid/graphics/RectF;->right:F

    .line 673
    .line 674
    sub-float/2addr v0, v2

    .line 675
    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 676
    .line 677
    sub-float/2addr v8, v6

    .line 678
    sub-float/2addr v8, v2

    .line 679
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 680
    .line 681
    .line 682
    new-instance v0, Landroid/graphics/RectF;

    .line 683
    .line 684
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .line 685
    .line 686
    sub-float v10, v8, v6

    .line 687
    .line 688
    iget v12, v7, Landroid/graphics/RectF;->bottom:F

    .line 689
    .line 690
    sub-float v14, v12, v6

    .line 691
    .line 692
    sub-float/2addr v8, v2

    .line 693
    sub-float/2addr v12, v2

    .line 694
    invoke-direct {v0, v10, v14, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1, v0, v13, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 698
    .line 699
    .line 700
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 701
    .line 702
    add-float/2addr v0, v4

    .line 703
    add-float/2addr v0, v6

    .line 704
    add-float/2addr v0, v2

    .line 705
    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 706
    .line 707
    sub-float/2addr v8, v2

    .line 708
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 709
    .line 710
    .line 711
    new-instance v0, Landroid/graphics/RectF;

    .line 712
    .line 713
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .line 714
    .line 715
    add-float v10, v8, v4

    .line 716
    .line 717
    add-float/2addr v10, v2

    .line 718
    iget v12, v7, Landroid/graphics/RectF;->bottom:F

    .line 719
    .line 720
    sub-float v13, v12, v6

    .line 721
    .line 722
    add-float/2addr v8, v6

    .line 723
    add-float/2addr v8, v4

    .line 724
    sub-float/2addr v12, v2

    .line 725
    invoke-direct {v0, v10, v13, v8, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v1, v0, v11, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 729
    .line 730
    .line 731
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 732
    .line 733
    add-float/2addr v0, v4

    .line 734
    add-float/2addr v0, v2

    .line 735
    add-float v8, v5, v3

    .line 736
    .line 737
    div-float v10, v2, p1

    .line 738
    .line 739
    sub-float/2addr v8, v10

    .line 740
    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 741
    .line 742
    .line 743
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 744
    .line 745
    add-float/2addr v0, v2

    .line 746
    add-float/2addr v0, v2

    .line 747
    div-float v5, v5, p1

    .line 748
    .line 749
    add-float/2addr v5, v3

    .line 750
    invoke-virtual {v1, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 751
    .line 752
    .line 753
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 754
    .line 755
    add-float/2addr v0, v4

    .line 756
    add-float/2addr v0, v2

    .line 757
    add-float/2addr v3, v10

    .line 758
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 759
    .line 760
    .line 761
    iget v0, v7, Landroid/graphics/RectF;->left:F

    .line 762
    .line 763
    add-float/2addr v0, v4

    .line 764
    add-float/2addr v0, v2

    .line 765
    iget v3, v7, Landroid/graphics/RectF;->top:F

    .line 766
    .line 767
    add-float/2addr v3, v6

    .line 768
    add-float/2addr v3, v2

    .line 769
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 770
    .line 771
    .line 772
    new-instance v0, Landroid/graphics/RectF;

    .line 773
    .line 774
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 775
    .line 776
    add-float v5, v3, v4

    .line 777
    .line 778
    add-float/2addr v5, v2

    .line 779
    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 780
    .line 781
    add-float/2addr v2, v7

    .line 782
    add-float/2addr v3, v6

    .line 783
    add-float/2addr v3, v4

    .line 784
    add-float/2addr v6, v7

    .line 785
    invoke-direct {v0, v5, v2, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v1, v0, v9, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 792
    .line 793
    .line 794
    return-void
.end method

.method public final initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    add-float/2addr v0, p3

    .line 4
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 5
    .line 6
    add-float/2addr v1, p3

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    .line 15
    .line 16
    sub-float/2addr v0, v1

    .line 17
    sub-float/2addr v0, p3

    .line 18
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 19
    .line 20
    add-float/2addr v2, p3

    .line 21
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    .line 23
    .line 24
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 25
    .line 26
    sub-float/2addr v0, v1

    .line 27
    sub-float/2addr v0, p3

    .line 28
    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    .line 29
    .line 30
    const/high16 v3, 0x40000000    # 2.0f

    .line 31
    .line 32
    div-float v4, p3, v3

    .line 33
    .line 34
    add-float v5, v2, v4

    .line 35
    .line 36
    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 37
    .line 38
    .line 39
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 40
    .line 41
    sub-float/2addr v0, p3

    .line 42
    sub-float/2addr v0, p3

    .line 43
    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    .line 44
    .line 45
    div-float v3, p0, v3

    .line 46
    .line 47
    add-float/2addr v3, v2

    .line 48
    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    .line 50
    .line 51
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    sub-float/2addr v0, v1

    .line 54
    sub-float/2addr v0, p3

    .line 55
    add-float/2addr v2, p0

    .line 56
    sub-float/2addr v2, v4

    .line 57
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    .line 59
    .line 60
    iget p0, p1, Landroid/graphics/RectF;->right:F

    .line 61
    .line 62
    sub-float/2addr p0, v1

    .line 63
    sub-float/2addr p0, p3

    .line 64
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 65
    .line 66
    sub-float/2addr v0, p3

    .line 67
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 68
    .line 69
    .line 70
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 71
    .line 72
    add-float/2addr p0, p3

    .line 73
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 74
    .line 75
    sub-float/2addr v0, p3

    .line 76
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    .line 78
    .line 79
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 80
    .line 81
    add-float/2addr p0, p3

    .line 82
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 83
    .line 84
    add-float/2addr p1, p3

    .line 85
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 2
    .line 3
    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    .line 4
    .line 5
    add-float/2addr v0, v1

    .line 6
    add-float/2addr v0, p3

    .line 7
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 8
    .line 9
    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    .line 10
    .line 11
    add-float/2addr v2, v3

    .line 12
    add-float/2addr v2, p3

    .line 13
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 17
    .line 18
    add-float/2addr v0, v1

    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float v4, p3, v2

    .line 22
    .line 23
    add-float/2addr v0, v4

    .line 24
    iget v5, p1, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    add-float/2addr v5, v3

    .line 27
    add-float/2addr v5, p3

    .line 28
    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    .line 30
    .line 31
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 32
    .line 33
    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    .line 34
    .line 35
    div-float v2, p0, v2

    .line 36
    .line 37
    add-float/2addr v2, v0

    .line 38
    add-float/2addr v2, v1

    .line 39
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    add-float/2addr v0, p3

    .line 42
    add-float/2addr v0, p3

    .line 43
    invoke-virtual {p2, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    .line 45
    .line 46
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 47
    .line 48
    add-float/2addr v0, p0

    .line 49
    add-float/2addr v0, v1

    .line 50
    sub-float/2addr v0, v4

    .line 51
    iget p0, p1, Landroid/graphics/RectF;->top:F

    .line 52
    .line 53
    add-float/2addr p0, v3

    .line 54
    add-float/2addr p0, p3

    .line 55
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    .line 57
    .line 58
    iget p0, p1, Landroid/graphics/RectF;->right:F

    .line 59
    .line 60
    sub-float/2addr p0, p3

    .line 61
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 62
    .line 63
    add-float/2addr v0, v3

    .line 64
    add-float/2addr v0, p3

    .line 65
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    .line 67
    .line 68
    iget p0, p1, Landroid/graphics/RectF;->right:F

    .line 69
    .line 70
    sub-float/2addr p0, p3

    .line 71
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 72
    .line 73
    sub-float/2addr v0, p3

    .line 74
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    .line 76
    .line 77
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 78
    .line 79
    add-float/2addr p0, p3

    .line 80
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 81
    .line 82
    sub-float/2addr v0, p3

    .line 83
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    .line 85
    .line 86
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 87
    .line 88
    add-float/2addr p0, p3

    .line 89
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 90
    .line 91
    add-float/2addr v0, v3

    .line 92
    add-float/2addr v0, p3

    .line 93
    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    .line 95
    .line 96
    iget p0, p1, Landroid/graphics/RectF;->left:F

    .line 97
    .line 98
    add-float/2addr p0, v1

    .line 99
    add-float/2addr p0, p3

    .line 100
    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 101
    .line 102
    add-float/2addr p1, v3

    .line 103
    add-float/2addr p1, p3

    .line 104
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
.end method
