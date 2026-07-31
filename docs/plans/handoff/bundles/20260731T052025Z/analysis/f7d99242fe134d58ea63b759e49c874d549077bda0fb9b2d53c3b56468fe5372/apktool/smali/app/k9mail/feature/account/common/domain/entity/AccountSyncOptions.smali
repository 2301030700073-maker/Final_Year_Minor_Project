.class public final Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final checkFrequencyInMinutes:I

.field public final messageDisplayCount:I

.field public final showNotification:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->checkFrequencyInMinutes:I

    .line 5
    .line 6
    iput p2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->messageDisplayCount:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->showNotification:Z

    .line 9
    .line 10
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
    instance-of v0, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;

    .line 10
    .line 11
    iget v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->checkFrequencyInMinutes:I

    .line 12
    .line 13
    iget v1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->checkFrequencyInMinutes:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->messageDisplayCount:I

    .line 19
    .line 20
    iget v1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->messageDisplayCount:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->showNotification:Z

    .line 26
    .line 27
    iget-boolean p1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->showNotification:Z

    .line 28
    .line 29
    if-eq p0, p1, :cond_4

    .line 30
    .line 31
    :goto_0
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->checkFrequencyInMinutes:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->messageDisplayCount:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->showNotification:Z

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/16 p0, 0x4cf

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p0, 0x4d5

    .line 18
    .line 19
    :goto_0
    add-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", messageDisplayCount="

    .line 2
    .line 3
    const-string v1, ", showNotification="

    .line 4
    .line 5
    const-string v2, "AccountSyncOptions(checkFrequencyInMinutes="

    .line 6
    .line 7
    iget v3, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->checkFrequencyInMinutes:I

    .line 8
    .line 9
    iget v4, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->messageDisplayCount:I

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ")"

    .line 16
    .line 17
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountSyncOptions;->showNotification:Z

    .line 18
    .line 19
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
