.class public final Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final incomingProtocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

.field public final isAutomaticConfig:Z


# direct methods
.method public constructor <init>(ZLapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->isAutomaticConfig:Z

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->incomingProtocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;

    .line 12
    .line 13
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->isAutomaticConfig:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->isAutomaticConfig:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->incomingProtocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 21
    .line 22
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->incomingProtocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 23
    .line 24
    if-eq p0, p1, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->isAutomaticConfig:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->incomingProtocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :goto_1
    add-int/2addr v0, p0

    .line 23
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AutoDiscoveryUiResult(isAutomaticConfig="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->isAutomaticConfig:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", incomingProtocolType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$AutoDiscoveryUiResult;->incomingProtocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
