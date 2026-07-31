.class public Lcom/fsck/k9/provider/RawMessageProvider;
.super Landroid/content/ContentProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static AUTHORITY:Ljava/lang/String;

.field public static CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "_display_name"

    .line 2
    .line 3
    const-string v1, "_size"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/fsck/k9/provider/RawMessageProvider;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static loadMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 12

    .line 1
    iget-object v0, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 4
    .line 5
    iget-object p0, p0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 6
    .line 7
    const-class v3, Lcom/fsck/k9/Preferences;

    .line 8
    .line 9
    invoke-static {v3}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/fsck/k9/Preferences;

    .line 14
    .line 15
    invoke-virtual {v3, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    new-array p0, v5, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object v0, p0, v4

    .line 27
    .line 28
    const-string v0, "Account not found: %s"

    .line 29
    .line 30
    invoke-static {v0, p0}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v6

    .line 34
    :cond_0
    const/4 v0, 0x2

    .line 35
    :try_start_0
    const-class v7, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 36
    .line 37
    invoke-static {v7}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 42
    .line 43
    invoke-virtual {v7, v3}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-instance v7, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 48
    .line 49
    invoke-direct {v7, v3, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7, p0}, Lcom/fsck/k9/mailstore/LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget-wide v8, v3, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 62
    .line 63
    const-wide/16 v10, 0x0

    .line 64
    .line 65
    cmp-long v8, v8, v10

    .line 66
    .line 67
    if-nez v8, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v8, Lcom/fsck/k9/mail/FetchProfile;

    .line 71
    .line 72
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 76
    .line 77
    invoke-virtual {v8, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v7, v9, v8}, Lcom/fsck/k9/mailstore/LocalFolder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;)V

    .line 85
    .line 86
    .line 87
    return-object v3

    .line 88
    :catch_0
    move-exception v3

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    const-string v3, "Message not found: folder=%s, uid=%s"

    .line 91
    .line 92
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    new-array v8, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v7, v8, v4

    .line 99
    .line 100
    aput-object p0, v8, v5

    .line 101
    .line 102
    invoke-static {v3, v8}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-object v6

    .line 106
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object v1, v0, v4

    .line 113
    .line 114
    aput-object p0, v0, v5

    .line 115
    .line 116
    const-string p0, "Error loading message: folder=%d, uid=%s"

    .line 117
    .line 118
    invoke-static {v3, p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object v6
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
    const-string p0, "message/rfc822"

    .line 2
    .line 3
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
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
    const-string v0, ".rawmessageprovider"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sput-object p0, Lcom/fsck/k9/provider/RawMessageProvider;->AUTHORITY:Ljava/lang/String;

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "content://"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/fsck/k9/provider/RawMessageProvider;->AUTHORITY:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sput-object p0, Lcom/fsck/k9/provider/RawMessageProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p2, 0x0

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/fsck/k9/provider/RawMessageProvider;->loadMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    move-object v0, p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lcom/fsck/k9/provider/RawMessageProvider$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/fsck/k9/provider/RawMessageProvider$1;-><init>(Lcom/fsck/k9/mailstore/LocalMessage;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;->startPumpThread()Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string v0, "Error creating ParcelFileDescriptor"

    .line 40
    .line 41
    new-array p1, p1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {p0, v0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    if-eqz p2, :cond_2

    .line 47
    .line 48
    return-object p2

    .line 49
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 50
    .line 51
    const-string p1, "Message missing or cannot be opened!"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lcom/fsck/k9/provider/RawMessageProvider;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/fsck/k9/provider/RawMessageProvider;->loadMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)Lcom/fsck/k9/mailstore/LocalMessage;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance p3, Landroid/database/MatrixCursor;

    .line 29
    .line 30
    invoke-direct {p3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    array-length p4, p2

    .line 34
    new-array p4, p4, [Ljava/lang/Object;

    .line 35
    .line 36
    array-length p5, p2

    .line 37
    move v0, p1

    .line 38
    :goto_0
    if-ge v0, p5, :cond_4

    .line 39
    .line 40
    aget-object v1, p2, v0

    .line 41
    .line 42
    const-string v2, "_display_name"

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, ".eml"

    .line 58
    .line 59
    invoke-static {v1, v2, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    aput-object v1, p4, v0

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_2
    const-string v2, "_size"

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    :try_start_0
    new-instance v1, Lcom/fsck/k9/mail/filter/CountingOutputStream;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/io/OutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 80
    .line 81
    .line 82
    iget-wide v2, v1, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :catch_0
    move-exception v1

    .line 89
    goto :goto_2

    .line 90
    :catch_1
    move-exception v1

    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v2

    .line 93
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_1
    move-exception v1

    .line 98
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 102
    :goto_2
    const-string v2, "Unable to compute message size"

    .line 103
    .line 104
    new-array v3, p1, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v1, v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const-wide/16 v2, 0x0

    .line 110
    .line 111
    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    aput-object v1, p4, v0

    .line 116
    .line 117
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p3, p4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object p3
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
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
