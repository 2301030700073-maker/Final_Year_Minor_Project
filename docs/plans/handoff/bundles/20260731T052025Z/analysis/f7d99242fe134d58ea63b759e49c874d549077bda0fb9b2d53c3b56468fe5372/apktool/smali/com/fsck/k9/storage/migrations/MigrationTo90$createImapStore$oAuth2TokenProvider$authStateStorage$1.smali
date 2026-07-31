.class public final Lcom/fsck/k9/storage/migrations/MigrationTo90$createImapStore$oAuth2TokenProvider$authStateStorage$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/oauth/AuthStateStorage;


# instance fields
.field public final synthetic $account:Lnet/thunderbird/core/android/account/LegacyAccountDto;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/storage/migrations/MigrationTo90$createImapStore$oAuth2TokenProvider$authStateStorage$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAuthorizationState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/storage/migrations/MigrationTo90$createImapStore$oAuth2TokenProvider$authStateStorage$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOAuthState()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final updateAuthorizationState(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
