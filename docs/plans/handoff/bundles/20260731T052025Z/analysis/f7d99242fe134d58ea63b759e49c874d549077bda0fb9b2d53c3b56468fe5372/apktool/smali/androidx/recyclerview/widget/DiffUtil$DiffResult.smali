.class public final Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mCallback:Landroidx/recyclerview/widget/DiffUtil;

.field public final mDetectMoves:Z

.field public final mDiagonals:Ljava/util/ArrayList;

.field public final mNewItemStatuses:[I

.field public final mNewListSize:I

.field public final mOldItemStatuses:[I

.field public final mOldListSize:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil;Ljava/util/ArrayList;[I[I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 12
    .line 13
    .line 14
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil;->getOldListSize()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil;->getNewListSize()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    iput-boolean v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 47
    .line 48
    :goto_0
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iget v5, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 51
    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    :cond_1
    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 59
    .line 60
    invoke-direct {v4, v0, v0, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    new-instance v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 67
    .line 68
    invoke-direct {v4, v1, v2, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 89
    .line 90
    move v4, v0

    .line 91
    :goto_1
    iget v5, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 92
    .line 93
    if-ge v4, v5, :cond_3

    .line 94
    .line 95
    iget v5, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 96
    .line 97
    add-int/2addr v5, v4

    .line 98
    iget v6, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 99
    .line 100
    add-int/2addr v6, v4

    .line 101
    invoke-virtual {p1, v5, v6}, Landroidx/recyclerview/widget/DiffUtil;->areContentsTheSame(II)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    move v7, v3

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    const/4 v7, 0x2

    .line 110
    :goto_2
    shl-int/lit8 v8, v6, 0x4

    .line 111
    .line 112
    or-int/2addr v8, v7

    .line 113
    aput v8, p3, v5

    .line 114
    .line 115
    shl-int/lit8 v5, v5, 0x4

    .line 116
    .line 117
    or-int/2addr v5, v7

    .line 118
    aput v5, p4, v6

    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    iget-boolean p0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 124
    .line 125
    if-eqz p0, :cond_b

    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    move v1, v0

    .line 132
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_b

    .line 137
    .line 138
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 143
    .line 144
    :goto_4
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 145
    .line 146
    if-ge v1, v3, :cond_a

    .line 147
    .line 148
    aget v3, p3, v1

    .line 149
    .line 150
    if-nez v3, :cond_9

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    move v4, v0

    .line 157
    move v5, v4

    .line 158
    :goto_5
    if-ge v4, v3, :cond_9

    .line 159
    .line 160
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 165
    .line 166
    :goto_6
    iget v7, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 167
    .line 168
    if-ge v5, v7, :cond_8

    .line 169
    .line 170
    aget v7, p4, v5

    .line 171
    .line 172
    if-nez v7, :cond_7

    .line 173
    .line 174
    invoke-virtual {p1, v1, v5}, Landroidx/recyclerview/widget/DiffUtil;->areItemsTheSame(II)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_7

    .line 179
    .line 180
    invoke-virtual {p1, v1, v5}, Landroidx/recyclerview/widget/DiffUtil;->areContentsTheSame(II)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_6

    .line 185
    .line 186
    const/16 v3, 0x8

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_6
    const/4 v3, 0x4

    .line 190
    :goto_7
    shl-int/lit8 v4, v5, 0x4

    .line 191
    .line 192
    or-int/2addr v4, v3

    .line 193
    aput v4, p3, v1

    .line 194
    .line 195
    shl-int/lit8 v4, v1, 0x4

    .line 196
    .line 197
    or-int/2addr v3, v4

    .line 198
    aput v3, p4, v5

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_8
    iget v5, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 205
    .line 206
    add-int/2addr v5, v7

    .line 207
    add-int/lit8 v4, v4, 0x1

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_9
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_a
    iget v1, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 214
    .line 215
    add-int/2addr v1, v3

    .line 216
    goto :goto_3

    .line 217
    :cond_b
    return-void
.end method

.method public static getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 16
    .line 17
    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 18
    .line 19
    if-ne v1, p1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    .line 22
    .line 23
    if-ne v1, p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/fragment/app/Fragment$7;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroidx/fragment/app/Fragment$7;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/fragment/app/Fragment$7;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    sub-int/2addr v4, v5

    .line 28
    iget v6, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 29
    .line 30
    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 31
    .line 32
    move v8, v7

    .line 33
    move v7, v6

    .line 34
    :goto_0
    if-ltz v4, :cond_c

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 41
    .line 42
    iget v10, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 43
    .line 44
    iget v11, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 45
    .line 46
    iget v9, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 47
    .line 48
    add-int v12, v10, v9

    .line 49
    .line 50
    add-int v13, v11, v9

    .line 51
    .line 52
    :goto_1
    iget-object v15, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 53
    .line 54
    iget-object v14, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil;

    .line 55
    .line 56
    move/from16 v16, v5

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    if-le v7, v12, :cond_4

    .line 60
    .line 61
    add-int/lit8 v7, v7, -0x1

    .line 62
    .line 63
    aget v15, v15, v7

    .line 64
    .line 65
    and-int/lit8 v17, v15, 0xc

    .line 66
    .line 67
    if-eqz v17, :cond_2

    .line 68
    .line 69
    move-object/from16 v17, v3

    .line 70
    .line 71
    shr-int/lit8 v3, v15, 0x4

    .line 72
    .line 73
    invoke-static {v1, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    iget v3, v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 80
    .line 81
    sub-int v3, v6, v3

    .line 82
    .line 83
    add-int/lit8 v3, v3, -0x1

    .line 84
    .line 85
    invoke-virtual {v2, v7, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 86
    .line 87
    .line 88
    and-int/lit8 v5, v15, 0x4

    .line 89
    .line 90
    if-eqz v5, :cond_0

    .line 91
    .line 92
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move/from16 v5, v16

    .line 96
    .line 97
    invoke-virtual {v2, v3, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(II)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_0
    move/from16 v5, v16

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_1
    move/from16 v5, v16

    .line 105
    .line 106
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 107
    .line 108
    sub-int v14, v6, v7

    .line 109
    .line 110
    sub-int/2addr v14, v5

    .line 111
    invoke-direct {v3, v7, v14, v5}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_2
    move-object/from16 v17, v3

    .line 119
    .line 120
    iget v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 121
    .line 122
    const/4 v5, 0x2

    .line 123
    if-ne v3, v5, :cond_3

    .line 124
    .line 125
    iget v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 126
    .line 127
    if-lt v3, v7, :cond_3

    .line 128
    .line 129
    add-int/lit8 v5, v7, 0x1

    .line 130
    .line 131
    if-gt v3, v5, :cond_3

    .line 132
    .line 133
    iget v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    add-int/2addr v3, v5

    .line 137
    iput v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 138
    .line 139
    iput v7, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    const/4 v5, 0x1

    .line 143
    invoke-virtual {v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 144
    .line 145
    .line 146
    iput v7, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 147
    .line 148
    iput v5, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 149
    .line 150
    const/4 v5, 0x2

    .line 151
    iput v5, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 152
    .line 153
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 154
    .line 155
    :goto_3
    move-object/from16 v3, v17

    .line 156
    .line 157
    const/4 v5, 0x1

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    move-object/from16 v17, v3

    .line 160
    .line 161
    :goto_4
    if-le v8, v13, :cond_9

    .line 162
    .line 163
    add-int/lit8 v8, v8, -0x1

    .line 164
    .line 165
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 166
    .line 167
    aget v3, v3, v8

    .line 168
    .line 169
    and-int/lit8 v12, v3, 0xc

    .line 170
    .line 171
    if-eqz v12, :cond_7

    .line 172
    .line 173
    shr-int/lit8 v12, v3, 0x4

    .line 174
    .line 175
    const/4 v5, 0x1

    .line 176
    invoke-static {v1, v12, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    if-nez v12, :cond_6

    .line 181
    .line 182
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 183
    .line 184
    sub-int v12, v6, v7

    .line 185
    .line 186
    move/from16 v16, v5

    .line 187
    .line 188
    const/4 v5, 0x0

    .line 189
    invoke-direct {v3, v8, v12, v5}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :cond_5
    move/from16 v3, v16

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_6
    move/from16 v16, v5

    .line 199
    .line 200
    const/4 v5, 0x0

    .line 201
    iget v12, v12, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 202
    .line 203
    sub-int v12, v6, v12

    .line 204
    .line 205
    add-int/lit8 v12, v12, -0x1

    .line 206
    .line 207
    invoke-virtual {v2, v12, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 208
    .line 209
    .line 210
    and-int/lit8 v3, v3, 0x4

    .line 211
    .line 212
    if-eqz v3, :cond_5

    .line 213
    .line 214
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    move/from16 v3, v16

    .line 218
    .line 219
    invoke-virtual {v2, v7, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(II)V

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_7
    const/4 v3, 0x1

    .line 224
    iget v12, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 225
    .line 226
    if-ne v12, v3, :cond_8

    .line 227
    .line 228
    iget v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 229
    .line 230
    if-lt v7, v3, :cond_8

    .line 231
    .line 232
    iget v12, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 233
    .line 234
    add-int v5, v3, v12

    .line 235
    .line 236
    if-gt v7, v5, :cond_8

    .line 237
    .line 238
    add-int/lit8 v12, v12, 0x1

    .line 239
    .line 240
    iput v12, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 241
    .line 242
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    iput v3, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_8
    invoke-virtual {v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 250
    .line 251
    .line 252
    iput v7, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 253
    .line 254
    const/4 v5, 0x1

    .line 255
    iput v5, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    .line 256
    .line 257
    iput v5, v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    .line 258
    .line 259
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 260
    .line 261
    :goto_6
    const/4 v5, 0x0

    .line 262
    goto :goto_4

    .line 263
    :cond_9
    move v3, v10

    .line 264
    const/4 v5, 0x0

    .line 265
    :goto_7
    if-ge v5, v9, :cond_b

    .line 266
    .line 267
    aget v7, v15, v3

    .line 268
    .line 269
    and-int/lit8 v7, v7, 0xf

    .line 270
    .line 271
    const/4 v8, 0x2

    .line 272
    if-ne v7, v8, :cond_a

    .line 273
    .line 274
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    const/4 v7, 0x1

    .line 278
    invoke-virtual {v2, v3, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(II)V

    .line 279
    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_a
    const/4 v7, 0x1

    .line 283
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 284
    .line 285
    add-int/lit8 v5, v5, 0x1

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_b
    const/4 v7, 0x1

    .line 289
    add-int/lit8 v4, v4, -0x1

    .line 290
    .line 291
    move v5, v7

    .line 292
    move v7, v10

    .line 293
    move v8, v11

    .line 294
    move-object/from16 v3, v17

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_c
    invoke-virtual {v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 299
    .line 300
    .line 301
    return-void
.end method
