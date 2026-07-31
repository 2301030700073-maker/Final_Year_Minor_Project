.class public final Lus/shandian/giga/ui/adapter/MissionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public mClear:Landroid/view/MenuItem;

.field public final mContext:Landroid/content/Context;

.field public final mDeleter:Lus/shandian/giga/ui/common/Deleter;

.field public final mDownloadManager:Lus/shandian/giga/service/DownloadManager;

.field public final mEmptyMessage:Landroid/view/View;

.field public final mHandler:Landroid/os/Handler;

.field public final mHidden:Ljava/util/ArrayList;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

.field public mLayout:I

.field public mPauseButton:Landroid/view/MenuItem;

.field public final mPendingDownloadsItems:Ljava/util/ArrayList;

.field public mRecover:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

.field public mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field public mStartButton:Landroid/view/MenuItem;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lus/shandian/giga/service/DownloadManager;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 17
    .line 18
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    .line 28
    const v0, 0x7f0d009d

    .line 29
    .line 30
    .line 31
    iput v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    .line 32
    .line 33
    new-instance v7, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    iput-object v7, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iput-object p3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p2, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    .line 48
    .line 49
    new-instance v6, Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 50
    .line 51
    invoke-direct {v6, p2}, Lus/shandian/giga/service/DownloadManager$MissionIterator;-><init>(Lus/shandian/giga/service/DownloadManager;)V

    .line 52
    .line 53
    .line 54
    iput-object v6, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 55
    .line 56
    new-instance v1, Lus/shandian/giga/ui/common/Deleter;

    .line 57
    .line 58
    move-object v4, p0

    .line 59
    move-object v3, p1

    .line 60
    move-object v5, p2

    .line 61
    move-object v2, p4

    .line 62
    invoke-direct/range {v1 .. v7}, Lus/shandian/giga/ui/common/Deleter;-><init>(Landroid/view/View;Landroid/content/Context;Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager$MissionIterator;Landroid/os/Handler;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, v4, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    .line 66
    .line 67
    iput-object v2, v4, Lus/shandian/giga/ui/adapter/MissionAdapter;->mView:Landroid/view/View;

    .line 68
    .line 69
    new-instance p0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p0, v4, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object p0, v6, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-lez p0, :cond_0

    .line 83
    .line 84
    const/16 p0, 0x8

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/4 p0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eq p1, p0, :cond_1

    .line 93
    .line 94
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {v4}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onResume()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static resolveMimeType(Lus/shandian/giga/get/Mission;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "application/octet-stream"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    iget-object p0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "?"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, -0x1

    .line 46
    if-le v0, v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_1
    const-string v0, "."

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v0, v2, :cond_2

    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string v0, "%"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-le v0, v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :cond_3
    const-string v0, "/"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-le v0, v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :goto_0
    const-string v0, "*/*"

    .line 95
    .line 96
    if-nez p0, :cond_5

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const/4 v2, 0x1

    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    if-nez p0, :cond_6

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_6
    return-object p0
.end method


# virtual methods
.method public final applyChanges()V
    .locals 4

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroidx/recyclerview/widget/OpReorderer;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object v1, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v1, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mEmptyMessage:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eq v3, v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    iget-boolean v0, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 57
    .line 58
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public final checkMasterButtonsVisibility()V
    .locals 9

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 2
    .line 3
    iget-object v1, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    .line 7
    .line 8
    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    move v5, v4

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const/4 v7, 0x1

    .line 22
    if-eqz v6, :cond_3

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lus/shandian/giga/get/DownloadMission;

    .line 29
    .line 30
    iget-object v8, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-nez v8, :cond_0

    .line 37
    .line 38
    invoke-virtual {v6}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-boolean v6, v6, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 46
    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    move v4, v7

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v5, v7

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [Z

    .line 58
    .line 59
    aput-boolean v4, v0, v3

    .line 60
    .line 61
    aput-boolean v5, v0, v7

    .line 62
    .line 63
    const-string v1, "MissionAdapter"

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v4, "checkMasterButtonsVisibility() running="

    .line 68
    .line 69
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    aget-boolean v4, v0, v3

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " paused="

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    aget-boolean v4, v0, v7

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    .line 95
    .line 96
    aget-boolean v2, v0, v3

    .line 97
    .line 98
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eq v3, v2, :cond_4

    .line 103
    .line 104
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    .line 108
    .line 109
    aget-boolean v0, v0, v7

    .line 110
    .line 111
    invoke-interface {p0}, Landroid/view/MenuItem;->isVisible()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eq v1, v0, :cond_5

    .line 116
    .line 117
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void

    .line 121
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    throw p0
.end method

.method public final clearFinishedDownloads(Z)V
    .locals 7

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 4
    .line 5
    iget-boolean v0, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    move v0, p1

    .line 19
    :goto_0
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 20
    .line 21
    iget-object v1, v1, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lokio/PriorityQueue;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lus/shandian/giga/get/Mission;

    .line 38
    .line 39
    instance-of v1, v1, Lus/shandian/giga/get/FinishedMission;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lokio/PriorityQueue;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lus/shandian/giga/get/Mission;

    .line 52
    .line 53
    check-cast v1, Lus/shandian/giga/get/FinishedMission;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_1
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 60
    .line 61
    iget-object v2, v2, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    int-to-long v4, v0

    .line 86
    invoke-static {v1, v4, v5}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const v2, 0x7f110001

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mView:Landroid/view/View;

    .line 99
    .line 100
    const/4 v2, -0x2

    .line 101
    invoke-static {v1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 106
    .line 107
    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;

    .line 108
    .line 109
    const/16 v2, 0xa

    .line 110
    .line 111
    invoke-direct {v1, p0, v2}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 115
    .line 116
    const v3, 0x7f13050b

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const/16 v1, -0x100

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    .line 151
    .line 152
    new-instance v1, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;

    .line 153
    .line 154
    invoke-direct {v1, p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;I)V

    .line 155
    .line 156
    .line 157
    const-string p0, "deleteFinishedDownloads"

    .line 158
    .line 159
    const-wide/16 v2, 0x1388

    .line 160
    .line 161
    invoke-static {v0, v1, p0, v2, v3}, Landroidx/work/OperationKt;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_3
    if-nez p1, :cond_5

    .line 166
    .line 167
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 168
    .line 169
    monitor-enter p1

    .line 170
    :try_start_0
    iget-object v0, p1, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_4

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lus/shandian/giga/get/FinishedMission;

    .line 187
    .line 188
    iget-object v2, p1, Lus/shandian/giga/service/DownloadManager;->mFinishedMissionStore:Lus/shandian/giga/get/sqlite/FinishedMissionStore;

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lus/shandian/giga/get/Mission;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    move-object p0, v0

    .line 196
    goto :goto_3

    .line 197
    :cond_4
    iget-object v0, p1, Lus/shandian/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    .line 201
    .line 202
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    throw p0

    .line 209
    :cond_5
    return-void
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 2
    .line 3
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 2
    .line 3
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    if-eq v0, v4, :cond_1

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v4, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 46
    .line 47
    iget-object v6, v5, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 48
    .line 49
    iget-object v6, v6, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v6, Lus/shandian/giga/get/Mission;

    .line 52
    .line 53
    if-ne v6, v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v5, 0x0

    .line 57
    :goto_0
    if-nez v5, :cond_4

    .line 58
    .line 59
    :goto_1
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 62
    .line 63
    if-eq p1, v2, :cond_5

    .line 64
    .line 65
    if-eq p1, v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0, v5}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_5
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 72
    .line 73
    .line 74
    return v3
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getItem(I)Lokio/PriorityQueue;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    instance-of v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget p2, p2, Lokio/PriorityQueue;->size:I

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-ne p2, v1, :cond_1

    .line 18
    .line 19
    const p0, 0x7f1302f9

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 28
    .line 29
    .line 30
    :cond_2
    const p0, 0x7f1302f8

    .line 31
    .line 32
    .line 33
    :goto_0
    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    .line 34
    .line 35
    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;->header:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 42
    .line 43
    iput-object p2, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 44
    .line 45
    iget-object v0, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lus/shandian/giga/get/Mission;

    .line 48
    .line 49
    iget-char v2, v0, Lus/shandian/giga/get/Mission;->kind:C

    .line 50
    .line 51
    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/16 v3, 0x61

    .line 58
    .line 59
    const/4 v4, 0x2

    .line 60
    if-eq v2, v3, :cond_8

    .line 61
    .line 62
    const/16 v3, 0x73

    .line 63
    .line 64
    const/4 v5, 0x3

    .line 65
    if-eq v2, v3, :cond_9

    .line 66
    .line 67
    const/16 v3, 0x76

    .line 68
    .line 69
    if-eq v2, v3, :cond_7

    .line 70
    .line 71
    const-string v2, ".srt"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_9

    .line 78
    .line 79
    const-string v2, ".vtt"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_9

    .line 86
    .line 87
    const-string v2, ".ssa"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_4
    const-string v2, ".mp3"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_8

    .line 104
    .line 105
    const-string v2, ".wav"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_8

    .line 112
    .line 113
    const-string v2, ".flac"

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_8

    .line 120
    .line 121
    const-string v2, ".m4a"

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_8

    .line 128
    .line 129
    const-string v2, ".opus"

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_5

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const-string v2, ".mp4"

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    const-string v2, ".mpeg"

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_7

    .line 153
    .line 154
    const-string v2, ".rm"

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_7

    .line 161
    .line 162
    const-string v2, ".rmvb"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_7

    .line 169
    .line 170
    const-string v2, ".flv"

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_7

    .line 177
    .line 178
    const-string v2, ".webp"

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_7

    .line 185
    .line 186
    const-string v2, ".webm"

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_6

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_6
    const/4 v5, 0x4

    .line 196
    goto :goto_3

    .line 197
    :cond_7
    :goto_1
    move v5, v1

    .line 198
    goto :goto_3

    .line 199
    :cond_8
    :goto_2
    move v5, v4

    .line 200
    :cond_9
    :goto_3
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->icon:Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eq v2, v1, :cond_b

    .line 207
    .line 208
    if-eq v2, v4, :cond_a

    .line 209
    .line 210
    const v2, 0x7f080127

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    const v2, 0x7f080159

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_b
    const v2, 0x7f080112

    .line 219
    .line 220
    .line 221
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->name:Landroid/widget/TextView;

    .line 225
    .line 226
    iget-object v2, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v2, Lus/shandian/giga/get/Mission;

    .line 229
    .line 230
    iget-object v2, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 231
    .line 232
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 240
    .line 241
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    const v6, 0x7f060091

    .line 248
    .line 249
    .line 250
    if-eqz v3, :cond_e

    .line 251
    .line 252
    if-eq v3, v1, :cond_d

    .line 253
    .line 254
    if-eq v3, v4, :cond_c

    .line 255
    .line 256
    move v3, v6

    .line 257
    goto :goto_5

    .line 258
    :cond_c
    const v3, 0x7f060355

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_d
    const v3, 0x7f06001e

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_e
    const v3, 0x7f060362

    .line 267
    .line 268
    .line 269
    :goto_5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    invoke-static {v5}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_11

    .line 280
    .line 281
    if-eq v5, v1, :cond_10

    .line 282
    .line 283
    if-eq v5, v4, :cond_f

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_f
    const v6, 0x7f060354

    .line 287
    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_10
    const v6, 0x7f06001d

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_11
    const v6, 0x7f060361

    .line 295
    .line 296
    .line 297
    :goto_6
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    iput v2, v0, Lus/shandian/giga/ui/common/ProgressDrawable;->mBackgroundColor:I

    .line 302
    .line 303
    iput v1, v0, Lus/shandian/giga/ui/common/ProgressDrawable;->mForegroundColor:I

    .line 304
    .line 305
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 306
    .line 307
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Lus/shandian/giga/get/Mission;

    .line 310
    .line 311
    instance-of v0, v0, Lus/shandian/giga/get/DownloadMission;

    .line 312
    .line 313
    if-eqz v0, :cond_14

    .line 314
    .line 315
    iget-object p2, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast p2, Lus/shandian/giga/get/Mission;

    .line 318
    .line 319
    check-cast p2, Lus/shandian/giga/get/DownloadMission;

    .line 320
    .line 321
    invoke-virtual {p2}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    .line 322
    .line 323
    .line 324
    move-result-wide v0

    .line 325
    invoke-static {v0, v1}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iget-boolean v1, p2, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 330
    .line 331
    if-eqz v1, :cond_12

    .line 332
    .line 333
    invoke-virtual {p2}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_12

    .line 338
    .line 339
    const-string v1, " --.- kB/s"

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    :cond_12
    iget-object v1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->pause:Landroid/view/MenuItem;

    .line 351
    .line 352
    iget-boolean p2, p2, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 353
    .line 354
    if-eqz p2, :cond_13

    .line 355
    .line 356
    const p2, 0x7f1304c9

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_13
    const p2, 0x7f1303ab

    .line 361
    .line 362
    .line 363
    :goto_7
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 367
    .line 368
    .line 369
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    iget-object p0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->date:Landroid/widget/TextView;

    .line 375
    .line 376
    const-string p1, ""

    .line 377
    .line 378
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :cond_14
    iget-object p0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 383
    .line 384
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 386
    .line 387
    .line 388
    iget-object p0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    .line 389
    .line 390
    const-string v0, "100%"

    .line 391
    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    .line 394
    .line 395
    iget-object p0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 396
    .line 397
    const/high16 v0, 0x3f800000    # 1.0f

    .line 398
    .line 399
    iput v0, p0, Lus/shandian/giga/ui/common/ProgressDrawable;->mProgress:F

    .line 400
    .line 401
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 402
    .line 403
    .line 404
    iget-object p0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 405
    .line 406
    iget-object v0, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v0, Lus/shandian/giga/get/Mission;

    .line 409
    .line 410
    iget-wide v0, v0, Lus/shandian/giga/get/Mission;->length:J

    .line 411
    .line 412
    invoke-static {v0, v1}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    .line 418
    .line 419
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-static {v4, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    new-instance v0, Ljava/util/Date;

    .line 428
    .line 429
    iget-object p2, p2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast p2, Lus/shandian/giga/get/Mission;

    .line 432
    .line 433
    iget-wide v1, p2, Lus/shandian/giga/get/Mission;->timestamp:J

    .line 434
    .line 435
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 436
    .line 437
    .line 438
    iget-object p1, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->date:Landroid/widget/TextView;

    .line 439
    .line 440
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    new-instance p2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 11
    .line 12
    iget v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p2, p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :cond_0
    new-instance p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    .line 23
    .line 24
    const p2, 0x7f0d00a0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 35
    .line 36
    const p2, 0x7f0a01f9

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;->header:Landroid/widget/TextView;

    .line 46
    .line 47
    return-object p0
.end method

.method public final onResume()V
    .locals 5

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    .line 2
    .line 3
    iget-boolean v1, v0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v2, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v0, v3}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/common/Deleter;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "show"

    .line 16
    .line 17
    const-wide/16 v3, 0x190

    .line 18
    .line 19
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/work/OperationKt;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, p0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;I)V

    .line 26
    .line 27
    .line 28
    const-string v1, "updater"

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/work/OperationKt;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderHeader;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 10
    .line 11
    iget-object v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 12
    .line 13
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lus/shandian/giga/get/Mission;

    .line 16
    .line 17
    instance-of v0, v0, Lus/shandian/giga/get/DownloadMission;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->popupMenu:Landroid/widget/PopupMenu;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    iput-object p0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 43
    .line 44
    const-wide/16 v0, -0x1

    .line 45
    .line 46
    iput-wide v0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 47
    .line 48
    const/4 p0, -0x1

    .line 49
    iput p0, p1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 50
    .line 51
    return-void
.end method

.method public final recoverMission(Lus/shandian/giga/get/DownloadMission;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 19
    .line 20
    iget-object v3, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 21
    .line 22
    iget-object v3, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Lus/shandian/giga/get/Mission;

    .line 25
    .line 26
    if-ne v3, p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v1, v2

    .line 30
    :goto_0
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iput-object v2, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v2, -0x1

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p1, v2, v3, v0}, Lus/shandian/giga/get/DownloadMission;->resetState(IZZ)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    .line 42
    .line 43
    const-string v2, "--.-%"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-static {v4, v5}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-boolean p0, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 72
    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    return-void
.end method

.method public final resolveShareableUri(Lus/shandian/giga/get/Mission;)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Lorg/koin/core/logger/Logger;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string p1, "org.schabi.newpipe.provider"

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    iget-object p0, p1, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public final showError(Lus/shandian/giga/get/DownloadMission;Lorg/schabi/newpipe/error/UserAction;I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ["

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p1, Lus/shandian/giga/get/DownloadMission;->recoveryInfo:[Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_0

    .line 25
    .line 26
    aget-object v4, v1, v3

    .line 27
    .line 28
    const/16 v5, 0x20

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lus/shandian/giga/get/MissionRecoveryInfo;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v1, "]"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :try_start_0
    iget-object v1, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1}, Lus/shandian/giga/util/Utility;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v1, v1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 58
    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_1
    move-object v6, v1

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    const/4 v1, 0x0

    .line 66
    goto :goto_1

    .line 67
    :goto_2
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 68
    .line 69
    sget-object v1, Lorg/schabi/newpipe/error/ErrorInfo;->Companion:Lorg/schabi/newpipe/error/ErrorInfo$Companion;

    .line 70
    .line 71
    iget-object p1, p1, Lus/shandian/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/ResultKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    filled-new-array {p1}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    move-object v4, p2

    .line 92
    move v7, p3

    .line 93
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>([Ljava/lang/String;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {p0, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V
    .locals 29

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-eqz v0, :cond_22

    .line 4
    .line 5
    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 6
    .line 7
    if-eqz v1, :cond_22

    .line 8
    .line 9
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lus/shandian/giga/get/Mission;

    .line 12
    .line 13
    instance-of v2, v1, Lus/shandian/giga/get/FinishedMission;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_11

    .line 18
    .line 19
    :cond_0
    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    .line 20
    .line 21
    iget-wide v2, v1, Lus/shandian/giga/get/DownloadMission;->done:J

    .line 22
    .line 23
    long-to-double v2, v2

    .line 24
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->getLength()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    iget v8, v1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 33
    .line 34
    const/4 v9, -0x1

    .line 35
    const/4 v10, 0x1

    .line 36
    const/4 v11, 0x0

    .line 37
    if-eq v8, v9, :cond_1

    .line 38
    .line 39
    move v8, v10

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v8, v11

    .line 42
    :goto_0
    iget-object v12, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 43
    .line 44
    iget-object v13, v1, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 45
    .line 46
    array-length v14, v13

    .line 47
    if-lez v14, :cond_2

    .line 48
    .line 49
    aget-object v13, v13, v11

    .line 50
    .line 51
    instance-of v14, v13, Lus/shandian/giga/get/DownloadMissionRecover;

    .line 52
    .line 53
    if-eqz v14, :cond_2

    .line 54
    .line 55
    invoke-virtual {v13}, Ljava/lang/Thread;->isAlive()Z

    .line 56
    .line 57
    .line 58
    move-result v13

    .line 59
    if-eqz v13, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    if-nez v8, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isInitialized()Z

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    if-eqz v13, :cond_3

    .line 69
    .line 70
    iget-boolean v13, v1, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 71
    .line 72
    if-eqz v13, :cond_4

    .line 73
    .line 74
    :cond_3
    :goto_1
    move v13, v10

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move v13, v11

    .line 77
    :goto_2
    invoke-virtual {v12, v13}, Lus/shandian/giga/ui/common/ProgressDrawable;->setMarquee(Z)V

    .line 78
    .line 79
    .line 80
    iget-boolean v12, v1, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 81
    .line 82
    if-eqz v12, :cond_5

    .line 83
    .line 84
    iget-object v12, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 85
    .line 86
    const/4 v13, 0x0

    .line 87
    iput v13, v12, Lus/shandian/giga/ui/common/ProgressDrawable;->mProgress:F

    .line 88
    .line 89
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 90
    .line 91
    .line 92
    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    long-to-double v12, v4

    .line 96
    div-double v12, v2, v12

    .line 97
    .line 98
    :goto_3
    if-eqz v8, :cond_8

    .line 99
    .line 100
    iget-object v8, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 101
    .line 102
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-nez v14, :cond_6

    .line 107
    .line 108
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    if-eqz v14, :cond_7

    .line 113
    .line 114
    :cond_6
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 115
    .line 116
    :cond_7
    double-to-float v12, v12

    .line 117
    iput v12, v8, Lus/shandian/giga/ui/common/ProgressDrawable;->mProgress:F

    .line 118
    .line 119
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 120
    .line 121
    .line 122
    iget-object v8, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    .line 123
    .line 124
    const v12, 0x7f130300

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-nez v8, :cond_a

    .line 136
    .line 137
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_9

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_9
    move v8, v11

    .line 145
    goto :goto_5

    .line 146
    :cond_a
    :goto_4
    move v8, v10

    .line 147
    :goto_5
    iget-object v14, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->status:Landroid/widget/TextView;

    .line 148
    .line 149
    if-eqz v8, :cond_b

    .line 150
    .line 151
    const-string v8, "--.-%"

    .line 152
    .line 153
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_b
    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    .line 158
    .line 159
    mul-double/2addr v15, v12

    .line 160
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    new-array v15, v10, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object v8, v15, v11

    .line 167
    .line 168
    const-string v8, "%.2f%%"

    .line 169
    .line 170
    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    iget-object v8, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->progress:Lus/shandian/giga/ui/common/ProgressDrawable;

    .line 178
    .line 179
    double-to-float v12, v12

    .line 180
    iput v12, v8, Lus/shandian/giga/ui/common/ProgressDrawable;->mProgress:F

    .line 181
    .line 182
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 183
    .line 184
    .line 185
    :goto_6
    invoke-static {v4, v5}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    const-string v12, "  "

    .line 190
    .line 191
    invoke-virtual {v8, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsFailed()Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    if-nez v13, :cond_21

    .line 200
    .line 201
    iget v13, v1, Lus/shandian/giga/get/DownloadMission;->errCode:I

    .line 202
    .line 203
    const/16 v14, 0x3f1

    .line 204
    .line 205
    if-ne v13, v14, :cond_c

    .line 206
    .line 207
    goto/16 :goto_10

    .line 208
    .line 209
    :cond_c
    iget-boolean v13, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 210
    .line 211
    if-nez v13, :cond_e

    .line 212
    .line 213
    iget-boolean v13, v1, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 214
    .line 215
    if-eqz v13, :cond_d

    .line 216
    .line 217
    const v13, 0x7f130407

    .line 218
    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_d
    const v13, 0x7f1303af

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_e
    invoke-virtual {v1}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    if-eqz v13, :cond_f

    .line 230
    .line 231
    const v13, 0x7f1303e9

    .line 232
    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_f
    iget-object v13, v1, Lus/shandian/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 236
    .line 237
    array-length v14, v13

    .line 238
    if-lez v14, :cond_10

    .line 239
    .line 240
    aget-object v13, v13, v11

    .line 241
    .line 242
    instance-of v14, v13, Lus/shandian/giga/get/DownloadMissionRecover;

    .line 243
    .line 244
    if-eqz v14, :cond_10

    .line 245
    .line 246
    invoke-virtual {v13}, Ljava/lang/Thread;->isAlive()Z

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    if-eqz v13, :cond_10

    .line 251
    .line 252
    const v13, 0x7f130414

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_10
    move v13, v11

    .line 257
    :goto_7
    if-eqz v13, :cond_11

    .line 258
    .line 259
    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 260
    .line 261
    const-string v2, "("

    .line 262
    .line 263
    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    move-object/from16 v3, p0

    .line 268
    .line 269
    iget-object v3, v3, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 270
    .line 271
    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    const-string v3, ")"

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    const-wide/16 v1, -0x1

    .line 289
    .line 290
    iput-wide v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 291
    .line 292
    iput v9, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 293
    .line 294
    return-void

    .line 295
    :cond_11
    iget-wide v13, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 296
    .line 297
    const-wide/16 v15, 0x0

    .line 298
    .line 299
    cmp-long v9, v13, v15

    .line 300
    .line 301
    if-gez v9, :cond_12

    .line 302
    .line 303
    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 304
    .line 305
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    iput-wide v6, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 309
    .line 310
    iput-wide v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    .line 311
    .line 312
    return-void

    .line 313
    :cond_12
    sub-long v13, v6, v13

    .line 314
    .line 315
    iget-wide v10, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    .line 316
    .line 317
    sub-double v18, v2, v10

    .line 318
    .line 319
    cmpl-double v10, v10, v2

    .line 320
    .line 321
    if-lez v10, :cond_13

    .line 322
    .line 323
    iput-wide v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    .line 324
    .line 325
    iget-object v0, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 326
    .line 327
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :cond_13
    const-wide/16 v10, 0x0

    .line 332
    .line 333
    cmpl-double v10, v18, v10

    .line 334
    .line 335
    if-lez v10, :cond_22

    .line 336
    .line 337
    cmp-long v10, v13, v15

    .line 338
    .line 339
    if-lez v10, :cond_22

    .line 340
    .line 341
    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    mul-double v18, v18, v10

    .line 347
    .line 348
    long-to-double v10, v13

    .line 349
    div-double v10, v18, v10

    .line 350
    .line 351
    double-to-float v10, v10

    .line 352
    iget v11, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 353
    .line 354
    if-gez v11, :cond_14

    .line 355
    .line 356
    iget-object v11, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    .line 357
    .line 358
    invoke-static {v11, v10}, Ljava/util/Arrays;->fill([FF)V

    .line 359
    .line 360
    .line 361
    const/4 v11, 0x0

    .line 362
    iput v11, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 363
    .line 364
    move v13, v10

    .line 365
    goto :goto_9

    .line 366
    :cond_14
    move v13, v10

    .line 367
    const/4 v11, 0x0

    .line 368
    :goto_8
    iget-object v14, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    .line 369
    .line 370
    array-length v9, v14

    .line 371
    if-ge v11, v9, :cond_15

    .line 372
    .line 373
    aget v9, v14, v11

    .line 374
    .line 375
    add-float/2addr v13, v9

    .line 376
    add-int/lit8 v11, v11, 0x1

    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_15
    array-length v9, v14

    .line 380
    int-to-float v9, v9

    .line 381
    const/high16 v11, 0x3f800000    # 1.0f

    .line 382
    .line 383
    add-float/2addr v9, v11

    .line 384
    div-float/2addr v13, v9

    .line 385
    :goto_9
    float-to-double v13, v13

    .line 386
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    .line 391
    .line 392
    cmpg-double v9, v13, v18

    .line 393
    .line 394
    if-gez v9, :cond_16

    .line 395
    .line 396
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    move-object/from16 p0, v9

    .line 401
    .line 402
    move-wide/from16 v20, v15

    .line 403
    .line 404
    const/4 v15, 0x1

    .line 405
    new-array v9, v15, [Ljava/lang/Object;

    .line 406
    .line 407
    const/16 v17, 0x0

    .line 408
    .line 409
    aput-object p0, v9, v17

    .line 410
    .line 411
    const-string v15, "%.2f B/s"

    .line 412
    .line 413
    invoke-static {v11, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    :goto_a
    move/from16 v16, v10

    .line 418
    .line 419
    move-object v10, v9

    .line 420
    goto :goto_b

    .line 421
    :cond_16
    move-wide/from16 v20, v15

    .line 422
    .line 423
    const/16 v17, 0x0

    .line 424
    .line 425
    const-wide/high16 v15, 0x4130000000000000L    # 1048576.0

    .line 426
    .line 427
    cmpg-double v9, v13, v15

    .line 428
    .line 429
    if-gez v9, :cond_17

    .line 430
    .line 431
    div-double v15, v13, v18

    .line 432
    .line 433
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 434
    .line 435
    .line 436
    move-result-object v9

    .line 437
    move-object/from16 p0, v9

    .line 438
    .line 439
    const/4 v15, 0x1

    .line 440
    new-array v9, v15, [Ljava/lang/Object;

    .line 441
    .line 442
    aput-object p0, v9, v17

    .line 443
    .line 444
    const-string v15, "%.2f kB/s"

    .line 445
    .line 446
    invoke-static {v11, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    goto :goto_a

    .line 451
    :cond_17
    const-wide/high16 v15, 0x41d0000000000000L    # 1.073741824E9

    .line 452
    .line 453
    cmpg-double v9, v13, v15

    .line 454
    .line 455
    if-gez v9, :cond_18

    .line 456
    .line 457
    div-double v15, v13, v18

    .line 458
    .line 459
    div-double v15, v15, v18

    .line 460
    .line 461
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    move-object/from16 p0, v9

    .line 466
    .line 467
    const/4 v15, 0x1

    .line 468
    new-array v9, v15, [Ljava/lang/Object;

    .line 469
    .line 470
    aput-object p0, v9, v17

    .line 471
    .line 472
    const-string v15, "%.2f MB/s"

    .line 473
    .line 474
    invoke-static {v11, v15, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    goto :goto_a

    .line 479
    :cond_18
    div-double v15, v13, v18

    .line 480
    .line 481
    div-double v15, v15, v18

    .line 482
    .line 483
    div-double v15, v15, v18

    .line 484
    .line 485
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 486
    .line 487
    .line 488
    move-result-object v15

    .line 489
    move/from16 v16, v10

    .line 490
    .line 491
    const/4 v9, 0x1

    .line 492
    new-array v10, v9, [Ljava/lang/Object;

    .line 493
    .line 494
    aput-object v15, v10, v17

    .line 495
    .line 496
    const-string v15, "%.2f GB/s"

    .line 497
    .line 498
    invoke-static {v11, v15, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    :goto_b
    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->unknownLength:Z

    .line 503
    .line 504
    const-string v11, ""

    .line 505
    .line 506
    if-eqz v1, :cond_19

    .line 507
    .line 508
    move-object/from16 v18, v10

    .line 509
    .line 510
    goto/16 :goto_f

    .line 511
    .line 512
    :cond_19
    long-to-double v4, v4

    .line 513
    sub-double/2addr v4, v2

    .line 514
    div-double/2addr v4, v13

    .line 515
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 516
    .line 517
    .line 518
    move-result-wide v4

    .line 519
    double-to-long v4, v4

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    double-to-long v13, v2

    .line 526
    invoke-static {v13, v14}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v13

    .line 530
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v13, "/"

    .line 534
    .line 535
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-wide/16 v13, 0xe10

    .line 539
    .line 540
    div-long v18, v4, v13

    .line 541
    .line 542
    mul-long v22, v13, v18

    .line 543
    .line 544
    sub-long v22, v4, v22

    .line 545
    .line 546
    cmp-long v15, v22, v20

    .line 547
    .line 548
    const/16 v22, 0x3f

    .line 549
    .line 550
    const-wide/16 v23, 0x1

    .line 551
    .line 552
    if-nez v15, :cond_1a

    .line 553
    .line 554
    goto :goto_c

    .line 555
    :cond_1a
    xor-long v25, v4, v13

    .line 556
    .line 557
    shr-long v25, v25, v22

    .line 558
    .line 559
    or-long v25, v25, v23

    .line 560
    .line 561
    cmp-long v15, v25, v20

    .line 562
    .line 563
    if-gez v15, :cond_1b

    .line 564
    .line 565
    sub-long v18, v18, v23

    .line 566
    .line 567
    :cond_1b
    :goto_c
    move-wide/from16 v25, v13

    .line 568
    .line 569
    move-wide/from16 v13, v18

    .line 570
    .line 571
    long-to-int v13, v13

    .line 572
    int-to-long v14, v13

    .line 573
    mul-long v14, v14, v25

    .line 574
    .line 575
    sub-long v14, v4, v14

    .line 576
    .line 577
    const-wide/16 v18, 0x3c

    .line 578
    .line 579
    div-long v25, v14, v18

    .line 580
    .line 581
    mul-long v27, v18, v25

    .line 582
    .line 583
    sub-long v27, v14, v27

    .line 584
    .line 585
    cmp-long v27, v27, v20

    .line 586
    .line 587
    if-nez v27, :cond_1c

    .line 588
    .line 589
    goto :goto_d

    .line 590
    :cond_1c
    xor-long v14, v14, v18

    .line 591
    .line 592
    shr-long v14, v14, v22

    .line 593
    .line 594
    or-long v14, v14, v23

    .line 595
    .line 596
    cmp-long v14, v14, v20

    .line 597
    .line 598
    if-gez v14, :cond_1d

    .line 599
    .line 600
    sub-long v25, v25, v23

    .line 601
    .line 602
    :cond_1d
    :goto_d
    move-wide/from16 v14, v25

    .line 603
    .line 604
    long-to-int v14, v14

    .line 605
    mul-int/lit16 v15, v13, 0xe10

    .line 606
    .line 607
    move-object/from16 v18, v10

    .line 608
    .line 609
    int-to-long v9, v15

    .line 610
    sub-long/2addr v4, v9

    .line 611
    mul-int/lit8 v9, v14, 0x3c

    .line 612
    .line 613
    int-to-long v9, v9

    .line 614
    sub-long/2addr v4, v9

    .line 615
    long-to-int v4, v4

    .line 616
    const/4 v15, 0x1

    .line 617
    if-ge v13, v15, :cond_1e

    .line 618
    .line 619
    if-ge v14, v15, :cond_1e

    .line 620
    .line 621
    const-string v5, "00:"

    .line 622
    .line 623
    goto :goto_e

    .line 624
    :cond_1e
    const-string v5, ":"

    .line 625
    .line 626
    if-lez v13, :cond_1f

    .line 627
    .line 628
    new-instance v9, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    invoke-static {v13}, Lus/shandian/giga/util/Utility;->pad(I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v10

    .line 637
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v11

    .line 647
    :cond_1f
    if-lez v14, :cond_20

    .line 648
    .line 649
    invoke-static {v11}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    move-result-object v9

    .line 653
    invoke-static {v14}, Lus/shandian/giga/util/Utility;->pad(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v10

    .line 657
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    goto :goto_e

    .line 668
    :cond_20
    move-object v5, v11

    .line 669
    :goto_e
    invoke-static {v5}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    invoke-static {v4}, Lus/shandian/giga/util/Utility;->pad(I)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v4

    .line 677
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v11

    .line 694
    :goto_f
    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 695
    .line 696
    invoke-virtual {v8, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    move-object/from16 v9, v18

    .line 701
    .line 702
    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    .line 708
    .line 709
    iput-wide v6, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 710
    .line 711
    iput-wide v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastDone:D

    .line 712
    .line 713
    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeed:[F

    .line 714
    .line 715
    iget v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 716
    .line 717
    add-int/lit8 v3, v2, 0x1

    .line 718
    .line 719
    iput v3, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 720
    .line 721
    aput v16, v1, v2

    .line 722
    .line 723
    array-length v1, v1

    .line 724
    if-lt v3, v1, :cond_22

    .line 725
    .line 726
    const/4 v11, 0x0

    .line 727
    iput v11, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 728
    .line 729
    return-void

    .line 730
    :cond_21
    :goto_10
    iget-object v0, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->size:Landroid/widget/TextView;

    .line 731
    .line 732
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    .line 734
    .line 735
    :cond_22
    :goto_11
    return-void
.end method
