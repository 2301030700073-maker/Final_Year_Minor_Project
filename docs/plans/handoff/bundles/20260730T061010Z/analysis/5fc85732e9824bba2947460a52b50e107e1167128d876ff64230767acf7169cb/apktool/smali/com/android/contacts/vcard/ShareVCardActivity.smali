.class public Lcom/android/contacts/vcard/ShareVCardActivity;
.super Lcom/android/contacts/vcard/ExportVCardActivity;
.source "ShareVCardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportVCardActivity;-><init>()V

    return-void
.end method

.method private clearExportFiles()V
    .locals 9

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "vcards_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x5265c00

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getLocalFile()Ljava/io/File;
    .locals 3

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 89
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vcards_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".vcf"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    const/4 p1, 0x1

    .line 45
    :try_start_0
    iput-boolean p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mConnected:Z

    .line 46
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 48
    invoke-direct {p0}, Lcom/android/contacts/vcard/ShareVCardActivity;->clearExportFiles()V

    .line 50
    invoke-direct {p0}, Lcom/android/contacts/vcard/ShareVCardActivity;->getLocalFile()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const p2, 0x7f1000bd

    .line 60
    :try_start_2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {p0, p2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/android/contacts/vcard/ExportRequest;

    invoke-direct {p2, p1}, Lcom/android/contacts/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    .line 65
    iget-object p1, p0, Lcom/android/contacts/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/vcard/VCardService;

    new-instance v0, Lcom/android/contacts/vcard/NotificationImportExportListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "VCardShare"

    const-string v0, "Failed to create .vcf file"

    .line 54
    invoke-static {p0, p2, v0, p1}, Lcom/android/contactsbind/FeedbackHelper;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
