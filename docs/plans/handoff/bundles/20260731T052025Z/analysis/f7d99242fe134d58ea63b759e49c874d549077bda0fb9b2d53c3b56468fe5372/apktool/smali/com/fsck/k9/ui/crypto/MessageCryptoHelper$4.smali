.class public final Lcom/fsck/k9/ui/crypto/MessageCryptoHelper$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSink;


# virtual methods
.method public final processData(Ljava/io/BufferedInputStream;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/fsck/k9/mail/internet/TextBody;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v1}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 25
    .line 26
    const-string v1, "text/plain"

    .line 27
    .line 28
    invoke-direct {v0, p1, v1, p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    const-string v0, "MessagingException"

    .line 34
    .line 35
    new-array p0, p0, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {p1, v0, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method
