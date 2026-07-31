.class public final synthetic Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic f$2:Lcom/fsck/k9/mailstore/LocalFolder;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

.field public final synthetic f$6:Lcom/fsck/k9/helper/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;ZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$2:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$4:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$5:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$6:Lcom/fsck/k9/helper/MutableBoolean;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-boolean v5, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$4:Z

    .line 6
    .line 7
    iget-object v6, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$5:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 8
    .line 9
    iget-object v7, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$6:Lcom/fsck/k9/helper/MutableBoolean;

    .line 10
    .line 11
    iget-object v8, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$2:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 12
    .line 13
    iget-object v2, v8, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v3, v8, Lcom/fsck/k9/mailstore/LocalFolder;->lastChecked:J

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v9, 0x2

    .line 22
    new-array v4, v9, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    aput-object v2, v4, v10

    .line 26
    .line 27
    const/4 v11, 0x1

    .line 28
    aput-object v3, v4, v11

    .line 29
    .line 30
    const-string v2, "Folder %s was last synced @ %tc"

    .line 31
    .line 32
    invoke-static {v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 36
    .line 37
    iget-boolean v0, v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda21;->f$3:Z

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-wide v3, v8, Lcom/fsck/k9/mailstore/LocalFolder;->lastChecked:J

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    cmp-long v0, v3, v12

    .line 48
    .line 49
    if-lez v0, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAutomaticCheckIntervalMinutes()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    int-to-long v14, v0

    .line 57
    const-wide/32 v16, 0xea60

    .line 58
    .line 59
    .line 60
    mul-long v14, v14, v16

    .line 61
    .line 62
    add-long/2addr v14, v3

    .line 63
    cmp-long v0, v14, v12

    .line 64
    .line 65
    if-lez v0, :cond_1

    .line 66
    .line 67
    iget-object v0, v8, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-array v2, v9, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v0, v2, v10

    .line 76
    .line 77
    aput-object v1, v2, v11

    .line 78
    .line 79
    const-string v0, "Not syncing folder %s, previously synced @ %tc which would be too recent for the account sync interval"

    .line 80
    .line 81
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1, v2, v8}, Lcom/fsck/k9/controller/MessagingController;->showFetchingMailNotificationIfNecessary(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    :try_start_1
    iget-wide v3, v8, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v7}, Lcom/fsck/k9/controller/MessagingController;->synchronizeMailboxSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;JZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/helper/MutableBoolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->showEmptyFetchingMailNotificationIfNecessary(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    invoke-virtual {v1, v2}, Lcom/fsck/k9/controller/MessagingController;->showEmptyFetchingMailNotificationIfNecessary(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 101
    .line 102
    .line 103
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :goto_1
    iget-object v1, v8, Lcom/fsck/k9/mailstore/LocalFolder;->serverId:Ljava/lang/String;

    .line 105
    .line 106
    new-array v3, v9, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v2, v3, v10

    .line 109
    .line 110
    aput-object v1, v3, v11

    .line 111
    .line 112
    const-string v1, "Exception while processing folder %s:%s"

    .line 113
    .line 114
    invoke-static {v0, v1, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
