.class public Lcom/github/penfeizhou/animation/avif/decode/AVIFParser;
.super Ljava/lang/Object;
.source "AVIFParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/penfeizhou/animation/avif/decode/AVIFParser$FormatException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAVIF(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 67
    new-instance p0, Lcom/github/penfeizhou/animation/io/StreamReader;

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFParser;->isAVIF(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 73
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 78
    :cond_1
    :goto_1
    throw p0

    :catch_2
    if-eqz v0, :cond_2

    .line 73
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isAVIF(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 49
    new-instance p0, Lcom/github/penfeizhou/animation/io/StreamReader;

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFParser;->isAVIF(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 55
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    :cond_1
    :goto_1
    throw p0

    :catch_2
    if-eqz v0, :cond_2

    .line 55
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isAVIF(Lcom/github/penfeizhou/animation/io/Reader;)Z
    .locals 1

    .line 82
    instance-of v0, p0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;

    invoke-direct {v0, p0}, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;-><init>(Lcom/github/penfeizhou/animation/io/Reader;)V

    move-object p0, v0

    .line 84
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/github/penfeizhou/animation/avif/io/AVIFReader;->toDirectByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/aomedia/avif/android/AvifDecoder;->isAvifImage(Ljava/nio/ByteBuffer;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAVIF(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 30
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;->create(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 31
    new-instance p0, Lcom/github/penfeizhou/animation/io/StreamReader;

    invoke-direct {p0, v0}, Lcom/github/penfeizhou/animation/io/StreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/github/penfeizhou/animation/avif/decode/AVIFParser;->isAVIF(Lcom/github/penfeizhou/animation/io/Reader;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 37
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 37
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :cond_1
    :goto_1
    throw p0

    :catch_2
    if-eqz v0, :cond_2

    .line 37
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
