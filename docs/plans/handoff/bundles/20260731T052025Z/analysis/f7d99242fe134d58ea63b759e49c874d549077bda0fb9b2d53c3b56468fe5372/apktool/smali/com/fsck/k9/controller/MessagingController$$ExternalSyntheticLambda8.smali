.class public final synthetic Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda8;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->compact()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    const-string v1, "Failed to compact account %s"

    .line 28
    .line 29
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->clearNewMessageState()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/fsck/k9/controller/MessagingController;->refreshFolderListSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
