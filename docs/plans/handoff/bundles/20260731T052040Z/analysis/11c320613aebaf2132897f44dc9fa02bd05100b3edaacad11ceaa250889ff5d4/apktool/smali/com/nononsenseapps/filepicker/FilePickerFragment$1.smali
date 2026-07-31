.class public final Lcom/nononsenseapps/filepicker/FilePickerFragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public fileObserver:Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;

.field public mAbandoned:Z

.field public volatile mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

.field public mContentChanged:Z

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

.field public mReset:Z

.field public mStarted:Z

.field public volatile mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

.field public final synthetic this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/FilePickerFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    .line 5
    .line 6
    sget-object p1, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mStarted:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mAbandoned:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mReset:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mContentChanged:Z

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mExecutor:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mStarted:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mContentChanged:Z

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iput-object v3, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 29
    .line 30
    iget-object v2, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mFuture:Landroidx/loader/content/ModernAsyncTask$3;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 47
    .line 48
    :cond_2
    iput-object v3, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public final executePendingTask()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mCancellingTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mTask:Landroidx/loader/content/AsyncTaskLoader$LoadTask;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->mExecutor:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iget v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mStatus:I

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    iget p0, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mStatus:I

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eq p0, v3, :cond_1

    .line 31
    .line 32
    if-eq p0, v2, :cond_0

    .line 33
    .line 34
    const-string p0, "We should never reach this state"

    .line 35
    .line 36
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string p0, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const-string p0, "Cannot execute task: the task is already running."

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iput v2, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mStatus:I

    .line 53
    .line 54
    iget-object v1, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mWorker:Landroidx/loader/content/ModernAsyncTask$2;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mFuture:Landroidx/loader/content/ModernAsyncTask$3;

    .line 60
    .line 61
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method public final onLoadInBackground()Landroidx/recyclerview/widget/SortedList;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v3, v1

    .line 17
    :goto_0
    new-instance v4, Landroidx/recyclerview/widget/SortedList;

    .line 18
    .line 19
    new-instance v5, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$1;

    .line 20
    .line 21
    new-instance v6, Lcom/nononsenseapps/filepicker/FileItemAdapter;

    .line 22
    .line 23
    invoke-direct {v6, v0}, Lcom/nononsenseapps/filepicker/FileItemAdapter;-><init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v5, p0, v6}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$1;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Lcom/nononsenseapps/filepicker/FileItemAdapter;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    const-class p0, Ljava/io/File;

    .line 33
    .line 34
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, [Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v3, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 41
    .line 42
    iput-object v5, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 43
    .line 44
    iput v2, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 45
    .line 46
    iget-object v3, v4, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    new-instance v3, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 51
    .line 52
    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;-><init>(Landroidx/recyclerview/widget/SortedList$Callback;)V

    .line 53
    .line 54
    .line 55
    iput-object v3, v4, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 56
    .line 57
    :cond_1
    iget-object v3, v4, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 58
    .line 59
    iput-object v3, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 60
    .line 61
    if-eqz v1, :cond_12

    .line 62
    .line 63
    array-length v3, v1

    .line 64
    move v5, v2

    .line 65
    :goto_1
    if-ge v5, v3, :cond_12

    .line 66
    .line 67
    aget-object v6, v1, v5

    .line 68
    .line 69
    invoke-virtual {v0, v6}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->isItemVisible(Ljava/io/File;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_11

    .line 74
    .line 75
    iget-object v7, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 76
    .line 77
    iget v8, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 78
    .line 79
    move v9, v2

    .line 80
    :goto_2
    const/4 v10, -0x1

    .line 81
    if-ge v9, v8, :cond_b

    .line 82
    .line 83
    add-int v11, v9, v8

    .line 84
    .line 85
    div-int/lit8 v11, v11, 0x2

    .line 86
    .line 87
    aget-object v12, v7, v11

    .line 88
    .line 89
    iget-object v13, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 90
    .line 91
    invoke-virtual {v13, v12, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-gez v13, :cond_2

    .line 96
    .line 97
    add-int/lit8 v9, v11, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    if-nez v13, :cond_a

    .line 101
    .line 102
    iget-object v7, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 103
    .line 104
    invoke-virtual {v7, v12, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_3

    .line 109
    .line 110
    goto :goto_9

    .line 111
    :cond_3
    add-int/lit8 v7, v11, -0x1

    .line 112
    .line 113
    :goto_3
    if-lt v7, v9, :cond_6

    .line 114
    .line 115
    iget-object v12, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 116
    .line 117
    aget-object v12, v12, v7

    .line 118
    .line 119
    iget-object v13, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 120
    .line 121
    invoke-virtual {v13, v12, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    if-eqz v13, :cond_4

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_4
    iget-object v13, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 129
    .line 130
    invoke-virtual {v13, v12, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-eqz v12, :cond_5

    .line 135
    .line 136
    :goto_4
    move v9, v7

    .line 137
    goto :goto_8

    .line 138
    :cond_5
    add-int/lit8 v7, v7, -0x1

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    :goto_5
    add-int/lit8 v7, v11, 0x1

    .line 142
    .line 143
    :goto_6
    if-ge v7, v8, :cond_9

    .line 144
    .line 145
    iget-object v9, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 146
    .line 147
    aget-object v9, v9, v7

    .line 148
    .line 149
    iget-object v12, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 150
    .line 151
    invoke-virtual {v12, v9, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    if-eqz v12, :cond_7

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_7
    iget-object v12, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 159
    .line 160
    invoke-virtual {v12, v9, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_8

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_9
    :goto_7
    move v9, v10

    .line 171
    :goto_8
    if-ne v9, v10, :cond_b

    .line 172
    .line 173
    :goto_9
    move v9, v11

    .line 174
    goto :goto_a

    .line 175
    :cond_a
    move v8, v11

    .line 176
    goto :goto_2

    .line 177
    :cond_b
    :goto_a
    const/4 v7, 0x1

    .line 178
    if-ne v9, v10, :cond_c

    .line 179
    .line 180
    move v9, v2

    .line 181
    goto :goto_b

    .line 182
    :cond_c
    iget v8, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 183
    .line 184
    if-ge v9, v8, :cond_e

    .line 185
    .line 186
    iget-object v8, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 187
    .line 188
    aget-object v8, v8, v9

    .line 189
    .line 190
    iget-object v10, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 191
    .line 192
    invoke-virtual {v10, v8, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    if-eqz v10, :cond_e

    .line 197
    .line 198
    iget-object v10, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 199
    .line 200
    invoke-virtual {v10, v8, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    iget-object v11, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 205
    .line 206
    if-eqz v10, :cond_d

    .line 207
    .line 208
    aput-object v6, v11, v9

    .line 209
    .line 210
    goto :goto_d

    .line 211
    :cond_d
    aput-object v6, v11, v9

    .line 212
    .line 213
    iget-object v10, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 214
    .line 215
    invoke-virtual {v10, v8, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v10, v9, v7, v6}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_d

    .line 223
    :cond_e
    :goto_b
    iget v8, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 224
    .line 225
    if-gt v9, v8, :cond_10

    .line 226
    .line 227
    iget-object v10, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 228
    .line 229
    array-length v11, v10

    .line 230
    if-ne v8, v11, :cond_f

    .line 231
    .line 232
    array-length v8, v10

    .line 233
    add-int/lit8 v8, v8, 0xa

    .line 234
    .line 235
    invoke-static {p0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    check-cast v8, [Ljava/lang/Object;

    .line 240
    .line 241
    iget-object v10, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 242
    .line 243
    invoke-static {v10, v2, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .line 245
    .line 246
    aput-object v6, v8, v9

    .line 247
    .line 248
    iget-object v6, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 249
    .line 250
    add-int/lit8 v10, v9, 0x1

    .line 251
    .line 252
    iget v11, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 253
    .line 254
    sub-int/2addr v11, v9

    .line 255
    invoke-static {v6, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    .line 257
    .line 258
    iput-object v8, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_f
    add-int/lit8 v11, v9, 0x1

    .line 262
    .line 263
    sub-int/2addr v8, v9

    .line 264
    invoke-static {v10, v9, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    .line 266
    .line 267
    iget-object v8, v4, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 268
    .line 269
    aput-object v6, v8, v9

    .line 270
    .line 271
    :goto_c
    iget v6, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 272
    .line 273
    add-int/2addr v6, v7

    .line 274
    iput v6, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 275
    .line 276
    iget-object v6, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 277
    .line 278
    invoke-interface {v6, v9, v7}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 279
    .line 280
    .line 281
    goto :goto_d

    .line 282
    :cond_10
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 283
    .line 284
    const-string v0, "cannot add item to "

    .line 285
    .line 286
    const-string v1, " because size is "

    .line 287
    .line 288
    invoke-static {v0, v9, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iget v1, v4, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p0

    .line 305
    :cond_11
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_12
    iget-object p0, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 310
    .line 311
    instance-of v0, p0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 312
    .line 313
    if-eqz v0, :cond_13

    .line 314
    .line 315
    check-cast p0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 316
    .line 317
    iget-object p0, p0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 318
    .line 319
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 320
    .line 321
    .line 322
    :cond_13
    iget-object p0, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 323
    .line 324
    iget-object v0, v4, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 325
    .line 326
    if-ne p0, v0, :cond_14

    .line 327
    .line 328
    iget-object p0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 329
    .line 330
    iput-object p0, v4, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 331
    .line 332
    :cond_14
    return-object v4
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lorg/jsoup/Jsoup;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 9
    .line 10
    .line 11
    const-string p0, " id="

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string/jumbo p0, "}"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
