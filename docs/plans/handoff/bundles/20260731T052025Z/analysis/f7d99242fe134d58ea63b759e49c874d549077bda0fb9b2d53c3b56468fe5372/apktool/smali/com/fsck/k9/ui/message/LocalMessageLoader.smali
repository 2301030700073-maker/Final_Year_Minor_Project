.class public final Lcom/fsck/k9/ui/message/LocalMessageLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final controller:Lcom/fsck/k9/controller/MessagingController;

.field public message:Lcom/fsck/k9/mailstore/LocalMessage;

.field public final messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public final onlyLoadMetadata:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->controller:Lcom/fsck/k9/controller/MessagingController;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->onlyLoadMetadata:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->onlyLoadMetadata:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/ui/message/LocalMessageLoader;->loadMessageMetadataFromDatabase()Lcom/fsck/k9/mailstore/LocalMessage;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->controller:Lcom/fsck/k9/controller/MessagingController;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 15
    .line 16
    iget-wide v2, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 17
    .line 18
    iget-object p0, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/fsck/k9/controller/MessagingController;->loadMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;JLjava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v1, "Error while loading message from database"

    .line 30
    .line 31
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final loadMessageMetadataFromDatabase()Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    iget-wide v1, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 4
    .line 5
    iget-object v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->controller:Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 12
    .line 13
    invoke-virtual {v3, p0}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v3, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 18
    .line 19
    invoke-direct {v3, p0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long v1, v1, v4

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/fsck/k9/mail/FetchProfile;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v3, v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_0
    iget-object p0, v3, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, "Message not found: folder="

    .line 60
    .line 61
    const-string v2, ", uid="

    .line 62
    .line 63
    invoke-static {v1, p0, v2, v0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return-object p0
.end method

.method public final onStartLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->takeContentChanged()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->forceLoad()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
