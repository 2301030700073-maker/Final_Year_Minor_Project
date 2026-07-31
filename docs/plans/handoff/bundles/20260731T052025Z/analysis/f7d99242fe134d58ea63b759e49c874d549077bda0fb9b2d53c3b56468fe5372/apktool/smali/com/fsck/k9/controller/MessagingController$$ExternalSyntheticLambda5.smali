.class public final synthetic Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/controller/MessagingController;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic f$2:Lcom/fsck/k9/mailstore/LocalMessage;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalMessage;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;->f$2:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;->f$3:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;->f$0:Lcom/fsck/k9/controller/MessagingController;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda5;->f$2:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v3, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/controller/MessagingController;->setFlagSynchronous(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;ZZ)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 36
    .line 37
    iget-wide v1, v1, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 38
    .line 39
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v0, v1, v2, p0, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setNewMessageState(JLjava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
