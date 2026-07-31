.class public final Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;


# instance fields
.field public final synthetic $account:Lnet/thunderbird/core/android/account/LegacyAccount;

.field public final synthetic this$0:Lcom/fsck/k9/backends/DefaultImapBackendFactory;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/backends/DefaultImapBackendFactory;Lnet/thunderbird/core/android/account/LegacyAccount;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->this$0:Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    iput-object p2, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccount;

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccount;Lcom/fsck/k9/backends/DefaultImapBackendFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->this$0:Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clientInfo()Lcom/fsck/k9/mail/store/imap/ImapClientInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->this$0:Lcom/fsck/k9/backends/DefaultImapBackendFactory;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->clientInfoAppName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory;->clientInfoAppVersion:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/store/imap/ImapClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getLogLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public isExpungeImmediately()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->expungePolicy:Lnet/thunderbird/core/android/account/Expunge;

    .line 4
    .line 5
    sget-object v0, Lnet/thunderbird/core/android/account/Expunge;->EXPUNGE_IMMEDIATELY:Lnet/thunderbird/core/android/account/Expunge;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isSubscribedFoldersOnly()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createImapStoreConfig$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2
    .line 3
    iget-boolean p0, p0, Lnet/thunderbird/core/android/account/LegacyAccount;->isSubscribedFoldersOnly:Z

    .line 4
    .line 5
    return p0
.end method
