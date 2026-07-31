.class public final Lcom/fsck/k9/mailstore/TempFileBody;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/internet/SizeAware;
.implements Lcom/fsck/k9/mail/Body;


# instance fields
.field public mEncoding:Ljava/lang/String;

.field public final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mFile:Ljava/io/File;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :catch_0
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 10
    .line 11
    sget-object v0, Lcom/fsck/k9/mailstore/LocalStore;->EMPTY_BYTE_ARRAY:[B

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/TempFileBody;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mEncoding:Ljava/lang/String;

    .line 6
    .line 7
    sget v2, Lorg/apache/james/mime4j/util/MimeUtil;->$r8$clinit:I

    .line 8
    .line 9
    const-string v2, "base64"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance p0, Lcom/fsck/k9/mail/filter/Base64OutputStream;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/filter/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    move-object p1, p0

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/TempFileBody;->mEncoding:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "quoted-printable"

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    new-instance p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    :goto_1
    :try_start_1
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 60
    .line 61
    .line 62
    :cond_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 64
    .line 65
    .line 66
    throw p0
.end method
