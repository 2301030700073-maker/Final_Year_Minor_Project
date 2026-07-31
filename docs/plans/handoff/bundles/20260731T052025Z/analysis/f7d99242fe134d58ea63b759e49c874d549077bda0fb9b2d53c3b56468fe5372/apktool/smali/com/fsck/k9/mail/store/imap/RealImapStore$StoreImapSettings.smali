.class public final Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authType:Lcom/fsck/k9/mail/AuthType;

.field public final clientCertificateAlias:Ljava/lang/String;

.field public final clientInfo:Lcom/fsck/k9/mail/store/imap/ImapClientInfo;

.field public final connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

.field public final host:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:I

.field public final synthetic this$0:Lcom/fsck/k9/mail/store/imap/RealImapStore;

.field public final useCompression:Z

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/RealImapStore;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->this$0:Lcom/fsck/k9/mail/store/imap/RealImapStore;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/fsck/k9/mail/store/imap/RealImapStore;->host:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->host:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/fsck/k9/mail/store/imap/RealImapStore;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 11
    .line 12
    iget v1, v0, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 13
    .line 14
    iput v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->port:I

    .line 15
    .line 16
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->authType:Lcom/fsck/k9/mail/AuthType;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->username:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->password:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroidx/core/util/DebugUtils;->isUseCompression(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput-boolean v1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->useCompression:Z

    .line 41
    .line 42
    iget-object p1, p1, Lcom/fsck/k9/mail/store/imap/RealImapStore;->config:Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/fsck/k9/mail/store/imap/ImapStoreConfig;->clientInfo()Lcom/fsck/k9/mail/store/imap/ImapClientInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0}, Landroidx/core/util/DebugUtils;->isSendClientInfo(Lcom/fsck/k9/mail/ServerSettings;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->clientInfo:Lcom/fsck/k9/mail/store/imap/ImapClientInfo;

    .line 57
    .line 58
    return-void
.end method
