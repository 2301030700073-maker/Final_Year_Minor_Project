.class public final Lcom/fsck/k9/mailstore/DeferredFileBody;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/internet/RawDataBody;
.implements Lcom/fsck/k9/mail/internet/SizeAware;


# instance fields
.field public data:[B

.field public final encoding:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public final fileFactory:Landroidx/navigation/internal/NavContext;


# direct methods
.method public constructor <init>(Landroidx/navigation/internal/NavContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->fileFactory:Landroidx/navigation/internal/NavContext;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->encoding:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getEncoding()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->encoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFile()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v1, "Writing body to file for attachment access"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->fileFactory:Landroidx/navigation/internal/NavContext;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/navigation/internal/NavContext;->createFile()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 26
    .line 27
    new-instance v0, Ljava/io/FileOutputStream;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string p0, "Data must be fully written before it can be read!"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_1
    const-string p0, "Body is already file-backed!"

    .line 54
    .line 55
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 60
    .line 61
    return-object p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    const-string v1, "Decrypted data is file-backed."

    .line 7
    .line 8
    new-array v2, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 14
    .line 15
    new-instance v2, Ljava/io/FileInputStream;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string v1, "Decrypted data is memory-backed."

    .line 33
    .line 34
    new-array v2, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    .line 42
    .line 43
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v1, "Data must be fully written before it can be read!"

    .line 50
    .line 51
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    new-instance v1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 56
    .line 57
    const-string v2, "Unable to open body"

    .line 58
    .line 59
    invoke-direct {v1, v2, v0, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->file:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/DeferredFileBody;->data:[B

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    array-length p0, p0

    .line 15
    int-to-long v0, p0

    .line 16
    return-wide v0

    .line 17
    :cond_1
    const-string p0, "Data must be fully written before it can be read!"

    .line 18
    .line 19
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    return-wide v0
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Cannot re-encode a DecryptedTempFileBody!"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/DeferredFileBody;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
