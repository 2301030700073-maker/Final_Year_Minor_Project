.class public final Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/feature/account/common/domain/AccountDomainContract$AccountStateRepository;
.implements Lcom/fsck/k9/mail/oauth/AuthStateStorage;


# instance fields
.field public state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;


# virtual methods
.method public final getAuthorizationState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;->value:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final updateAuthorizationState(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 2
    .line 3
    new-instance v3, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 4
    .line 5
    invoke-direct {v3, p1}, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/16 v7, 0xef

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static/range {v0 .. v7}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->copy$default(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;I)Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lapp/k9mail/feature/account/common/data/InMemoryAccountStateRepository;->state:Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 20
    .line 21
    return-void
.end method
