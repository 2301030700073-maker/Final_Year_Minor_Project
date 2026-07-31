.class public final Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public callbackItemTouch:Lcom/fsck/k9/ui/settings/SettingsListFragment;

.field public from:I

.field public isDragEnabled:Z

.field public to:I


# virtual methods
.method public final clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->callbackItemTouch:Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast p0, Lcom/fsck/k9/view/DraggableFrameLayout;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/DraggableFrameLayout;->setDragged(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final getDragDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const v1, 0x7f0901de

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v0

    .line 21
    :goto_0
    instance-of v1, p1, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    check-cast p1, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    :goto_1
    if-nez p1, :cond_3

    .line 30
    .line 31
    :cond_2
    move-object p1, v0

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, -0x1

    .line 42
    if-eq p2, v2, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    move-object v1, v0

    .line 46
    :goto_2
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_3
    instance-of p2, p1, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 57
    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 62
    .line 63
    :cond_5
    if-eqz v0, :cond_6

    .line 64
    .line 65
    iget-boolean p1, v0, Lcom/fsck/k9/ui/settings/AccountItem;->isDraggable:Z

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    if-ne p1, p2, :cond_6

    .line 69
    .line 70
    iget p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    .line 71
    .line 72
    return p0

    .line 73
    :cond_6
    const/4 p0, 0x0

    .line 74
    return p0
.end method

.method public final isLongPressDragEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->isDragEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const v2, 0x7f0901de

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v1

    .line 21
    :goto_0
    instance-of v2, v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    check-cast v0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v0, v1

    .line 29
    :goto_1
    const/4 v2, -0x1

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    :cond_2
    move-object v0, v1

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eq v3, v2, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    move-object v4, v1

    .line 46
    :goto_2
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v0, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_3
    instance-of v3, v0, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 57
    .line 58
    if-eqz v3, :cond_5

    .line 59
    .line 60
    check-cast v0, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_5
    move-object v0, v1

    .line 64
    :goto_4
    const/4 v3, 0x1

    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    iget-boolean v0, v0, Lcom/fsck/k9/ui/settings/AccountItem;->isDraggable:Z

    .line 68
    .line 69
    if-ne v0, v3, :cond_6

    .line 70
    .line 71
    iget v0, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->from:I

    .line 72
    .line 73
    if-ne v0, v2, :cond_6

    .line 74
    .line 75
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->from:I

    .line 80
    .line 81
    :cond_6
    iget-object p0, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->callbackItemTouch:Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    if-nez p0, :cond_9

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    instance-of p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 91
    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    check-cast p0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    move-object v1, p0

    .line 103
    check-cast v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 104
    .line 105
    :cond_7
    if-eqz v1, :cond_8

    .line 106
    .line 107
    iget-object p0, v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 108
    .line 109
    if-eqz p0, :cond_f

    .line 110
    .line 111
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {v1, p0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->move(II)V

    .line 120
    .line 121
    .line 122
    return v3

    .line 123
    :cond_8
    const-string p0, "SimpleDragCallback without an callback is only allowed when using the ItemAdapter or the FastItemAdapter"

    .line 124
    .line 125
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return v0

    .line 129
    :cond_9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    iget-object p3, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 138
    .line 139
    const-string v4, "itemAdapter"

    .line 140
    .line 141
    if-eqz p3, :cond_13

    .line 142
    .line 143
    iget-object p3, p3, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 144
    .line 145
    iget-object p3, p3, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast p3, Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    move v5, v0

    .line 154
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_b

    .line 159
    .line 160
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 165
    .line 166
    instance-of v6, v6, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 167
    .line 168
    if-eqz v6, :cond_a

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_b
    move v5, v2

    .line 175
    :goto_6
    iget-object p3, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 176
    .line 177
    if-eqz p3, :cond_12

    .line 178
    .line 179
    iget-object p3, p3, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 180
    .line 181
    iget-object p3, p3, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p3, Ljava/util/List;

    .line 184
    .line 185
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-interface {p3, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    :cond_c
    invoke-interface {p3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_d

    .line 198
    .line 199
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 204
    .line 205
    instance-of v6, v6, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 206
    .line 207
    if-eqz v6, :cond_c

    .line 208
    .line 209
    invoke-interface {p3}, Ljava/util/ListIterator;->nextIndex()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    :cond_d
    if-gt v5, p2, :cond_11

    .line 214
    .line 215
    if-gt p2, v2, :cond_11

    .line 216
    .line 217
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 218
    .line 219
    if-eqz p0, :cond_10

    .line 220
    .line 221
    if-ge p1, p2, :cond_e

    .line 222
    .line 223
    add-int/2addr p1, v3

    .line 224
    if-gt p1, p2, :cond_f

    .line 225
    .line 226
    :goto_7
    add-int/lit8 p3, p1, -0x1

    .line 227
    .line 228
    invoke-virtual {p0, p1, p3}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->move(II)V

    .line 229
    .line 230
    .line 231
    if-eq p1, p2, :cond_f

    .line 232
    .line 233
    add-int/lit8 p1, p1, 0x1

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_e
    sub-int/2addr p1, v3

    .line 237
    if-gt p2, p1, :cond_f

    .line 238
    .line 239
    :goto_8
    add-int/lit8 p3, p1, 0x1

    .line 240
    .line 241
    invoke-virtual {p0, p1, p3}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->move(II)V

    .line 242
    .line 243
    .line 244
    if-eq p1, p2, :cond_f

    .line 245
    .line 246
    add-int/lit8 p1, p1, -0x1

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_f
    return v3

    .line 250
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v1

    .line 254
    :cond_11
    return v0

    .line 255
    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v1

    .line 259
    :cond_13
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v1
.end method

.method public final onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
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
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 8
    .line 9
    .line 10
    iput p5, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->to:I

    .line 11
    .line 12
    return-void
.end method

.method public final onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->callbackItemTouch:Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v1, p2, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iput p2, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->from:I

    .line 13
    .line 14
    if-eqz v0, :cond_9

    .line 15
    .line 16
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast p0, Lcom/fsck/k9/view/DraggableFrameLayout;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/DraggableFrameLayout;->setDragged(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    if-nez p2, :cond_9

    .line 29
    .line 30
    iget p1, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->from:I

    .line 31
    .line 32
    const/4 p2, -0x1

    .line 33
    if-eq p1, p2, :cond_8

    .line 34
    .line 35
    iget v2, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->to:I

    .line 36
    .line 37
    if-eq v2, p2, :cond_8

    .line 38
    .line 39
    if-eq p1, p2, :cond_1

    .line 40
    .line 41
    if-ne v2, p2, :cond_1

    .line 42
    .line 43
    iput p1, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->to:I

    .line 44
    .line 45
    :cond_1
    if-eqz v0, :cond_8

    .line 46
    .line 47
    iget v2, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->to:I

    .line 48
    .line 49
    if-ne p1, v2, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object p1, v0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    const-string v4, "itemAdapter"

    .line 56
    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    iget-object p1, p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    check-cast p1, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/AccountItem;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 76
    .line 77
    iget-object v5, v0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    iget-object v4, v5, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 82
    .line 83
    iget-object v4, v4, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v4, Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const/4 v5, 0x0

    .line 92
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_4

    .line 97
    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 103
    .line 104
    instance-of v6, v6, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 105
    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    move v5, p2

    .line 113
    :goto_1
    sub-int/2addr v2, v5

    .line 114
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 115
    .line 116
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/fsck/k9/ui/settings/SettingsViewModel;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    iget-object v5, v0, Lcom/fsck/k9/ui/settings/SettingsViewModel;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 130
    .line 131
    new-instance v6, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;

    .line 132
    .line 133
    invoke-direct {v6, v0, p1, v2, v3}, Lcom/fsck/k9/ui/settings/SettingsViewModel$moveAccount$1;-><init>(Lcom/fsck/k9/ui/settings/SettingsViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;ILkotlin/coroutines/Continuation;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v5, v3, v6, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v3

    .line 144
    :cond_6
    const-string p0, "A normal ModelAdapter does not allow null items."

    .line 145
    .line 146
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v3

    .line 154
    :cond_8
    :goto_2
    iput p2, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->to:I

    .line 155
    .line 156
    iput p2, p0, Lcom/mikepenz/fastadapter/drag/SimpleDragCallback;->from:I

    .line 157
    .line 158
    :cond_9
    return-void
.end method

.method public final onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method
