.class public final Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final mCallback:Landroidx/recyclerview/widget/DiffUtil;

.field public final mDetectMoves:Z

.field public final mDiagonals:Ljava/util/ArrayList;

.field public final mNewItemStatuses:[I

.field public final mNewListSize:I

.field public final mOldItemStatuses:[I

.field public final mOldListSize:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil;Ljava/util/ArrayList;[I[IZ)V
    .locals 7

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
    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p5

    .line 37
    if-eqz p5, :cond_0

    .line 38
    .line 39
    const/4 p5, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p5

    .line 45
    check-cast p5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 46
    .line 47
    :goto_0
    if-eqz p5, :cond_1

    .line 48
    .line 49
    iget v3, p5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 50
    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    iget p5, p5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 54
    .line 55
    if-eqz p5, :cond_2

    .line 56
    .line 57
    :cond_1
    new-instance p5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 58
    .line 59
    invoke-direct {p5, v0, v0, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0, p5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    new-instance p5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 66
    .line 67
    invoke-direct {p5, v1, v2, v0}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p5

    .line 77
    :cond_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 88
    .line 89
    move v2, v0

    .line 90
    :goto_1
    iget v3, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 91
    .line 92
    if-ge v2, v3, :cond_3

    .line 93
    .line 94
    iget v3, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 95
    .line 96
    add-int/2addr v3, v2

    .line 97
    iget v4, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 98
    .line 99
    add-int/2addr v4, v2

    .line 100
    invoke-virtual {p1, v3, v4}, Landroidx/recyclerview/widget/DiffUtil;->areContentsTheSame(II)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_4

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const/4 v5, 0x2

    .line 109
    :goto_2
    shl-int/lit8 v6, v4, 0x4

    .line 110
    .line 111
    or-int/2addr v6, v5

    .line 112
    aput v6, p3, v3

    .line 113
    .line 114
    shl-int/lit8 v3, v3, 0x4

    .line 115
    .line 116
    or-int/2addr v3, v5

    .line 117
    aput v3, p4, v4

    .line 118
    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    iget-boolean p0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 123
    .line 124
    if-eqz p0, :cond_b

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    move p5, v0

    .line 131
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_b

    .line 136
    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 142
    .line 143
    :goto_4
    iget v2, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 144
    .line 145
    if-ge p5, v2, :cond_a

    .line 146
    .line 147
    aget v2, p3, p5

    .line 148
    .line 149
    if-nez v2, :cond_9

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    move v3, v0

    .line 156
    move v4, v3

    .line 157
    :goto_5
    if-ge v3, v2, :cond_9

    .line 158
    .line 159
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 164
    .line 165
    :goto_6
    iget v6, v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 166
    .line 167
    if-ge v4, v6, :cond_8

    .line 168
    .line 169
    aget v6, p4, v4

    .line 170
    .line 171
    if-nez v6, :cond_7

    .line 172
    .line 173
    invoke-virtual {p1, p5, v4}, Landroidx/recyclerview/widget/DiffUtil;->areItemsTheSame(II)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_7

    .line 178
    .line 179
    invoke-virtual {p1, p5, v4}, Landroidx/recyclerview/widget/DiffUtil;->areContentsTheSame(II)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_6

    .line 184
    .line 185
    const/16 v2, 0x8

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_6
    const/4 v2, 0x4

    .line 189
    :goto_7
    shl-int/lit8 v3, v4, 0x4

    .line 190
    .line 191
    or-int/2addr v3, v2

    .line 192
    aput v3, p3, p5

    .line 193
    .line 194
    shl-int/lit8 v3, p5, 0x4

    .line 195
    .line 196
    or-int/2addr v2, v3

    .line 197
    aput v2, p4, v4

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_8
    iget v4, v5, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 204
    .line 205
    add-int/2addr v4, v6

    .line 206
    add-int/lit8 v3, v3, 0x1

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_9
    :goto_8
    add-int/lit8 p5, p5, 0x1

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_a
    iget p5, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 213
    .line 214
    add-int/2addr p5, v2

    .line 215
    goto :goto_3

    .line 216
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
.method public final dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    check-cast v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 15
    .line 16
    .line 17
    move-object v1, v2

    .line 18
    :goto_0
    new-instance v2, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    sub-int/2addr v4, v5

    .line 31
    iget v6, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 32
    .line 33
    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 34
    .line 35
    move v8, v7

    .line 36
    move v7, v6

    .line 37
    :goto_1
    if-ltz v4, :cond_b

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 44
    .line 45
    iget v10, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 46
    .line 47
    iget v11, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 48
    .line 49
    add-int v12, v10, v11

    .line 50
    .line 51
    iget v9, v9, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 52
    .line 53
    add-int v13, v9, v11

    .line 54
    .line 55
    :goto_2
    iget-object v14, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 56
    .line 57
    iget-object v15, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil;

    .line 58
    .line 59
    move/from16 p1, v5

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    if-le v7, v12, :cond_4

    .line 63
    .line 64
    add-int/lit8 v7, v7, -0x1

    .line 65
    .line 66
    aget v14, v14, v7

    .line 67
    .line 68
    and-int/lit8 v16, v14, 0xc

    .line 69
    .line 70
    if-eqz v16, :cond_3

    .line 71
    .line 72
    move-object/from16 v16, v3

    .line 73
    .line 74
    shr-int/lit8 v3, v14, 0x4

    .line 75
    .line 76
    invoke-static {v2, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 83
    .line 84
    sub-int v5, v6, v5

    .line 85
    .line 86
    add-int/lit8 v5, v5, -0x1

    .line 87
    .line 88
    invoke-virtual {v1, v7, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 89
    .line 90
    .line 91
    and-int/lit8 v14, v14, 0x4

    .line 92
    .line 93
    if-eqz v14, :cond_1

    .line 94
    .line 95
    invoke-virtual {v15, v7, v3}, Landroidx/recyclerview/widget/DiffUtil;->getChangePayload(II)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    move/from16 v14, p1

    .line 100
    .line 101
    invoke-virtual {v1, v5, v14, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_1
    move/from16 v14, p1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_2
    move/from16 v14, p1

    .line 109
    .line 110
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 111
    .line 112
    sub-int v5, v6, v7

    .line 113
    .line 114
    sub-int/2addr v5, v14

    .line 115
    invoke-direct {v3, v7, v5, v14}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    move/from16 v14, p1

    .line 123
    .line 124
    move-object/from16 v16, v3

    .line 125
    .line 126
    invoke-virtual {v1, v7, v14}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v6, v6, -0x1

    .line 130
    .line 131
    :goto_3
    move-object/from16 v3, v16

    .line 132
    .line 133
    const/4 v5, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move-object/from16 v16, v3

    .line 136
    .line 137
    :goto_4
    if-le v8, v13, :cond_8

    .line 138
    .line 139
    add-int/lit8 v8, v8, -0x1

    .line 140
    .line 141
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 142
    .line 143
    aget v3, v3, v8

    .line 144
    .line 145
    and-int/lit8 v12, v3, 0xc

    .line 146
    .line 147
    if-eqz v12, :cond_6

    .line 148
    .line 149
    shr-int/lit8 v12, v3, 0x4

    .line 150
    .line 151
    const/4 v5, 0x1

    .line 152
    invoke-static {v2, v12, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-nez v0, :cond_5

    .line 157
    .line 158
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 159
    .line 160
    sub-int v3, v6, v7

    .line 161
    .line 162
    const/4 v12, 0x0

    .line 163
    invoke-direct {v0, v8, v3, v12}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move/from16 v17, v12

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_5
    const/16 v17, 0x0

    .line 173
    .line 174
    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 175
    .line 176
    sub-int v0, v6, v0

    .line 177
    .line 178
    sub-int/2addr v0, v5

    .line 179
    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    .line 180
    .line 181
    .line 182
    and-int/lit8 v0, v3, 0x4

    .line 183
    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    invoke-virtual {v15, v12, v8}, Landroidx/recyclerview/widget/DiffUtil;->getChangePayload(II)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v1, v7, v5, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_6
    move/from16 v17, v5

    .line 195
    .line 196
    const/4 v5, 0x1

    .line 197
    invoke-virtual {v1, v7, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v6, v6, 0x1

    .line 201
    .line 202
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    .line 203
    .line 204
    move/from16 v5, v17

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_8
    move/from16 v17, v5

    .line 208
    .line 209
    move v3, v9

    .line 210
    move v0, v10

    .line 211
    :goto_6
    if-ge v5, v11, :cond_a

    .line 212
    .line 213
    aget v7, v14, v0

    .line 214
    .line 215
    and-int/lit8 v7, v7, 0xf

    .line 216
    .line 217
    const/4 v8, 0x2

    .line 218
    if-ne v7, v8, :cond_9

    .line 219
    .line 220
    invoke-virtual {v15, v0, v3}, Landroidx/recyclerview/widget/DiffUtil;->getChangePayload(II)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    const/4 v8, 0x1

    .line 225
    invoke-virtual {v1, v0, v8, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_9
    const/4 v8, 0x1

    .line 230
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 231
    .line 232
    add-int/lit8 v3, v3, 0x1

    .line 233
    .line 234
    add-int/lit8 v5, v5, 0x1

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_a
    const/4 v8, 0x1

    .line 238
    add-int/lit8 v4, v4, -0x1

    .line 239
    .line 240
    move-object/from16 v0, p0

    .line 241
    .line 242
    move v5, v8

    .line 243
    move v8, v9

    .line 244
    move v7, v10

    .line 245
    move-object/from16 v3, v16

    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 250
    .line 251
    .line 252
    return-void
.end method
