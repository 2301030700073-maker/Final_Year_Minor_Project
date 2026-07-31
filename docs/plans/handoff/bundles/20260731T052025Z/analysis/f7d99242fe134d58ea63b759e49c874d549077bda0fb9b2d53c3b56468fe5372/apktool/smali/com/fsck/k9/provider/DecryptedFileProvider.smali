.class public Lcom/fsck/k9/provider/DecryptedFileProvider;
.super Landroidx/core/content/FileProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static AUTHORITY:Ljava/lang/String;

.field public static cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

.field public static final cleanupReceiverMonitor:Ljava/lang/Object;

.field public static final generalSettingManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    .line 7
    .line 8
    const-class v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 15
    .line 16
    sput-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->generalSettingManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static deleteOldTemporaryFiles(Landroid/content/Context;)Z
    .locals 12

    .line 1
    invoke-static {p0}, Lcom/fsck/k9/provider/DecryptedFileProvider;->getDecryptedTempDirectory(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/32 v2, 0x2bf20

    .line 10
    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v2, p0

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    move v6, v3

    .line 21
    move v5, v4

    .line 22
    :goto_0
    if-ge v5, v2, :cond_3

    .line 23
    .line 24
    aget-object v7, p0, v5

    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    cmp-long v10, v8, v0

    .line 31
    .line 32
    if-gez v10, :cond_0

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_2

    .line 39
    .line 40
    const-string v6, "Failed to delete temporary file"

    .line 41
    .line 42
    new-array v7, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    sget-object v6, Lcom/fsck/k9/provider/DecryptedFileProvider;->generalSettingManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 49
    .line 50
    check-cast v6, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-object v6, v6, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 57
    .line 58
    iget-boolean v6, v6, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 59
    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 63
    .line 64
    sub-long/2addr v8, v0

    .line 65
    const-wide/16 v10, 0x3e8

    .line 66
    .line 67
    div-long/2addr v8, v10

    .line 68
    long-to-double v7, v8

    .line 69
    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    .line 70
    .line 71
    div-double/2addr v7, v9

    .line 72
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    new-array v8, v3, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v7, v8, v4

    .line 79
    .line 80
    const-string v7, "%.2f"

    .line 81
    .line 82
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    new-array v7, v3, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v6, v7, v4

    .line 89
    .line 90
    const-string v6, "Not deleting temp file (for another %s minutes)"

    .line 91
    .line 92
    invoke-static {v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_1
    move v6, v4

    .line 96
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    return v6
.end method

.method public static getDecryptedTempDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "decrypted"

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v1, 0x1

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    aput-object p0, v1, v2

    .line 33
    .line 34
    const-string p0, "Error creating directory: %s"

    .line 35
    .line 36
    invoke-static {p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object v0
.end method

.method public static unregisterFileCleanupReceiver(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "Unregistering temp file cleanup receiver"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    sput-object p0, Lcom/fsck/k9/provider/DecryptedFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
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

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "mime_type"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, ".decryptedfileprovider"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sput-object p0, Lcom/fsck/k9/provider/DecryptedFileProvider;->AUTHORITY:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Lcom/fsck/k9/message/MessageBuilder$1;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/message/MessageBuilder$1;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Ljava/lang/Void;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/fsck/k9/provider/DecryptedFileProvider;->unregisterFileCleanupReceiver(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    const-string p2, "r"

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/core/content/FileProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p2, "encoding"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget p2, Lorg/apache/james/mime4j/util/MimeUtil;->$r8$clinit:I

    .line 14
    .line 15
    const-string p2, "base64"

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p2, "quoted-printable"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    aget-object p2, p1, v0

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    aget-object p1, p1, v0

    .line 61
    .line 62
    new-instance v0, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;

    .line 63
    .line 64
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 65
    .line 66
    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0, v1}, Lorg/openintents/openpgp/util/ParcelFileDescriptorUtil$TransferThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    return-object p2

    .line 76
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 77
    .line 78
    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    const-string/jumbo p1, "unsupported encoding, returning raw stream"

    .line 89
    .line 90
    .line 91
    new-array p2, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-object p0
.end method
