.class public final Lapp/k9mail/feature/account/common/domain/entity/AccountState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

.field public final displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

.field public final emailAddress:Ljava/lang/String;

.field public final incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

.field public final outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

.field public final specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

.field public final syncOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

.field public final uuid:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;I)V
    .locals 11

    .line 1
    and-int/lit8 v0, p7, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v3, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p1

    .line 9
    :goto_0
    and-int/lit8 p1, p7, 0x2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move-object v4, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v4, p2

    .line 16
    :goto_1
    and-int/lit8 p1, p7, 0x4

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    move-object v5, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v5, p3

    .line 23
    :goto_2
    and-int/lit8 p1, p7, 0x8

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    move-object v6, v1

    .line 28
    goto :goto_3

    .line 29
    :cond_3
    move-object v6, p4

    .line 30
    :goto_3
    and-int/lit8 p1, p7, 0x10

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    move-object v7, v1

    .line 35
    goto :goto_4

    .line 36
    :cond_4
    move-object/from16 v7, p5

    .line 37
    .line 38
    :goto_4
    and-int/lit8 p1, p7, 0x40

    .line 39
    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    move-object v9, v1

    .line 43
    goto :goto_5

    .line 44
    :cond_5
    move-object/from16 v9, p6

    .line 45
    .line 46
    :goto_5
    const/4 v8, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    move-object v2, p0

    .line 49
    invoke-direct/range {v2 .. v10}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->uuid:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 57
    iput-object p4, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 58
    iput-object p5, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 59
    iput-object p6, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 60
    iput-object p7, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 61
    iput-object p8, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->syncOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/common/domain/entity/AccountState;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;I)Lapp/k9mail/feature/account/common/domain/entity/AccountState;
    .locals 9

    .line 1
    move/from16 v0, p7

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->uuid:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 6
    .line 7
    and-int/lit8 v3, v0, 0x4

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 12
    .line 13
    :cond_0
    move-object v3, p1

    .line 14
    and-int/lit8 p1, v0, 0x8

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 19
    .line 20
    :cond_1
    move-object v4, p2

    .line 21
    and-int/lit8 p1, v0, 0x10

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p3, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 26
    .line 27
    :cond_2
    move-object v5, p3

    .line 28
    and-int/lit8 p1, v0, 0x20

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object p4, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 33
    .line 34
    :cond_3
    move-object v6, p4

    .line 35
    and-int/lit8 p1, v0, 0x40

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget-object p5, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 40
    .line 41
    :cond_4
    move-object v7, p5

    .line 42
    and-int/lit16 p1, v0, 0x80

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->syncOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 47
    .line 48
    move-object v8, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_5
    move-object v8, p6

    .line 51
    :goto_0
    new-instance v0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 52
    .line 53
    invoke-direct/range {v0 .. v8}, Lapp/k9mail/feature/account/common/domain/entity/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;Lcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;)V

    .line 54
    .line 55
    .line 56
    return-object v0
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
    instance-of v1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

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
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->uuid:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->uuid:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 36
    .line 37
    iget-object v3, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 47
    .line 48
    iget-object v3, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 58
    .line 59
    iget-object v3, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 69
    .line 70
    iget-object v3, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 80
    .line 81
    iget-object v3, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->syncOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 91
    .line 92
    iget-object p1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->syncOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 93
    .line 94
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-nez p0, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->uuid:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lcom/fsck/k9/mail/ServerSettings;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v1, v2

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Lcom/fsck/k9/mail/ServerSettings;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v1, v2

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v1, v2

    .line 64
    mul-int/lit8 v1, v1, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v0

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v1, v2

    .line 77
    mul-int/lit8 v1, v1, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v0

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v1, v2

    .line 90
    mul-int/lit8 v1, v1, 0x1f

    .line 91
    .line 92
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->syncOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 93
    .line 94
    if-nez p0, :cond_7

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_7
    invoke-virtual {p0}, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    :goto_7
    add-int/2addr v1, v0

    .line 102
    return v1
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
    const-string v2, "AccountState(uuid="

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->uuid:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->emailAddress:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

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
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->outgoingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

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
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->specialFolderSettings:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderSettings;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", displayOptions="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->displayOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountDisplayOptions;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", syncOptions="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountState;->syncOptions:Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, ")"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method
