.class public Lus/shandian/giga/service/DownloadManagerService;
.super Landroid/app/Service;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public downloadDoneCount:I

.field public downloadDoneList:Ljava/lang/StringBuilder;

.field public downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

.field public downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

.field public downloadFailedNotificationID:I

.field public icDownloadDone:Landroid/graphics/Bitmap;

.field public icDownloadFailed:Landroid/graphics/Bitmap;

.field public icLauncher:Landroid/graphics/Bitmap;

.field public mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mDownloadNotificationEnable:Z

.field public final mEchoObservers:Ljava/util/ArrayList;

.field public final mFailedDownloads:Landroidx/collection/SparseArrayCompat;

.field public mForeground:Z

.field public mHandler:Landroid/os/Handler;

.field public mLock:Lcoil3/ComponentRegistry$Builder;

.field public mLockAcquired:Z

.field public mManager:Lus/shandian/giga/service/DownloadManager;

.field public mNetworkStateListenerL:Lus/shandian/giga/service/DownloadManagerService$1;

.field public mNotification:Landroid/app/Notification;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mOpenDownloadList:Landroid/app/PendingIntent;

.field public final mPrefChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

.field public mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 12
    .line 13
    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 14
    .line 15
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 16
    .line 17
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Lus/shandian/giga/service/DownloadManagerService$1;

    .line 27
    .line 28
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 37
    .line 38
    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    .line 39
    .line 40
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mLock:Lcoil3/ComponentRegistry$Builder;

    .line 41
    .line 42
    const/16 v0, 0x3ea

    .line 43
    .line 44
    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 45
    .line 46
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    .line 48
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 49
    .line 50
    const/4 v1, 0x5

    .line 51
    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroidx/collection/SparseArrayCompat;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final handleConnectivityState(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "DownloadManagerService"

    .line 12
    .line 13
    const-string v3, "Active network [connectivity is unavailable]"

    .line 14
    .line 15
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move v5, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    move v5, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v5, 0x2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v5, v2

    .line 39
    :goto_0
    const-string v6, "DownloadManagerService"

    .line 40
    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v8, "Active network [connected="

    .line 44
    .line 45
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " metered="

    .line 52
    .line 53
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, "] "

    .line 60
    .line 61
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 79
    .line 80
    if-nez p0, :cond_3

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_3
    iget v0, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:I

    .line 84
    .line 85
    if-ne v5, v0, :cond_4

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_4
    iput v5, p0, Lus/shandian/giga/service/DownloadManager;->mLastNetworkStatus:I

    .line 89
    .line 90
    if-ne v5, v2, :cond_5

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_5
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mSelfMissionsControl:Z

    .line 94
    .line 95
    if-eqz v0, :cond_c

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    iget-boolean p1, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    .line 101
    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    if-ne v5, v1, :cond_7

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    const/4 v2, 0x0

    .line 108
    :goto_2
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_b

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    .line 126
    .line 127
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_8

    .line 132
    .line 133
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->isPsRunning()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_9

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_9
    iget-boolean v1, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 141
    .line 142
    if-eqz v1, :cond_a

    .line 143
    .line 144
    if-eqz v2, :cond_a

    .line 145
    .line 146
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->pause()V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    goto :goto_4

    .line 152
    :cond_a
    iget-boolean v1, v0, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 153
    .line 154
    if-nez v1, :cond_8

    .line 155
    .line 156
    if-nez v2, :cond_8

    .line 157
    .line 158
    iget-boolean v1, v0, Lus/shandian/giga/get/DownloadMission;->enqueued:Z

    .line 159
    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    invoke-virtual {v0}, Lus/shandian/giga/get/DownloadMission;->start()V

    .line 163
    .line 164
    .line 165
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    .line 166
    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    :cond_b
    monitor-exit p0

    .line 170
    return-void

    .line 171
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    throw p1

    .line 173
    :cond_c
    :goto_5
    return-void
.end method

.method public final handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 1
    const v0, 0x7f130121

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const v0, 0x7f130122

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    move p1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :goto_0
    iput p1, p2, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 40
    .line 41
    iput v1, p1, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    .line 42
    .line 43
    :goto_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_1
    iget-object p0, v0, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lus/shandian/giga/get/DownloadMission;

    .line 63
    .line 64
    iget p2, v0, Lus/shandian/giga/service/DownloadManager;->mPrefMaxRetry:I

    .line 65
    .line 66
    iput p2, p1, Lus/shandian/giga/get/DownloadMission;->maxRetry:I

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    monitor-exit v0

    .line 72
    goto :goto_4

    .line 73
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_2
    const v0, 0x7f130120

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 89
    .line 90
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    const v0, 0x7f130123

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManager;->mPrefQueueLimit:Z

    .line 118
    .line 119
    return-void

    .line 120
    :cond_4
    const p1, 0x7f13011c

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 134
    .line 135
    const-string/jumbo v0, "video"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1, v0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    iput-object p0, p2, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    const p1, 0x7f130116

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_6

    .line 157
    .line 158
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 159
    .line 160
    const-string v0, "audio"

    .line 161
    .line 162
    invoke-virtual {p0, p1, v0}, Lus/shandian/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    iput-object p0, p2, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 167
    .line 168
    :cond_6
    :goto_4
    return-void
.end method

.method public final loadMainStorage(ILjava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;
    .locals 5

    .line 1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sget-char v3, Ljava/io/File;->separatorChar:C

    .line 27
    .line 28
    const-string v4, "DownloadManagerService"

    .line 29
    .line 30
    if-ne v1, v3, :cond_1

    .line 31
    .line 32
    const-string v1, "Old save path style present: "

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, ""

    .line 52
    .line 53
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    .line 59
    .line 60
    move-object v0, v1

    .line 61
    :cond_1
    :try_start_0
    new-instance p1, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {p1, p0, v1, p2}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    const-string v1, "Failed to load the storage of "

    .line 73
    .line 74
    const-string v3, " from "

    .line 75
    .line 76
    invoke-static {v1, p2, v3, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    const p1, 0x7f130362

    .line 84
    .line 85
    .line 86
    const/4 p2, 0x1

    .line 87
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    return-object v2
.end method

.method public final manageLock(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLock:Lcoil3/ComponentRegistry$Builder;

    .line 7
    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "acquireWifiAndCpu() called"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Landroid/net/wifi/WifiManager$WifiLock;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, v0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Landroid/os/PowerManager;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    invoke-virtual {v2, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v2, v0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 58
    .line 59
    invoke-virtual {v2, v3, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 64
    .line 65
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    const-string v2, "releaseWifiAndCpu() called"

    .line 89
    .line 90
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 110
    .line 111
    .line 112
    :cond_4
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, Landroid/net/wifi/WifiManager$WifiLock;

    .line 115
    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v1, Landroid/net/wifi/WifiManager$WifiLock;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 129
    .line 130
    .line 131
    :cond_5
    const/4 v1, 0x0

    .line 132
    iput-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object v1, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 135
    .line 136
    :cond_6
    :goto_0
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mLockAcquired:Z

    .line 137
    .line 138
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    new-instance v0, Lus/shandian/giga/service/DownloadManager;

    .line 36
    .line 37
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    const v3, 0x7f13011c

    .line 40
    .line 41
    .line 42
    const-string/jumbo v4, "video"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3, v4}, Lus/shandian/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const v4, 0x7f130116

    .line 50
    .line 51
    .line 52
    const-string v5, "audio"

    .line 53
    .line 54
    invoke-virtual {p0, v4, v5}, Lus/shandian/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-direct {v0, p0, v2, v3, v4}, Lus/shandian/giga/service/DownloadManager;-><init>(Lus/shandian/giga/service/DownloadManagerService;Landroid/os/Handler;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 62
    .line 63
    new-instance v0, Landroid/content/Intent;

    .line 64
    .line 65
    const-class v2, Lorg/schabi/newpipe/download/DownloadActivity;

    .line 66
    .line 67
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "android.intent.action.MAIN"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/high16 v2, 0x8000000

    .line 77
    .line 78
    invoke-static {p0, v1, v0, v2}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/high16 v2, 0x7f100000

    .line 89
    .line 90
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    .line 95
    .line 96
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 97
    .line 98
    const v2, 0x7f130385

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-direct {v0, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 109
    .line 110
    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 111
    .line 112
    const v2, 0x1080081

    .line 113
    .line 114
    .line 115
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 116
    .line 117
    iput v2, v3, Landroid/app/Notification;->icon:I

    .line 118
    .line 119
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 122
    .line 123
    .line 124
    const v2, 0x7f130304

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 136
    .line 137
    const v2, 0x7f130305

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotification:Landroid/app/Notification;

    .line 155
    .line 156
    const-class v0, Landroid/app/NotificationManager;

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/app/NotificationManager;

    .line 163
    .line 164
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 165
    .line 166
    const-class v0, Landroid/net/ConnectivityManager;

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 173
    .line 174
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 175
    .line 176
    new-instance v0, Lus/shandian/giga/service/DownloadManagerService$1;

    .line 177
    .line 178
    invoke-direct {v0, p0, v1}, Lus/shandian/giga/service/DownloadManagerService$1;-><init>(Ljava/lang/Object;I)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Lus/shandian/giga/service/DownloadManagerService$1;

    .line 182
    .line 183
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 184
    .line 185
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 186
    .line 187
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Lus/shandian/giga/service/DownloadManagerService$1;

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 200
    .line 201
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 202
    .line 203
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 207
    .line 208
    const v1, 0x7f130120

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 219
    .line 220
    const v1, 0x7f130121

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 231
    .line 232
    const v1, 0x7f130123

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    new-instance v0, Lcoil3/ComponentRegistry$Builder;

    .line 243
    .line 244
    invoke-direct {v0, p0}, Lcoil3/ComponentRegistry$Builder;-><init>(Lus/shandian/giga/service/DownloadManagerService;)V

    .line 245
    .line 246
    .line 247
    iput-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mLock:Lcoil3/ComponentRegistry$Builder;

    .line 248
    .line 249
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/core/app/NavUtils;->stopForeground(Landroid/app/Service;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 17
    .line 18
    iput-object v1, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 19
    .line 20
    const/16 v3, 0x3e9

    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManagerService;->manageLock(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mNetworkStateListenerL:Lus/shandian/giga/service/DownloadManagerService$1;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    iget-object v2, p0, Lus/shandian/giga/service/DownloadManagerService;->mPrefChangeListener:Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda6;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    .line 67
    .line 68
    :cond_3
    iput-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lus/shandian/giga/service/DownloadManager;->pauseAllMissions(Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    const/4 p2, 0x2

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Got intent: "

    .line 8
    .line 9
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-string v0, "DownloadManagerService"

    .line 20
    .line 21
    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    if-eqz p3, :cond_5

    .line 29
    .line 30
    const-string v0, "android.intent.action.RUN"

    .line 31
    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance p3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 41
    .line 42
    const/16 v0, 0x19

    .line 43
    .line 44
    invoke-direct {p3, p0, p1, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    const-string p1, "org.schabi.newpipe.reset_download_finished"

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const-string v0, "org.schabi.newpipe.open_downloads_finished"

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 73
    .line 74
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    new-instance p1, Landroid/content/Intent;

    .line 86
    .line 87
    const-class p3, Lorg/schabi/newpipe/download/DownloadActivity;

    .line 88
    .line 89
    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .line 91
    .line 92
    const-string p3, "android.intent.action.MAIN"

    .line 93
    .line 94
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const/high16 p3, 0x10000000

    .line 99
    .line 100
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_0
    return p2

    .line 108
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 109
    return p0
.end method

.method public final updateForegroundState(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x3e8

    .line 9
    .line 10
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotification:Landroid/app/Notification;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p0}, Landroidx/core/app/NavUtils;->stopForeground(Landroid/app/Service;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lus/shandian/giga/service/DownloadManagerService;->manageLock(Z)V

    .line 20
    .line 21
    .line 22
    iput-boolean p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mForeground:Z

    .line 23
    .line 24
    return-void
.end method
