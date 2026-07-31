.class public final Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/parser/ContentHandler;


# instance fields
.field public final decryptedRootPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

.field public final fileFactory:Landroidx/navigation/internal/NavContext;

.field public isContentDispositionAttachment:Z

.field public isMessagePart:Z

.field public final parser:Lorg/jsoup/internal/SoftPool;

.field public final stack:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Lorg/jsoup/internal/SoftPool;Landroidx/navigation/internal/NavContext;Lcom/fsck/k9/mail/internet/MimeBodyPart;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Stack;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->parser:Lorg/jsoup/internal/SoftPool;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->fileFactory:Landroidx/navigation/internal/NavContext;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->decryptedRootPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final body(Lcom/eygraber/uri/Uri$Builder;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/mail/Part;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/mailstore/DeferredFileBody;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->fileFactory:Landroidx/navigation/internal/NavContext;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/mailstore/DeferredFileBody;-><init>(Landroidx/navigation/internal/NavContext;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/fsck/k9/mailstore/DeferredFileBody$1;

    .line 21
    .line 22
    invoke-direct {p1, v1, p0}, Lcom/fsck/k9/mailstore/DeferredFileBody$1;-><init>(Lcom/fsck/k9/mailstore/DeferredFileBody;Landroidx/navigation/internal/NavContext;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {p2, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->close()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/DeferredFileBody$1;->close()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final endBodyPart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->parser:Lorg/jsoup/internal/SoftPool;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 14
    .line 15
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0, v0}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->setRecursionMode(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final endHeader()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->isMessagePart:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->isContentDispositionAttachment:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->parser:Lorg/jsoup/internal/SoftPool;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 17
    .line 18
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0, v0}, Lorg/apache/james/mime4j/stream/EntityStateMachine;->setRecursionMode(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final endMessage()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final endMultipart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final epilogue(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->expect$1()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->epilogue:[B

    .line 25
    .line 26
    return-void
.end method

.method public final expect$1()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "\'"

    .line 33
    .line 34
    const-string v2, "Internal stack error: Expected \'"

    .line 35
    .line 36
    const-string v3, "\' found \'"

    .line 37
    .line 38
    invoke-static {v2, v0, v3, p0, v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 20
    .line 21
    invoke-interface {v2, v0, v1}, Lcom/fsck/k9/mail/Part;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {p1, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "Content-Type"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string v1, "message/rfc822"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iput-boolean v2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->isMessagePart:Z

    .line 51
    .line 52
    :cond_0
    const-string v1, "Content-Disposition"

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const-string v0, "attachment"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->isContentDispositionAttachment:Z

    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public final preamble(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->expect$1()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMultipart;->preamble:[B

    .line 25
    .line 26
    return-void
.end method

.method public final raw()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Not implemented"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final startBodyPart()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/mail/Multipart;

    .line 8
    .line 9
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final startHeader()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->isMessagePart:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->isContentDispositionAttachment:Z

    .line 5
    .line 6
    return-void
.end method

.method public final startMessage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->decryptedRootPart:Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 20
    .line 21
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final startMultipart(Lcom/eygraber/uri/Uri$Builder;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/MimePartStreamParser$PartBuilder;->stack:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/mail/Part;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 18
    .line 19
    invoke-direct {v2, v1, p1}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method
