.class public final Lcom/fsck/k9/controller/MessagingController$8;
.super Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$latch:Ljava/lang/Object;

.field public final val$syncError:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$latch:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$syncError:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$syncError:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$latch:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public checkMailFinished()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$latch:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController$8;->updateUnreadWidget()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public loadAttachmentFailed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$syncError:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public loadAttachmentFinished()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$syncError:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 17
    .line 18
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 21
    .line 22
    new-instance v1, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/16 v2, 0x9

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$latch:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ljava/lang/Runnable;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public synchronizeMailboxFailed(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$syncError:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/helper/MutableBoolean;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/fsck/k9/helper/MutableBoolean;->value:Z

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synchronizeMailboxNewMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController$8;->updateUnreadWidget()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synchronizeMailboxRemovedMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fsck/k9/controller/MessagingController$8;->updateUnreadWidget()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateUnreadWidget()V
    .locals 4

    .line 1
    const-class v0, Lcom/fsck/k9/provider/UnreadWidgetProvider;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$latch:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;

    .line 6
    .line 7
    new-instance v2, Landroid/content/ComponentName;

    .line 8
    .line 9
    iget-object v3, v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v1, Lapp/k9mail/feature/widget/unread/UnreadWidgetUpdater;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v0, "appWidgetIds"

    .line 34
    .line 35
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController$8;->val$syncError:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lnet/thunderbird/core/logging/Logger;

    .line 46
    .line 47
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    const/16 v2, 0x13

    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const-string v2, "UnreadWidgetUpdateListener"

    .line 55
    .line 56
    invoke-interface {p0, v2, v0, v1}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
