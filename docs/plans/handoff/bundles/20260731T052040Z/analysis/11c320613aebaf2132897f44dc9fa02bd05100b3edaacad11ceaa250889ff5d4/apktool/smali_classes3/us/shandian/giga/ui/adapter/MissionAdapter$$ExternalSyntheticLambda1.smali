.class public final synthetic Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/ui/adapter/MissionAdapter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;->f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;->f$0:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mPendingDownloadsItems:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;

    .line 26
    .line 27
    iget-object v3, v2, Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;->item:Lokio/PriorityQueue;

    .line 28
    .line 29
    iget-object v3, v3, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lus/shandian/giga/get/Mission;

    .line 32
    .line 33
    check-cast v3, Lus/shandian/giga/get/DownloadMission;

    .line 34
    .line 35
    iget-boolean v3, v3, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->updateProgress(Lus/shandian/giga/ui/adapter/MissionAdapter$ViewHolderItem;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v2, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    invoke-direct {v2, p0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/adapter/MissionAdapter;I)V

    .line 49
    .line 50
    .line 51
    const-string p0, "updater"

    .line 52
    .line 53
    const-wide/16 v3, 0x3e8

    .line 54
    .line 55
    invoke-static {v0, v2, p0, v3, v4}, Landroidx/work/OperationKt;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-virtual {v0, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mHidden:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lus/shandian/giga/get/Mission;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 88
    .line 89
    invoke-virtual {v3, v2, v1}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v3, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    new-instance v4, Landroid/content/Intent;

    .line 95
    .line 96
    iget-object v2, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 97
    .line 98
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 103
    .line 104
    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
