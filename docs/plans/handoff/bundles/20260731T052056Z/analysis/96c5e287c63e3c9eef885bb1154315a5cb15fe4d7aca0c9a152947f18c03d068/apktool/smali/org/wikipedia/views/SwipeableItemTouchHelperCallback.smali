.class public final Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final itemBackgroundPaint:Landroid/graphics/Paint;

.field public final refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final swipeBackgroundPaint:Landroid/graphics/Paint;

.field public final swipeIconAndTextFromTag:Z

.field public swipeIconBitmap:Landroid/graphics/Bitmap;

.field public final swipeIconPaint:Landroid/graphics/Paint;

.field public final swipeIconTint:Ljava/lang/Integer;

.field public swipeableEnabled:Z

.field public final valueTextPaint:Landroid/graphics/Paint;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 7

    const v3, 0x7f08014d

    const/4 v5, 0x0

    const v2, 0x7f060410

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 138
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;-><init>(Landroid/content/Context;IILjava/lang/Integer;ZLandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;ZLandroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconTint:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-boolean p5, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconAndTextFromTag:Z

    .line 7
    .line 8
    iput-object p6, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 9
    .line 10
    new-instance p5, Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p5, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeBackgroundPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    new-instance p6, Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-direct {p6}, Landroid/graphics/Paint;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p6, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    new-instance p6, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {p6}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p6, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->itemBackgroundPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .line 35
    .line 36
    if-eqz p4, :cond_0

    .line 37
    .line 38
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const v1, 0x106000b

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    .line 52
    .line 53
    const/high16 v1, 0x41400000    # 12.0f

    .line 54
    .line 55
    invoke-static {v1}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "sans-serif-medium"

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->valueTextPaint:Landroid/graphics/Paint;

    .line 78
    .line 79
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 80
    .line 81
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    .line 93
    .line 94
    const p2, 0x1010054

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p3}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    if-eqz p4, :cond_1

    .line 119
    .line 120
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 129
    .line 130
    .line 131
    :cond_1
    invoke-static {p2}, Lkotlin/UnsignedKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconBitmap:Landroid/graphics/Bitmap;

    .line 136
    .line 137
    return-void
.end method


# virtual methods
.method public final getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of p0, p2, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    check-cast p2, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;

    .line 13
    .line 14
    invoke-interface {p2}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;->isSwipeable()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/16 p0, 0x30

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p0, p1

    .line 24
    :goto_0
    invoke-static {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final isItemViewSwipeEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeableEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isLongPressDragEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    move/from16 v2, p6

    .line 13
    .line 14
    if-ne v2, v1, :cond_5

    .line 15
    .line 16
    iget-boolean v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconAndTextFromTag:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const v1, 0x7f120933

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const v2, 0x7f120934

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v6, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    check-cast v1, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconTint:Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz v4, :cond_0

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-static {v1}, Lkotlin/UnsignedKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconBitmap:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const-string v2, ""

    .line 103
    .line 104
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    int-to-float v9, v1

    .line 109
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    int-to-float v10, v1

    .line 114
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    add-int/2addr v3, v1

    .line 123
    int-to-float v11, v3

    .line 124
    iget-object v12, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeBackgroundPaint:Landroid/graphics/Paint;

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    move-object v7, p1

    .line 128
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    div-int/lit8 v3, v3, 0x2

    .line 140
    .line 141
    iget-object v4, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconBitmap:Landroid/graphics/Bitmap;

    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v0, :cond_2

    .line 148
    .line 149
    int-to-float v4, v4

    .line 150
    const v5, 0x3fb33333    # 1.4f

    .line 151
    .line 152
    .line 153
    div-float/2addr v4, v5

    .line 154
    float-to-int v4, v4

    .line 155
    goto :goto_1

    .line 156
    :cond_2
    div-int/lit8 v4, v4, 0x2

    .line 157
    .line 158
    :goto_1
    sub-int/2addr v3, v4

    .line 159
    add-int/2addr v3, v1

    .line 160
    int-to-float v1, v3

    .line 161
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    div-int/lit8 v4, v4, 0x2

    .line 170
    .line 171
    iget-object v5, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconBitmap:Landroid/graphics/Bitmap;

    .line 172
    .line 173
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    add-int/2addr v5, v4

    .line 178
    add-int/2addr v5, v3

    .line 179
    int-to-float v3, v5

    .line 180
    const/high16 v4, 0x41800000    # 16.0f

    .line 181
    .line 182
    sub-float/2addr v3, v4

    .line 183
    const/high16 v4, 0x40000000    # 2.0f

    .line 184
    .line 185
    add-float/2addr v3, v4

    .line 186
    const/4 v4, 0x0

    .line 187
    cmpl-float v4, p4, v4

    .line 188
    .line 189
    iget-object v5, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconBitmap:Landroid/graphics/Bitmap;

    .line 190
    .line 191
    iget-object v8, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->valueTextPaint:Landroid/graphics/Paint;

    .line 192
    .line 193
    const/high16 v9, 0x42000000    # 32.0f

    .line 194
    .line 195
    iget-object v10, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconPaint:Landroid/graphics/Paint;

    .line 196
    .line 197
    const v11, 0x41b33333    # 22.4f

    .line 198
    .line 199
    .line 200
    if-ltz v4, :cond_3

    .line 201
    .line 202
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 203
    .line 204
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 223
    .line 224
    mul-float/2addr v4, v11

    .line 225
    invoke-virtual {p1, v5, v4, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 226
    .line 227
    .line 228
    if-eqz v0, :cond_4

    .line 229
    .line 230
    iget-object v0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconBitmap:Landroid/graphics/Bitmap;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    int-to-float v0, v0

    .line 237
    add-float/2addr v0, v9

    .line 238
    invoke-virtual {p1, v2, v0, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    iget-object v12, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconBitmap:Landroid/graphics/Bitmap;

    .line 247
    .line 248
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    sub-int/2addr v4, v12

    .line 253
    int-to-float v4, v4

    .line 254
    sget-object v12, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 255
    .line 256
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    .line 275
    .line 276
    mul-float/2addr v12, v11

    .line 277
    sub-float/2addr v4, v12

    .line 278
    invoke-virtual {p1, v5, v4, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 279
    .line 280
    .line 281
    if-eqz v0, :cond_4

    .line 282
    .line 283
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    iget-object v1, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->swipeIconBitmap:Landroid/graphics/Bitmap;

    .line 288
    .line 289
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    sub-int/2addr v0, v1

    .line 294
    int-to-float v0, v0

    .line 295
    sub-float/2addr v0, v9

    .line 296
    invoke-virtual {p1, v2, v0, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    .line 298
    .line 299
    :cond_4
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    int-to-float v2, v0

    .line 304
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    int-to-float v0, v0

    .line 309
    add-float v3, v0, p4

    .line 310
    .line 311
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    add-int/2addr v1, v0

    .line 320
    int-to-float v4, v1

    .line 321
    iget-object v5, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->itemBackgroundPaint:Landroid/graphics/Paint;

    .line 322
    .line 323
    move-object v0, p1

    .line 324
    move/from16 v1, p4

    .line 325
    .line 326
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_5
    move/from16 v1, p4

    .line 334
    .line 335
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 336
    .line 337
    .line 338
    return-void
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 8
    .line 9
    iget p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final onSelectedChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of p0, p1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;

    .line 9
    .line 10
    invoke-interface {p1}, Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;->onSwipe()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
