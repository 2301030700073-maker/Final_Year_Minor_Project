.class public final Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final cutoffIndexState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

.field public dragDidMove:Z

.field public final draggedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final draggedOffsetY$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final onStateChanged:Lkotlin/jvm/functions/Function2;

.field public final renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;


# direct methods
.method public constructor <init>(Lkotlinx/collections/immutable/ImmutableList;ILkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->onStateChanged:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    new-instance p3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 13
    .line 14
    invoke-direct {p3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 18
    .line 19
    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p3, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->cutoffIndexState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 26
    .line 27
    const/4 p3, 0x0

    .line 28
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 33
    .line 34
    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-direct {p3, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    .line 38
    .line 39
    .line 40
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedOffsetY$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 41
    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->setState(ILjava/util/List;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final canMove(Ljava/lang/String;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    move-object v4, v1

    .line 10
    check-cast v4, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 11
    .line 12
    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/4 v6, -0x1

    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 24
    .line 25
    invoke-static {v4}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v6

    .line 40
    :goto_1
    if-ne v3, v6, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    add-int/2addr p2, v3

    .line 44
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v1, 0x1

    .line 49
    sub-int/2addr p1, v1

    .line 50
    const/4 v4, 0x3

    .line 51
    if-le v4, p1, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move p1, v4

    .line 55
    :goto_2
    if-ltz v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v3, v4, :cond_5

    .line 62
    .line 63
    if-ltz p2, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ge p2, v0, :cond_5

    .line 70
    .line 71
    if-eq v3, p2, :cond_5

    .line 72
    .line 73
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->cutoffIndexState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-ne v3, p0, :cond_4

    .line 80
    .line 81
    if-gt p2, p1, :cond_5

    .line 82
    .line 83
    :cond_4
    return v1

    .line 84
    :cond_5
    :goto_3
    return v2
.end method

.method public final moveByStep(Ljava/lang/String;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    move-object v3, v0

    .line 10
    check-cast v3, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 11
    .line 12
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, -0x1

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v5

    .line 40
    :goto_1
    add-int/2addr p2, v2

    .line 41
    if-eq v2, v5, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v2, p2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->moveRenderedItem(II)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    :cond_2
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->notifyStateChanged()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return v1
.end method

.method public final moveRenderedItem(II)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->getLastIndex(Ljava/util/List;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x3

    .line 8
    if-le v2, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ltz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-ge p1, v4, :cond_2

    .line 21
    .line 22
    if-ltz p2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ge p2, v4, :cond_2

    .line 29
    .line 30
    if-ne p1, p2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    move v4, v3

    .line 36
    :goto_2
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->cutoffIndexState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ne p1, v5, :cond_3

    .line 43
    .line 44
    if-le p2, v1, :cond_3

    .line 45
    .line 46
    move v5, v3

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move v5, v2

    .line 49
    :goto_3
    if-nez v4, :cond_d

    .line 50
    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    goto/16 :goto_a

    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-gt p2, v4, :cond_5

    .line 60
    .line 61
    if-ge v4, p1, :cond_5

    .line 62
    .line 63
    move v5, v3

    .line 64
    goto :goto_4

    .line 65
    :cond_5
    move v5, v2

    .line 66
    :goto_4
    sub-int/2addr v4, v3

    .line 67
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 72
    .line 73
    if-eqz v4, :cond_6

    .line 74
    .line 75
    invoke-static {v4}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    goto :goto_5

    .line 80
    :cond_6
    const/4 v4, 0x0

    .line 81
    :goto_5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    move p2, v2

    .line 93
    :goto_6
    move-object v6, p1

    .line 94
    check-cast v6, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 95
    .line 96
    invoke-virtual {v6}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    const/4 v8, -0x1

    .line 101
    if-eqz v7, :cond_8

    .line 102
    .line 103
    invoke-virtual {v6}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 108
    .line 109
    instance-of v6, v6, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;

    .line 110
    .line 111
    if-eqz v6, :cond_7

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_8
    move p2, v8

    .line 118
    :goto_7
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 119
    .line 120
    .line 121
    if-eqz v5, :cond_b

    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-le p1, v1, :cond_b

    .line 128
    .line 129
    if-eqz v4, :cond_b

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_8
    move-object p2, p1

    .line 136
    check-cast p2, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 137
    .line 138
    invoke-virtual {p2}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_a

    .line 143
    .line 144
    invoke-virtual {p2}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 149
    .line 150
    invoke-static {p2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_9

    .line 159
    .line 160
    move v8, v2

    .line 161
    goto :goto_9

    .line 162
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_a
    :goto_9
    if-ltz v8, :cond_b

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-ge v8, p1, :cond_b

    .line 172
    .line 173
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    sub-int/2addr p2, v3

    .line 184
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    add-int/2addr p2, v3

    .line 192
    invoke-virtual {v0, p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_b
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-le p1, v1, :cond_c

    .line 200
    .line 201
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 213
    .line 214
    .line 215
    :cond_c
    return v3

    .line 216
    :cond_d
    :goto_a
    return v2
.end method

.method public final notifyStateChanged()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    move-object v2, v1

    .line 13
    check-cast v2, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 14
    .line 15
    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    instance-of v3, v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    const/16 v2, 0xa

    .line 36
    .line 37
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;->action:Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->cutoffIndexState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->onStateChanged:Lkotlin/jvm/functions/Function2;

    .line 77
    .line 78
    invoke-interface {p0, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final setState(ILjava/util/List;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p1, v2, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move v4, v2

    .line 27
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x0

    .line 32
    sget-object v7, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;->INSTANCE:Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;

    .line 33
    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    add-int/lit8 v8, v4, 0x1

    .line 41
    .line 42
    if-ltz v4, :cond_1

    .line 43
    .line 44
    check-cast v5, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 45
    .line 46
    if-ne v4, p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    new-instance v4, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;

    .line 52
    .line 53
    invoke-direct {v4, v5}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Action;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move v4, v8

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 62
    .line 63
    .line 64
    throw v6

    .line 65
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-ne p1, p2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    move p2, v2

    .line 86
    :goto_1
    move-object v0, p1

    .line 87
    check-cast v0, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 88
    .line 89
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 100
    .line 101
    instance-of v0, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const/4 p2, -0x1

    .line 110
    :goto_2
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->cutoffIndexState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 116
    .line 117
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    iget-object p2, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedOffsetY$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 124
    .line 125
    .line 126
    iput-boolean v2, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->dragDidMove:Z

    .line 127
    .line 128
    return-void
.end method
