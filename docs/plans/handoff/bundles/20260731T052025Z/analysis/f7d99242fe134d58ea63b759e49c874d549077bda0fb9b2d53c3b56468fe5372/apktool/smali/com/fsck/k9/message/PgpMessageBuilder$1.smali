.class public final Lcom/fsck/k9/message/PgpMessageBuilder$1;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic val$bodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

.field public final synthetic val$writeBodyContentOnly:Z


# direct methods
.method public constructor <init>(ZLcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$writeBodyContentOnly:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$bodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final writeTo(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 1

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$writeBodyContentOnly:Z
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/message/PgpMessageBuilder$1;->val$bodyPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance p1, Ljava/io/IOException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method
