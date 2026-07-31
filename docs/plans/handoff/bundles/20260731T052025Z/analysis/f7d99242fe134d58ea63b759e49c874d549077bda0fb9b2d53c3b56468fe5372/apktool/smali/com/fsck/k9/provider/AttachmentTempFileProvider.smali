.class public Lcom/fsck/k9/provider/AttachmentTempFileProvider;
.super Landroidx/core/content/FileProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static AUTHORITY:Ljava/lang/String;

.field public static cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

.field public static final cleanupReceiverMonitor:Ljava/lang/Object;

.field public static final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public static final tempFileWriteMonitor:Ljava/lang/Object;


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
    sput-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->tempFileWriteMonitor:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    .line 14
    .line 15
    const-class v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 22
    .line 23
    sput-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 27
    .line 28
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

.method public static createTempUriForContentUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/jcraft/jzlib/Adler32;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "SHA-1"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->getTempFileDirectory(Landroid/content/Context;)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v3, Ljava/io/File;

    .line 34
    .line 35
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "Failed to resolve content at uri: "

    .line 39
    .line 40
    sget-object v2, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->tempFileWriteMonitor:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    monitor-exit v2

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 54
    .line 55
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    invoke-static {v5, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 72
    .line 73
    .line 74
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQ(Ljava/io/Closeable;)V

    .line 75
    .line 76
    .line 77
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    sget-object p1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->AUTHORITY:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p0, p1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "displayName"

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->registerFileCleanupReceiver(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p0
.end method

.method public static deleteOldTemporaryFiles(Landroid/content/Context;)Z
    .locals 12

    .line 1
    invoke-static {p0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->getTempFileDirectory(Landroid/content/Context;)Ljava/io/File;

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
    sget-object v6, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

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

.method public static getTempFileDirectory(Landroid/content/Context;)Ljava/io/File;
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
    const-string v1, "temp"

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

.method public static registerFileCleanupReceiver(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 5
    .line 6
    if-eqz v1, :cond_0

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
    const-string v1, "Registering temp file cleanup receiver"

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
    new-instance v1, Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v1, v2}, Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 27
    .line 28
    new-instance v1, Landroid/content/IntentFilter;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    invoke-static {p0, v2, v1, v3}, Landroidx/tracing/TraceApi29Impl;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public static unregisterFileCleanupReceiver(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiverMonitor:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

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
    sget-object v1, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    sput-object p0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->cleanupReceiver:Lcom/fsck/k9/provider/DecryptedFileProvider$DecryptedFileProviderCleanupReceiver;

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
    const-string v0, ".tempfileprovider"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sput-object p0, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->AUTHORITY:Ljava/lang/String;

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
    const/4 v0, 0x1

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
    invoke-static {p0}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->unregisterFileCleanupReceiver(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
