.class public Lcom/fsck/k9/mail/internet/MimeBodyPart;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/Part;


# instance fields
.field public mBody:Lcom/fsck/k9/mail/Body;

.field public final mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

.field public parent:Lcom/fsck/k9/mail/Multipart;

.field public serverExtra:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p1, v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 11
    .line 12
    iput-boolean p3, v0, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$includeDeleted:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const-string p3, "Content-Type"

    .line 17
    .line 18
    invoke-virtual {v0, p3, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p0, p1}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalFolder$8;Lcom/fsck/k9/mail/Body;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 27
    invoke-static {p0, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    return-void
.end method

.method public static create(Lcom/fsck/k9/mail/Body;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static create(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .locals 2

    .line 9
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getBody()Lcom/fsck/k9/mail/Body;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentId()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "Content-ID"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/16 v0, 0x3c

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x3e

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    if-eq v1, v2, :cond_1

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_1
    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Content-Type"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->parent:Lcom/fsck/k9/mail/Multipart;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->mimeType:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "multipart/digest"

    .line 27
    .line 28
    invoke-static {p0, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const-string p0, "message/rfc822"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    const-string p0, "text/plain"

    .line 38
    .line 39
    return-object p0
.end method

.method public final getDisposition()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Content-Disposition"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/fsck/k9/mail/MimeType;->MIME_TYPE:Lkotlin/text/Regex;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->parseOrNull(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/fsck/k9/mail/MimeType;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->parent:Lcom/fsck/k9/mail/Multipart;

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->mimeType:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "multipart/digest"

    .line 32
    .line 33
    invoke-static {p0, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const-string p0, "message/rfc822"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const-string p0, "text/plain"

    .line 43
    .line 44
    return-object p0
.end method

.method public final getServerExtra()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->serverExtra:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isMimeType(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->getMimeType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setBody(Lcom/fsck/k9/mail/Body;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    return-void
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setServerExtra(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->serverExtra:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final writeHeaderTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->writeTo(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/BufferedWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x400

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->writeTo(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "\r\n"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
