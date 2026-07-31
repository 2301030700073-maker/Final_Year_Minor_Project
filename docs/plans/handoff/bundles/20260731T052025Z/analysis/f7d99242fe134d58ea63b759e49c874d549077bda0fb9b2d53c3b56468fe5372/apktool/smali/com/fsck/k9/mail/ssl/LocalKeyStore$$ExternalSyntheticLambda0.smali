.class public final synthetic Lcom/fsck/k9/mail/ssl/LocalKeyStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/mail/ssl/LocalKeyStore;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/mail/ssl/LocalKeyStore;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getKeyStoreFile(I)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const-string v2, "Failed to delete old key-store file: %s"

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-array v4, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p0, v4, v1

    .line 36
    .line 37
    invoke-static {v2, v4}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->getKeyStoreFile(I)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    cmp-long v2, v4, v6

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    const-string v2, "Failed to delete empty keystore file: %s"

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    new-array v3, v3, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v4, v3, v1

    .line 75
    .line 76
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_4

    .line 82
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 83
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 84
    .line 85
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-object v3, v2

    .line 90
    :goto_1
    :try_start_2
    iput-object p0, v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->keyStoreFile:Ljava/io/File;

    .line 91
    .line 92
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    sget-object v4, Lcom/fsck/k9/mail/ssl/LocalKeyStoreKt;->PASSWORD:[C

    .line 101
    .line 102
    invoke-virtual {p0, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    .line 104
    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_2
    move-object v2, p0

    .line 111
    goto :goto_2

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_3

    .line 114
    :catch_1
    move-exception p0

    .line 115
    :try_start_4
    const-string v4, "Failed to initialize local key store"

    .line 116
    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {p0, v4, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iput-object v2, v0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->keyStoreFile:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    .line 124
    if-eqz v3, :cond_3

    .line 125
    .line 126
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_2
    monitor-exit v0

    .line 130
    return-object v2

    .line 131
    :goto_3
    if-eqz v3, :cond_4

    .line 132
    .line 133
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 134
    .line 135
    .line 136
    :cond_4
    throw p0

    .line 137
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 138
    throw p0

    .line 139
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mail/ssl/LocalKeyStore;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/fsck/k9/mail/ssl/LocalKeyStore;->directoryProvider:Lcom/fsck/k9/helper/AndroidKeyStoreDirectoryProvider;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/fsck/k9/helper/AndroidKeyStoreDirectoryProvider;->context:Landroid/content/Context;

    .line 144
    .line 145
    const-string v0, "KeyStore"

    .line 146
    .line 147
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
