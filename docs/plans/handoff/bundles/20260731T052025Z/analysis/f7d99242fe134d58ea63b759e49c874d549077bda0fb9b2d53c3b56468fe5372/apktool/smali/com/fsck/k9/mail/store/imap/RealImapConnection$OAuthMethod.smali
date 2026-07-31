.class public abstract enum Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;

.field public static final enum OAUTHBEARER:Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$OAUTHBEARER;

.field public static final enum XOAUTH2:Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$XOAUTH2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$XOAUTH2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$XOAUTH2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->XOAUTH2:Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$XOAUTH2;

    .line 7
    .line 8
    new-instance v1, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$OAUTHBEARER;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$OAUTHBEARER;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->OAUTHBEARER:Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod$OAUTHBEARER;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    new-array v2, v2, [Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v0, v2, v3

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v1, v2, v0

    .line 23
    .line 24
    sput-object v2, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->$VALUES:[Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;

    .line 25
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;->$VALUES:[Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/mail/store/imap/RealImapConnection$OAuthMethod;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract buildInitialClientResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCommand()Ljava/lang/String;
.end method
