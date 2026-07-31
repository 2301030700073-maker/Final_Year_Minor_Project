.class public final Lcom/fsck/k9/backends/AndroidAlarmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onReceive$com$fsck$k9$controller$push$AlarmPermissionManagerApi31$receiver$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/fsck/k9/controller/push/AlarmPermissionManagerApi31;->listener:Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p1, Lcom/fsck/k9/controller/push/PushController$alarmPermissionListener$1;->$tmp0:Lcom/fsck/k9/controller/push/PushController;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushController;->launchUpdatePushers()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/fsck/k9/controller/push/AutoSyncManager;

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/fsck/k9/controller/push/AutoSyncManager;->listener:Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p0, p1, Lcom/fsck/k9/controller/push/PushController$autoSyncListener$1;->$tmp0:Lcom/fsck/k9/controller/push/PushController;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/controller/push/PushController;->launchUpdatePushers()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1

    .line 30
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->onReceive$com$fsck$k9$controller$push$AlarmPermissionManagerApi31$receiver$1(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object p0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lcom/fsck/k9/activity/UpgradeDatabaseActivity;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "DatabaseUpgradeService.upgradeProgress"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const-string p1, "account_uuid"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p2, p0, Lcom/fsck/k9/activity/UpgradeDatabaseActivity;->accountManager$delegate:Lkotlin/Lazy;

    .line 62
    .line 63
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 76
    .line 77
    iget-object p1, p1, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->name:Ljava/lang/String;

    .line 78
    .line 79
    const/4 p2, 0x1

    .line 80
    new-array p2, p2, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object p1, p2, v2

    .line 83
    .line 84
    const p1, 0x7f120665

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/fsck/k9/activity/UpgradeDatabaseActivity;->mUpgradeText:Lcom/google/android/material/textview/MaterialTextView;

    .line 95
    .line 96
    if-eqz p0, :cond_1

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const-string p0, "mUpgradeText"

    .line 103
    .line 104
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v1

    .line 108
    :cond_2
    const-string p0, "Missing Intent extra \'account_uuid\'"

    .line 109
    .line 110
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const-string p2, "DatabaseUpgradeService.upgradeComplete"

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    sget p1, Lcom/fsck/k9/activity/UpgradeDatabaseActivity;->$r8$clinit:I

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/fsck/k9/activity/UpgradeDatabaseActivity;->mStartIntent:Landroid/content/Intent;

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    return-void

    .line 133
    :pswitch_2
    iget-object p0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->this$0:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p0, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    .line 136
    .line 137
    sget-object p1, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 138
    .line 139
    new-instance p2, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;

    .line 140
    .line 141
    const/4 v0, 0x2

    .line 142
    invoke-direct {p2, p0, v0}, Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;-><init>(Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;I)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object p0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->this$0:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;

    .line 158
    .line 159
    invoke-virtual {p0, p2}, Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->onBroadcastReceive(Landroid/content/Intent;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :pswitch_4
    iget-object p0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->this$0:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p0, Lnet/openid/appauth/JsonUtil$Field;

    .line 166
    .line 167
    invoke-virtual {p0}, Lnet/openid/appauth/JsonUtil$Field;->onChange()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_5
    iget-object p0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager$1;->this$0:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast p0, Lcom/fsck/k9/backends/AndroidAlarmManager;

    .line 174
    .line 175
    iget-object p1, p0, Lcom/fsck/k9/backends/AndroidAlarmManager;->callback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 176
    .line 177
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 182
    .line 183
    if-nez p1, :cond_5

    .line 184
    .line 185
    const-string p0, "Alarm triggered but \'callback\' was null"

    .line 186
    .line 187
    new-array p1, v2, [Ljava/lang/Object;

    .line 188
    .line 189
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_5
    iget-object p0, p0, Lcom/fsck/k9/backends/AndroidAlarmManager;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 194
    .line 195
    new-instance p2, Lcom/fsck/k9/backends/AndroidAlarmManager$1$onReceive$1;

    .line 196
    .line 197
    invoke-direct {p2, p1, v1, v2}, Lcom/fsck/k9/backends/AndroidAlarmManager$1$onReceive$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;I)V

    .line 198
    .line 199
    .line 200
    const/4 p1, 0x3

    .line 201
    invoke-static {p0, v1, v1, p2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 202
    .line 203
    .line 204
    :goto_1
    return-void

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
