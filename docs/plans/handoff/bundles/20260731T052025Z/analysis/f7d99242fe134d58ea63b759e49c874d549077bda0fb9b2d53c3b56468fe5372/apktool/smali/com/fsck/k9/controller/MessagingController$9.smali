.class public final Lcom/fsck/k9/controller/MessagingController$9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic val$ignoreLastCheckedTime:Z

.field public final synthetic val$listener:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

.field public final synthetic val$notify:Z

.field public final synthetic val$wakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$9;->this$0:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$ignoreLastCheckedTime:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$notify:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$listener:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$wakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$9;->this$0:Lcom/fsck/k9/controller/MessagingController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    const-string v3, "Starting mail check"

    .line 6
    .line 7
    new-array v4, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v3, v4}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v3

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->preferences:Lcom/fsck/k9/Preferences;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :goto_0
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 48
    .line 49
    iget-boolean v5, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$ignoreLastCheckedTime:Z

    .line 50
    .line 51
    iget-boolean v6, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$notify:Z

    .line 52
    .line 53
    iget-object v7, p0, Lcom/fsck/k9/controller/MessagingController$9;->val$listener:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 54
    .line 55
    invoke-static {v0, v4, v5, v6, v7}, Lcom/fsck/k9/controller/MessagingController;->-$$Nest$mcheckMailForAccount(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZLapp/k9mail/legacy/message/controller/SimpleMessagingListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :goto_2
    const-string v4, "Unable to synchronize mail"

    .line 60
    .line 61
    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {v3, v4, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$1;

    .line 67
    .line 68
    invoke-direct {v2, v1, p0}, Lcom/fsck/k9/controller/MessagingController$1;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "finalize sync"

    .line 72
    .line 73
    invoke-virtual {v0, p0, v2}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
