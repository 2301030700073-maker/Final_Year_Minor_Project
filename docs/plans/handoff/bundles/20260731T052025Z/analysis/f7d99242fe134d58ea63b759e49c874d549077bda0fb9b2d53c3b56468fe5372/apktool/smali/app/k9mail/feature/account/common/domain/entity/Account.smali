.class public final Lapp/k9mail/feature/account/common/domain/entity/Account;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authorizationState:Ljava/lang/String;

.field public final emailAddress:Ljava/lang/String;

.field public final incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

.field public final options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

.field public final outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

.field public final specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

.field public final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Ljava/lang/String;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->uuid:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->emailAddress:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 15
    .line 16
    iput-object p4, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 17
    .line 18
    iput-object p5, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->authorizationState:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p6, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 21
    .line 22
    iput-object p7, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/Account;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->uuid:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/Account;->uuid:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->emailAddress:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/Account;->emailAddress:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 34
    .line 35
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/Account;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/ServerSettings;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 45
    .line 46
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/Account;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/ServerSettings;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->authorizationState:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/Account;->authorizationState:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 67
    .line 68
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/Account;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 78
    .line 79
    iget-object p1, p1, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_8

    .line 86
    .line 87
    :goto_0
    const/4 p0, 0x0

    .line 88
    return p0

    .line 89
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 90
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->emailAddress:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/fsck/k9/mail/ServerSettings;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/fsck/k9/mail/ServerSettings;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v0, v2

    .line 31
    mul-int/2addr v0, v1

    .line 32
    const/4 v2, 0x0

    .line 33
    iget-object v3, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->authorizationState:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    move v3, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    :goto_0
    add-int/2addr v0, v3

    .line 44
    mul-int/2addr v0, v1

    .line 45
    iget-object v3, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v3}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    :goto_1
    add-int/2addr v0, v2

    .line 55
    mul-int/2addr v0, v1

    .line 56
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 57
    .line 58
    invoke-virtual {p0}, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    add-int/2addr p0, v0

    .line 63
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", emailAddress="

    .line 2
    .line 3
    const-string v1, ", incomingServerSettings="

    .line 4
    .line 5
    const-string v2, "Account(uuid="

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->uuid:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->emailAddress:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", outgoingServerSettings="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", authorizationState="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->authorizationState:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", specialFolderSettings="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", options="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/Account;->options:Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, ")"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
