.class public final Lus/shandian/giga/ui/common/Deleter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public items:Ljava/util/ArrayList;

.field public final mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

.field public final mContext:Landroid/content/Context;

.field public final mDownloadManager:Lus/shandian/giga/service/DownloadManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

.field public final mView:Landroid/view/View;

.field public running:Z

.field public snackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public static $r8$lambda$fRH27PItlkc7g0X38LEPA6BZ9V8(Lus/shandian/giga/ui/common/Deleter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda2;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda3;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda3;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v3, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const v1, 0x7f1301ef

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v3, ":\n"

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const v0, 0x7f130150

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_0
    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->mView:Landroid/view/View;

    .line 80
    .line 81
    const/4 v3, -0x2

    .line 82
    invoke-static {v1, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 87
    .line 88
    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;

    .line 89
    .line 90
    invoke-direct {v1, p0, v2}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 94
    .line 95
    const v4, 0x7f13050b

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/16 v1, -0x100

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    .line 130
    .line 131
    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    invoke-direct {v1, p0, v2}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/common/Deleter;I)V

    .line 135
    .line 136
    .line 137
    const-string p0, "commit"

    .line 138
    .line 139
    const-wide/16 v2, 0x1388

    .line 140
    .line 141
    invoke-static {v0, v1, p0, v2, v3}, Landroidx/work/OperationKt;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager$MissionIterator;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    .line 6
    .line 7
    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->mView:Landroid/view/View;

    .line 8
    .line 9
    iput-object p2, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p3, p0, Lus/shandian/giga/ui/common/Deleter;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 12
    .line 13
    iput-object p4, p0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 14
    .line 15
    iput-object p5, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 16
    .line 17
    iput-object p6, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 p2, 0x2

    .line 22
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final append(Lus/shandian/giga/get/Mission;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const-string v1, "commit"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->commit()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 12
    .line 13
    iget-object v0, v0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v1, Lkotlin/Pair;

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final commit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lkotlin/Pair;

    .line 27
    .line 28
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lus/shandian/giga/get/Mission;

    .line 33
    .line 34
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 48
    .line 49
    iget-object v3, v3, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 55
    .line 56
    invoke-virtual {v3, v2, v0}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;Z)V

    .line 57
    .line 58
    .line 59
    instance-of v0, v2, Lus/shandian/giga/get/FinishedMission;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    new-instance v0, Landroid/content/Intent;

    .line 64
    .line 65
    iget-object v2, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 66
    .line 67
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 72
    .line 73
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-ge v0, v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final pause()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    .line 3
    .line 4
    const-string v0, "next"

    .line 5
    .line 6
    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "show"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "commit"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final show()V
    .locals 4

    .line 1
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    .line 12
    .line 13
    .line 14
    iput-boolean v1, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    .line 15
    .line 16
    new-instance v0, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/common/Deleter;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "next"

    .line 22
    .line 23
    const-wide/16 v2, 0x15e

    .line 24
    .line 25
    iget-object p0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/work/OperationKt;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
