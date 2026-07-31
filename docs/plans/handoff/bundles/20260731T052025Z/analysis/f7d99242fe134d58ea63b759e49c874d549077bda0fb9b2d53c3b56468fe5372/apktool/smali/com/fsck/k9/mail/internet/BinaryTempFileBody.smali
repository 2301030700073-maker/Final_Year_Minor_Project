.class public Lcom/fsck/k9/mail/internet/BinaryTempFileBody;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/internet/RawDataBody;
.implements Lcom/fsck/k9/mail/internet/SizeAware;


# static fields
.field public static mTempDirectory:Ljava/io/File;


# instance fields
.field public mEncoding:Ljava/lang/String;

.field public mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mEncoding:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mEncoding:Ljava/lang/String;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p0, "setTempDirectory has not been called on BinaryTempFileBody!"

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method


# virtual methods
.method public final getEncoding()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;-><init>(Lcom/fsck/k9/mail/internet/BinaryTempFileBody;Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance v0, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 16
    .line 17
    const-string v1, "Unable to open body"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v1, v2, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

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

.method public setEncoding(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Target encoding not supported: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mEncoding:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "8bit"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mEncoding:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    :try_start_0
    const-string v1, "body"

    .line 25
    .line 26
    sget-object v2, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/io/FileOutputStream;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    const-string v3, "quoted-printable"

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;

    .line 47
    .line 48
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const-string v3, "base64"

    .line 55
    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    new-instance v0, Lcom/fsck/k9/mail/filter/Base64OutputStream;

    .line 63
    .line 64
    invoke-direct {v0, v2}, Lcom/fsck/k9/mail/filter/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    .line 68
    .line 69
    .line 70
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-static {v3, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_3
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .line 79
    .line 80
    :try_start_4
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mEncoding:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    .line 87
    return-void

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    :try_start_5
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    :goto_1
    :try_start_6
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 107
    .line 108
    .line 109
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 110
    :catch_0
    move-exception p0

    .line 111
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 112
    .line 113
    const-string v0, "Unable to convert body"

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->mEncoding:Ljava/lang/String;

    .line 121
    .line 122
    const-string p1, "Can\'t convert from encoding: "

    .line 123
    .line 124
    invoke-static {p1, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method
