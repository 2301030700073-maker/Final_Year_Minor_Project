.class public abstract Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public itemSpacing:I

.field public lineSpacing:I

.field public rowCount:I

.field public singleLine:Z


# virtual methods
.method public getItemSpacing()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 2
    .line 3
    return p0
.end method

.method public getLineSpacing()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 2
    .line 3
    return p0
.end method

.method public getRowCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iput v2, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v3, v1, :cond_1

    .line 21
    .line 22
    move v3, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v2

    .line 25
    :goto_0
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    :goto_1
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    move v8, v2

    .line 52
    move v9, v4

    .line 53
    move v7, v6

    .line 54
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-ge v8, v10, :cond_8

    .line 59
    .line 60
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    const/16 v12, 0x8

    .line 69
    .line 70
    const v13, 0x7f09059e

    .line 71
    .line 72
    .line 73
    if-ne v11, v12, :cond_4

    .line 74
    .line 75
    const/4 v11, -0x1

    .line 76
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-virtual {v10, v13, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move/from16 p1, v1

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    instance-of v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    .line 92
    if-eqz v12, :cond_5

    .line 93
    .line 94
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 95
    .line 96
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v11, v2

    .line 106
    move v12, v11

    .line 107
    :goto_4
    add-int v14, v9, v12

    .line 108
    .line 109
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 110
    .line 111
    .line 112
    move-result v15

    .line 113
    add-int/2addr v15, v14

    .line 114
    sub-int v14, p4, p2

    .line 115
    .line 116
    move/from16 p1, v1

    .line 117
    .line 118
    sub-int v1, v14, v5

    .line 119
    .line 120
    iget-boolean v2, v0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 121
    .line 122
    if-nez v2, :cond_6

    .line 123
    .line 124
    if-le v15, v1, :cond_6

    .line 125
    .line 126
    add-int v1, v4, v12

    .line 127
    .line 128
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    add-int v15, v2, v1

    .line 133
    .line 134
    iget v1, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 135
    .line 136
    add-int v7, v6, v1

    .line 137
    .line 138
    iget v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 139
    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    iput v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 143
    .line 144
    move v9, v4

    .line 145
    :cond_6
    iget v1, v0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 146
    .line 147
    add-int/lit8 v1, v1, -0x1

    .line 148
    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v10, v13, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/2addr v1, v7

    .line 161
    if-eqz v3, :cond_7

    .line 162
    .line 163
    sub-int v2, v14, v15

    .line 164
    .line 165
    sub-int/2addr v14, v9

    .line 166
    sub-int/2addr v14, v12

    .line 167
    invoke-virtual {v10, v2, v7, v14, v1}, Landroid/view/View;->layout(IIII)V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_7
    add-int v2, v9, v12

    .line 172
    .line 173
    invoke-virtual {v10, v2, v7, v15, v1}, Landroid/view/View;->layout(IIII)V

    .line 174
    .line 175
    .line 176
    :goto_5
    add-int/2addr v12, v11

    .line 177
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    add-int/2addr v2, v12

    .line 182
    iget v6, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 183
    .line 184
    add-int/2addr v2, v6

    .line 185
    add-int/2addr v9, v2

    .line 186
    move v6, v1

    .line 187
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 188
    .line 189
    move/from16 v1, p1

    .line 190
    .line 191
    const/4 v2, 0x0

    .line 192
    goto/16 :goto_3

    .line 193
    .line 194
    :cond_8
    return-void
.end method

.method public final onMeasure(II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/high16 v5, 0x40000000    # 2.0f

    .line 20
    .line 21
    const/high16 v6, -0x80000000

    .line 22
    .line 23
    if-eq v2, v6, :cond_1

    .line 24
    .line 25
    if-ne v2, v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const v7, 0x7fffffff

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move v7, v1

    .line 33
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    sub-int/2addr v7, v10

    .line 46
    move v11, v9

    .line 47
    const/4 v12, 0x0

    .line 48
    const/4 v13, 0x0

    .line 49
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v14

    .line 53
    if-ge v12, v14, :cond_7

    .line 54
    .line 55
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    const/16 v10, 0x8

    .line 64
    .line 65
    if-ne v15, v10, :cond_2

    .line 66
    .line 67
    move/from16 v10, p1

    .line 68
    .line 69
    move/from16 v15, p2

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_2
    move/from16 v10, p1

    .line 73
    .line 74
    move/from16 v15, p2

    .line 75
    .line 76
    invoke-virtual {v0, v14, v10, v15}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    .line 89
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 90
    .line 91
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const/4 v5, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    :goto_3
    add-int v16, v8, v6

    .line 97
    .line 98
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 99
    .line 100
    .line 101
    move-result v17

    .line 102
    move/from16 v18, v5

    .line 103
    .line 104
    add-int v5, v17, v16

    .line 105
    .line 106
    if-le v5, v7, :cond_4

    .line 107
    .line 108
    move-object v5, v0

    .line 109
    check-cast v5, Lcom/google/android/material/chip/ChipGroup;

    .line 110
    .line 111
    iget-boolean v5, v5, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 112
    .line 113
    if-nez v5, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    iget v5, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 120
    .line 121
    add-int v11, v9, v5

    .line 122
    .line 123
    :cond_4
    add-int v5, v8, v6

    .line 124
    .line 125
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    add-int/2addr v9, v5

    .line 130
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    add-int/2addr v5, v11

    .line 135
    if-le v9, v13, :cond_5

    .line 136
    .line 137
    move v13, v9

    .line 138
    :cond_5
    add-int v6, v6, v18

    .line 139
    .line 140
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    add-int/2addr v9, v6

    .line 145
    iget v6, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 146
    .line 147
    add-int/2addr v9, v6

    .line 148
    add-int/2addr v9, v8

    .line 149
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    add-int/lit8 v6, v6, -0x1

    .line 154
    .line 155
    if-ne v12, v6, :cond_6

    .line 156
    .line 157
    add-int v13, v13, v18

    .line 158
    .line 159
    :cond_6
    move v8, v9

    .line 160
    move v9, v5

    .line 161
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 162
    .line 163
    const/high16 v5, 0x40000000    # 2.0f

    .line 164
    .line 165
    const/high16 v6, -0x80000000

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    add-int/2addr v5, v13

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    add-int/2addr v6, v9

    .line 178
    const/high16 v7, -0x80000000

    .line 179
    .line 180
    if-eq v2, v7, :cond_8

    .line 181
    .line 182
    const/high16 v8, 0x40000000    # 2.0f

    .line 183
    .line 184
    if-eq v2, v8, :cond_9

    .line 185
    .line 186
    move v1, v5

    .line 187
    goto :goto_5

    .line 188
    :cond_8
    const/high16 v8, 0x40000000    # 2.0f

    .line 189
    .line 190
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    :cond_9
    :goto_5
    if-eq v4, v7, :cond_a

    .line 195
    .line 196
    if-eq v4, v8, :cond_b

    .line 197
    .line 198
    move v3, v6

    .line 199
    goto :goto_6

    .line 200
    :cond_a
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    :cond_b
    :goto_6
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 2
    .line 3
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 2
    .line 3
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 2
    .line 3
    return-void
.end method
