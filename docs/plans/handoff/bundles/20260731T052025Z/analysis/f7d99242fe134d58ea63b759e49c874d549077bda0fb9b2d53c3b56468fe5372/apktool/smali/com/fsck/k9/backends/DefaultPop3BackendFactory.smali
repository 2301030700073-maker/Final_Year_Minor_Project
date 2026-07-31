.class public final Lcom/fsck/k9/backends/DefaultPop3BackendFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/backend/api/BackendFactory;


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

.field public final trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lcom/fsck/k9/mailstore/K9BackendStorageFactory;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;->backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final createBackend(Lnet/thunderbird/feature/account/AccountId;)Lcom/fsck/k9/backend/api/Backend;
    .locals 5

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
    iget-object v1, p0, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v2, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 20
    .line 21
    iget-object v2, v2, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->name:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;->backendStorageFactory:Lcom/fsck/k9/mailstore/K9BackendStorageFactory;

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Lcom/fsck/k9/mailstore/K9BackendStorageFactory;->createBackendStorage$1(Lnet/thunderbird/feature/account/AccountId;)Lokhttp3/Dispatcher;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v3, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 30
    .line 31
    new-instance v4, Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/fsck/k9/backends/DefaultPop3BackendFactory;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 34
    .line 35
    invoke-direct {v4, v3, p0}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 39
    .line 40
    new-instance v3, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;

    .line 41
    .line 42
    invoke-direct {v3, v0, p0, v1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;-><init>(Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/mailstore/LocalFolder$12;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 46
    .line 47
    invoke-direct {p0, v2, p1, v4, v3}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Ljava/lang/String;Lokhttp3/Dispatcher;Lcom/fsck/k9/mail/store/pop3/Pop3Store;Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_0
    const-string p0, "Account not found: "

    .line 52
    .line 53
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v1
.end method
