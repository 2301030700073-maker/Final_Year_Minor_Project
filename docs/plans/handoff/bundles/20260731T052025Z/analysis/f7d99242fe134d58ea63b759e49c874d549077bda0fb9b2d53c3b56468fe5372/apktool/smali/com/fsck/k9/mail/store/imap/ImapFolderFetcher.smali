.class public final Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final clientInfoAppName:Ljava/lang/String;

.field public final clientInfoAppVersion:Ljava/lang/String;

.field public final imapStoreFactory:Lcom/fsck/k9/mail/store/imap/ImapStore$Companion;

.field public final oAuth2TokenProviderFactory:Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

.field public final trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->trustedSocketFactory:Lcom/fsck/k9/helper/DefaultTrustedSocketFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->oAuth2TokenProviderFactory:Lcom/fsck/k9/backends/RealOAuth2TokenProviderFactory;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->clientInfoAppName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->clientInfoAppVersion:Ljava/lang/String;

    .line 11
    .line 12
    sget-object p1, Lcom/fsck/k9/mail/store/imap/ImapStore$Companion;->$$INSTANCE:Lcom/fsck/k9/mail/store/imap/ImapStore$Companion;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapFolderFetcher;->imapStoreFactory:Lcom/fsck/k9/mail/store/imap/ImapStore$Companion;

    .line 15
    .line 16
    return-void
.end method
