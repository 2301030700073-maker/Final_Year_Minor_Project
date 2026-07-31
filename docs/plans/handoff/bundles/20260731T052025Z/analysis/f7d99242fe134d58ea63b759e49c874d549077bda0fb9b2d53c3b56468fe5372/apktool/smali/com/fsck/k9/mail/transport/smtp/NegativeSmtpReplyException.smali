.class public final Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;
.super Lnet/thunderbird/core/common/exception/MessagingException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final replyCode:I

.field public final replyText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Negative SMTP reply: "

    .line 8
    .line 9
    invoke-static {v0, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p1

    .line 15
    :goto_0
    const/16 v1, 0x1f4

    .line 16
    .line 17
    if-gt v1, p2, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x258

    .line 20
    .line 21
    if-ge p2, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_1
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, v0, v1, v2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    iput p2, p0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyCode:I

    .line 31
    .line 32
    iput-object p1, p0, Lcom/fsck/k9/mail/transport/smtp/NegativeSmtpReplyException;->replyText:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method
