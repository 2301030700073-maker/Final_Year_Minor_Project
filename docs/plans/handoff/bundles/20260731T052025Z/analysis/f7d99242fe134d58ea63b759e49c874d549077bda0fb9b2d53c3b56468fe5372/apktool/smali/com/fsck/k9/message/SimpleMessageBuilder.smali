.class public final Lcom/fsck/k9/message/SimpleMessageBuilder;
.super Lcom/fsck/k9/message/MessageBuilder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final buildMessageInternal()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/message/MessageBuilder;->build()Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/MessageBuilder;->queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/MessageBuilder;->queueMessageBuildException(Lnet/thunderbird/core/common/exception/MessagingException;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final buildMessageOnActivityResult(Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method
