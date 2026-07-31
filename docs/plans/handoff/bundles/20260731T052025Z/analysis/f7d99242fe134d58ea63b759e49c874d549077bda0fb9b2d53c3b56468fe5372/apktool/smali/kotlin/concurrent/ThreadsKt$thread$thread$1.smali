.class public final Lkotlin/concurrent/ThreadsKt$thread$thread$1;
.super Ljava/lang/Thread;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Lcom/fsck/k9/service/DatabaseUpgradeService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->$block:Ljava/lang/Object;

    .line 5
    .line 6
    const-string p1, "DatabaseUpgradeService"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->$block:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lkotlin/concurrent/ThreadsKt$thread$thread$1;->$block:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/service/DatabaseUpgradeService;

    .line 9
    .line 10
    sget v0, Lcom/fsck/k9/service/DatabaseUpgradeService;->$r8$clinit:I

    .line 11
    .line 12
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgressEnd:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 49
    .line 50
    iget-object v4, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v4, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mAccountUuid:Ljava/lang/String;

    .line 53
    .line 54
    iget v5, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    .line 55
    .line 56
    iget v6, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgressEnd:I

    .line 57
    .line 58
    invoke-virtual {p0, v5, v4, v6}, Lcom/fsck/k9/service/DatabaseUpgradeService;->sendProgressBroadcast(ILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    const-class v4, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 62
    .line 63
    invoke-static {v4}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 68
    .line 69
    invoke-virtual {v4, v2}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v2

    .line 74
    const-string v4, "Error while upgrading database"

    .line 75
    .line 76
    new-array v5, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {v2, v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget v2, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    .line 82
    .line 83
    add-int/2addr v2, v3

    .line 84
    iput v2, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mProgress:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v3}, Lcom/fsck/k9/K9;->setDatabasesUpToDate(Z)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "DatabaseUpgradeService.upgradeComplete"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 106
    .line 107
    .line 108
    const-string v0, "DatabaseUpgradeService stopped"

    .line 109
    .line 110
    new-array v2, v1, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mWakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->release()V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/fsck/k9/service/DatabaseUpgradeService;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 127
    .line 128
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
