.class public final Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

.field public final messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

.field public final showNotification:Z


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;Z)V
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
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 11
    .line 12
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 13
    .line 14
    iput-boolean p3, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->showNotification:Z

    .line 15
    .line 16
    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;ZI)Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->showNotification:Z

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 29
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;-><init>(Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;Z)V

    .line 31
    .line 32
    .line 33
    return-object p0
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
    instance-of v1, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

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
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 21
    .line 22
    iget-object v3, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->showNotification:Z

    .line 28
    .line 29
    iget-boolean p1, p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->showNotification:Z

    .line 30
    .line 31
    if-eq p0, p1, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->showNotification:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/16 p0, 0x4cf

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 p0, 0x4d5

    .line 26
    .line 27
    :goto_0
    add-int/2addr v1, p0

    .line 28
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(checkFrequency="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->checkFrequency:Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", messageDisplayCount="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->messageDisplayCount:Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", showNotification="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$State;->showNotification:Z

    .line 31
    .line 32
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
