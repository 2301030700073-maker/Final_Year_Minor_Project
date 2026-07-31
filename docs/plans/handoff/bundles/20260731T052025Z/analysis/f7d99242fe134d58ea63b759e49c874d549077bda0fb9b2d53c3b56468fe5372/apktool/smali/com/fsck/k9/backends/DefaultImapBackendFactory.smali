.class public final Lcom/fsck/k9/backends/DefaultImapBackendFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/backend/api/BackendFactory;


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

.field public final clientInfoAppName:Ljava/lang/String;

.field public final clientInfoAppVersion:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

.field public final powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

.field public final trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/power/AndroidPowerManager;Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/mailstore/K9BackendStorageFactory;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->clientInfoAppName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->clientInfoAppVersion:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final createBackend(Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/backend/api/Backend;
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lnet/thunderbird/feature/account/AccountId;->value:Ljava/lang/Comparable;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v3, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 20
    .line 21
    iget-object v4, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 22
    .line 23
    iget-object v6, v4, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->name:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 26
    .line 27
    invoke-virtual {v4, p1}, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->createBackendStorage$1(Lnet/thunderbird/feature/account/AccountId;)Lokhttp3/Dispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object p1, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/core/util/DebugUtils;->getAutoDetectNamespace(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {p1}, Landroidx/core/util/DebugUtils;->getPathPrefix(Lcom/fsck/k9/mail/ServerSettings;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-boolean v8, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->useCompression:Z

    .line 42
    .line 43
    iget-boolean v9, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSendClientInfoEnabled:Z

    .line 44
    .line 45
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v10, Lkotlin/Pair;

    .line 50
    .line 51
    const-string v11, "autoDetectNamespace"

    .line 52
    .line 53
    invoke-direct {v10, v11, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Lkotlin/Pair;

    .line 57
    .line 58
    const-string v11, "pathPrefix"

    .line 59
    .line 60
    invoke-direct {v4, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    new-instance v8, Lkotlin/Pair;

    .line 68
    .line 69
    const-string/jumbo v11, "useCompression"

    .line 70
    .line 71
    .line 72
    invoke-direct {v8, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-instance v9, Lkotlin/Pair;

    .line 80
    .line 81
    const-string v11, "sendClientInfo"

    .line 82
    .line 83
    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x4

    .line 87
    new-array v5, v5, [Lkotlin/Pair;

    .line 88
    .line 89
    const/4 v11, 0x0

    .line 90
    aput-object v10, v5, v11

    .line 91
    .line 92
    const/4 v10, 0x1

    .line 93
    aput-object v4, v5, v10

    .line 94
    .line 95
    const/4 v4, 0x2

    .line 96
    aput-object v8, v5, v4

    .line 97
    .line 98
    const/4 v4, 0x3

    .line 99
    aput-object v9, v5, v4

    .line 100
    .line 101
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const/16 v5, 0xff

    .line 106
    .line 107
    invoke-static {p1, v2, v2, v4, v5}, Lcom/fsck/k9/mail/ServerSettings;->copy$default(Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/fsck/k9/mail/ServerSettings;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v4, p1, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 112
    .line 113
    iget-object v5, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->context:Landroid/content/Context;

    .line 114
    .line 115
    sget-object v8, Lcom/fsck/k9/mail/AuthType;->XOAUTH2:Lcom/fsck/k9/mail/AuthType;

    .line 116
    .line 117
    if-ne v4, v8, :cond_0

    .line 118
    .line 119
    new-instance v4, Lcom/fsck/k9/backends/AccountAuthStateStorage;

    .line 120
    .line 121
    invoke-direct {v4, v1, v3}, Lcom/fsck/k9/backends/AccountAuthStateStorage;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/feature/account/AccountId;)V

    .line 122
    .line 123
    .line 124
    new-instance v9, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 125
    .line 126
    invoke-direct {v9, v5, v4}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/oauth/AuthStateStorage;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    move-object v9, v2

    .line 131
    :goto_0
    new-instance v4, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

    .line 132
    .line 133
    invoke-direct {v4, v0, p0}, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;-><init>(Lnet/thunderbird/core/android/account/LegacyAccount;Lcom/fsck/k9/backends/DefaultImapBackendFactory;)V

    .line 134
    .line 135
    .line 136
    move-object v10, v8

    .line 137
    new-instance v8, Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 138
    .line 139
    iget-object v11, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 140
    .line 141
    invoke-direct {v8, p1, v4, v11, v9}, Lcom/fsck/k9/mail/store/imap/RealImapStore;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 142
    .line 143
    .line 144
    move-object p1, v11

    .line 145
    new-instance v11, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;

    .line 146
    .line 147
    invoke-direct {v11, p0, v0}, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;-><init>(Lcom/fsck/k9/backends/DefaultImapBackendFactory;Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 151
    .line 152
    iget-object v4, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 153
    .line 154
    if-ne v4, v10, :cond_1

    .line 155
    .line 156
    new-instance v2, Lcom/fsck/k9/backends/AccountAuthStateStorage;

    .line 157
    .line 158
    invoke-direct {v2, v1, v3}, Lcom/fsck/k9/backends/AccountAuthStateStorage;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/feature/account/AccountId;)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 162
    .line 163
    invoke-direct {v1, v5, v2}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroid/content/Context;Lcom/fsck/k9/mail/oauth/AuthStateStorage;)V

    .line 164
    .line 165
    .line 166
    move-object v2, v1

    .line 167
    :cond_1
    new-instance v12, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;

    .line 168
    .line 169
    invoke-direct {v12, v0, p1, v2}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Lcom/fsck/k9/backend/imap/ImapBackend;

    .line 173
    .line 174
    iget-object v9, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->powerManager:Lcom/fsck/k9/power/AndroidPowerManager;

    .line 175
    .line 176
    iget-object v10, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->idleRefreshManager:Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;

    .line 177
    .line 178
    invoke-direct/range {v5 .. v12}, Lcom/fsck/k9/backend/imap/ImapBackend;-><init>(Ljava/lang/String;Lokhttp3/Dispatcher;Lcom/fsck/k9/mail/store/imap/RealImapStore;Lcom/fsck/k9/power/AndroidPowerManager;Lcom/fsck/k9/mail/store/imap/IdleRefreshManager;Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;)V

    .line 179
    .line 180
    .line 181
    return-object v5

    .line 182
    :cond_2
    const-string p0, "Account not found: "

    .line 183
    .line 184
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object v2
.end method
