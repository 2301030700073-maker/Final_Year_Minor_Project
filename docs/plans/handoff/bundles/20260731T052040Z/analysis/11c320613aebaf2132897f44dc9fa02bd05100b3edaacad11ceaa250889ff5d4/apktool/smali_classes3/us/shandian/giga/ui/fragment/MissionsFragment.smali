.class public Lus/shandian/giga/ui/fragment/MissionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

.field public mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

.field public mClear:Landroid/view/MenuItem;

.field public final mConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;

.field public mContext:Landroid/content/Context;

.field public mEmpty:Landroid/view/View;

.field public mForceUpdate:Z

.field public mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public mLinear:Z

.field public mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mList:Landroidx/recyclerview/widget/RecyclerView;

.field public mPause:Landroid/view/MenuItem;

.field public mPrefs:Landroid/content/SharedPreferences;

.field public mStart:Landroid/view/MenuItem;

.field public mSwitch:Landroid/view/MenuItem;

.field public final requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    .line 6
    .line 7
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    .line 8
    .line 9
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    .line 10
    .line 11
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    .line 12
    .line 13
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p0, v2}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 30
    .line 31
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/download/DownloadDialog$1;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 8
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    const p3, 0x7f0d009f

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const-string p3, "linear"

    .line 20
    .line 21
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput-boolean p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 26
    .line 27
    iget-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    new-instance p3, Landroid/content/Intent;

    .line 30
    .line 31
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    .line 34
    .line 35
    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 42
    .line 43
    .line 44
    const p2, 0x7f0a0213

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mEmpty:Landroid/view/View;

    .line 52
    .line 53
    const p2, 0x7f0a025c

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    const/4 v0, 0x2

    .line 71
    invoke-direct {p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 75
    .line 76
    new-instance p3, Lcom/xwray/groupie/GroupAdapter$2;

    .line 77
    .line 78
    invoke-direct {p3, p0, v1}, Lcom/xwray/groupie/GroupAdapter$2;-><init>(Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    iput-object p3, p2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/core/app/NotificationCompat$Style;

    .line 82
    .line 83
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 95
    .line 96
    .line 97
    return-object p1
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v0, v0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 21
    .line 22
    iget-object v0, v0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 26
    .line 27
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 35
    .line 36
    iget-object v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 37
    .line 38
    invoke-virtual {v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    .line 42
    .line 43
    iget-object v2, v0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x0

    .line 50
    if-ge v2, v1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lkotlin/Pair;

    .line 73
    .line 74
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Lus/shandian/giga/get/Mission;

    .line 79
    .line 80
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    iget-object v5, v0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 91
    .line 92
    invoke-virtual {v5, v4, v2}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iput-object v3, v0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 97
    .line 98
    :goto_1
    iput-object v3, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 99
    .line 100
    iput-object v3, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 101
    .line 102
    :cond_3
    :goto_2
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a03be

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 12
    .line 13
    xor-int/2addr p1, v1

    .line 14
    iput-boolean p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->updateList()V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    const v0, 0x7f0a00b6

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 27
    .line 28
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f13009e

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 37
    .line 38
    .line 39
    const v3, 0x7f1300b3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    invoke-direct {v3, p0, v2}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const v0, 0x7f130076

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    invoke-direct {v0, p0, v1}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/Fragment;I)V

    .line 64
    .line 65
    .line 66
    const p0, 0x7f1300ec

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :cond_1
    const v0, 0x7f0a0397

    .line 78
    .line 79
    .line 80
    if-ne p1, v0, :cond_5

    .line 81
    .line 82
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 83
    .line 84
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 85
    .line 86
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 87
    .line 88
    monitor-enter v0

    .line 89
    :try_start_0
    iget-object p0, v0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lus/shandian/giga/get/DownloadMission;

    .line 106
    .line 107
    iget-boolean v2, p1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 108
    .line 109
    if-nez v2, :cond_2

    .line 110
    .line 111
    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p1}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    monitor-exit v0

    .line 125
    return v1

    .line 126
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0

    .line 128
    :cond_5
    const v0, 0x7f0a02d6

    .line 129
    .line 130
    .line 131
    if-ne p1, v0, :cond_7

    .line 132
    .line 133
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 134
    .line 135
    iget-object p1, p1, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 136
    .line 137
    iget-object p1, p1, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Lus/shandian/giga/service/DownloadManager;->pauseAllMissions(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 143
    .line 144
    iget-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 161
    .line 162
    iget-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 163
    .line 164
    iget-object v1, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v1, Lus/shandian/giga/get/Mission;

    .line 167
    .line 168
    check-cast v1, Lus/shandian/giga/get/DownloadMission;

    .line 169
    .line 170
    iget-boolean v1, v1, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 171
    .line 172
    if-eqz v1, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    invoke-virtual {p0, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 176
    .line 177
    .line 178
    const-wide/16 v3, -0x1

    .line 179
    .line 180
    iput-wide v3, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 181
    .line 182
    const/4 v1, -0x1

    .line 183
    iput v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_7
    return v2
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    .line 10
    .line 11
    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 12
    .line 13
    iget-object v2, v2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 14
    .line 15
    iget-object v2, v2, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 21
    .line 22
    iget-object v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDeleter:Lus/shandian/giga/ui/common/Deleter;

    .line 23
    .line 24
    invoke-virtual {v2}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const-string v2, "updater"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 39
    .line 40
    iput-boolean v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    const v0, 0x7f0a03be

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    .line 9
    .line 10
    const v0, 0x7f0a00b6

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    .line 18
    .line 19
    const v0, 0x7f0a0397

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    .line 27
    .line 28
    const v0, 0x7f0a02d6

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    .line 36
    .line 37
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->setAdapterButtons()V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onResume()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    .line 17
    .line 18
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 19
    .line 20
    iget-object v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 21
    .line 22
    invoke-virtual {v2}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iput-object v3, v2, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    iput-object v3, v2, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 48
    .line 49
    const-wide/16 v4, -0x1

    .line 50
    .line 51
    iput-wide v4, v3, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastTimestamp:J

    .line 52
    .line 53
    const/4 v4, -0x1

    .line 54
    iput v4, v3, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->lastSpeedIdx:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 61
    .line 62
    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 63
    .line 64
    iget-object v0, v0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 65
    .line 66
    iget-object v0, v0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 72
    .line 73
    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 77
    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 81
    .line 82
    iput-boolean v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public final setAdapterButtons()V
    .locals 3

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 15
    .line 16
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 21
    .line 22
    iget-boolean v2, v2, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    .line 23
    .line 24
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v0, v1, Lus/shandian/giga/ui/adapter/MissionAdapter;->mClear:Landroid/view/MenuItem;

    .line 28
    .line 29
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 30
    .line 31
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    .line 32
    .line 33
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    .line 34
    .line 35
    iget-object v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iget-object v2, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v2, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 47
    :goto_1
    iput-object v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mStartButton:Landroid/view/MenuItem;

    .line 48
    .line 49
    iput-object p0, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPauseButton:Landroid/view/MenuItem;

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_2
    return-void
.end method

.method public final updateList()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 2
    .line 3
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinearManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mGridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 30
    .line 31
    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const v1, 0x7f0d009e

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const v1, 0x7f0d009d

    .line 43
    .line 44
    .line 45
    :goto_1
    iput v1, v0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mLayout:I

    .line 46
    .line 47
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    const v1, 0x7f0800e0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const v1, 0x7f08011e

    .line 67
    .line 68
    .line 69
    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    .line 73
    .line 74
    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    const v1, 0x7f1301f9

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const v1, 0x7f130249

    .line 83
    .line 84
    .line 85
    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 89
    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "linear"

    .line 95
    .line 96
    iget-boolean p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    .line 97
    .line 98
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method
