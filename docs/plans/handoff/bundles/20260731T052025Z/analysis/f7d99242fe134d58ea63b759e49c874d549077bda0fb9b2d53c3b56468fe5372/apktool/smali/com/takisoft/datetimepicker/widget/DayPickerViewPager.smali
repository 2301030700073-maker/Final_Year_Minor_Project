.class public Lcom/takisoft/datetimepicker/widget/DayPickerViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mMatchParentChildren:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p2

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    const-string v5, "populate"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_3

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :catch_2
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/high16 v6, 0x40000000    # 2.0f

    .line 50
    .line 51
    if-ne v5, v6, :cond_1

    .line 52
    .line 53
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eq v5, v6, :cond_0

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_0
    const/4 v5, 0x0

    .line 61
    goto :goto_5

    .line 62
    :cond_1
    :goto_4
    move v5, v4

    .line 63
    :goto_5
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    :goto_6
    iget-object v12, v1, Lcom/takisoft/datetimepicker/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 68
    .line 69
    const/4 v13, -0x1

    .line 70
    if-ge v8, v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    const/16 v7, 0x8

    .line 81
    .line 82
    if-eq v15, v7, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1, v14, v2, v3}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 92
    .line 93
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    invoke-static {v9, v15}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    .line 110
    .line 111
    .line 112
    move-result v15

    .line 113
    invoke-static {v11, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    if-eqz v5, :cond_3

    .line 118
    .line 119
    iget v15, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    .line 121
    if-eq v15, v13, :cond_2

    .line 122
    .line 123
    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    .line 125
    if-ne v7, v13, :cond_3

    .line 126
    .line 127
    :cond_2
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    add-int/2addr v5, v0

    .line 142
    add-int/2addr v5, v9

    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    add-int/2addr v7, v0

    .line 152
    add-int/2addr v7, v10

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    invoke-virtual {v1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    if-eqz v7, :cond_5

    .line 174
    .line 175
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    :cond_5
    invoke-static {v5, v2, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    shl-int/lit8 v7, v11, 0x10

    .line 196
    .line 197
    invoke-static {v0, v3, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-virtual {v1, v5, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-le v0, v4, :cond_8

    .line 209
    .line 210
    const/4 v7, 0x0

    .line 211
    :goto_7
    if-ge v7, v0, :cond_8

    .line 212
    .line 213
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Landroid/view/View;

    .line 218
    .line 219
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    check-cast v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 224
    .line 225
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    .line 227
    if-ne v8, v13, :cond_6

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    sub-int/2addr v8, v9

    .line 238
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    sub-int/2addr v8, v9

    .line 243
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    goto :goto_8

    .line 248
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    add-int/2addr v9, v8

    .line 257
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 258
    .line 259
    invoke-static {v2, v9, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    :goto_8
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    .line 265
    if-ne v9, v13, :cond_7

    .line 266
    .line 267
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    sub-int/2addr v5, v9

    .line 276
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    sub-int/2addr v5, v9

    .line 281
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    goto :goto_9

    .line 286
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    add-int/2addr v10, v9

    .line 295
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 296
    .line 297
    invoke-static {v3, v10, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    :goto_9
    invoke-virtual {v4, v8, v5}, Landroid/view/View;->measure(II)V

    .line 302
    .line 303
    .line 304
    add-int/lit8 v7, v7, 0x1

    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 308
    .line 309
    .line 310
    return-void
.end method
