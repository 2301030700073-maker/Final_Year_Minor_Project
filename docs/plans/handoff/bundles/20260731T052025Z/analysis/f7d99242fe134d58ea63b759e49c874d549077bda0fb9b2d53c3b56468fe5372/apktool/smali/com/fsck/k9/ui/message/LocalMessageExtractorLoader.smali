.class public final Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final annotations:Lcom/bumptech/glide/load/engine/Jobs;

.field public final message:Lcom/fsck/k9/mailstore/LocalMessage;

.field public messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

.field public final messageViewInfoExtractor:Lcom/fsck/k9/backend/imap/ImapSync;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/LocalMessage;Lcom/bumptech/glide/load/engine/Jobs;Lcom/fsck/k9/backend/imap/ImapSync;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->annotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfoExtractor:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

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
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfoExtractor:Lcom/fsck/k9/backend/imap/ImapSync;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->annotations:Lcom/bumptech/glide/load/engine/Jobs;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 9
    .line 10
    iget-object v3, v3, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    iget-object v3, v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->openPgpProvider:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v0

    .line 19
    :goto_0
    invoke-virtual {v1, v2, p0, v3}, Lcom/fsck/k9/backend/imap/ImapSync;->extractMessageForView(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/bumptech/glide/load/engine/Jobs;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string v1, "Error while decoding message"

    .line 26
    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final onStartLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

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
    iget-object v0, p0, Lcom/fsck/k9/ui/message/LocalMessageExtractorLoader;->messageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

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
