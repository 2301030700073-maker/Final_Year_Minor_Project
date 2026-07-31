.class public final Lcom/fsck/k9/activity/compose/SaveMessageTask;
.super Landroid/os/AsyncTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final existingDraftId:Ljava/lang/Long;

.field public final handler:Landroid/os/Handler;

.field public final message:Lcom/fsck/k9/mail/internet/MimeMessage;

.field public final messagingController:Lcom/fsck/k9/controller/MessagingController;

.field public final plaintextSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/activity/MessageCompose$14;Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->existingDraftId:Ljava/lang/Long;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->plaintextSubject:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->existingDraftId:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->plaintextSubject:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->saveDraft(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mail/internet/MimeMessage;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x4

    .line 18
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/SaveMessageTask;->handler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method
