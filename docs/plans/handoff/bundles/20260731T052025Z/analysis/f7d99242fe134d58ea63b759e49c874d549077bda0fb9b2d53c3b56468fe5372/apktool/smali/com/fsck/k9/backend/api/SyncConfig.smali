.class public final Lcom/fsck/k9/backend/api/SyncConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final earliestPollDate:Ljava/util/Date;

.field public final expungePolicy:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

.field public final maximumAutoDownloadMessageSize:I

.field public final syncFlags:Ljava/util/Set;

.field public final syncRemoteDeletions:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;Ljava/util/Date;ZILjava/util/Set;)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/backend/api/SyncConfig;->expungePolicy:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;

    .line 10
    .line 11
    iput-boolean p3, p0, Lcom/fsck/k9/backend/api/SyncConfig;->syncRemoteDeletions:Z

    .line 12
    .line 13
    iput p4, p0, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 14
    .line 15
    iput-object p5, p0, Lcom/fsck/k9/backend/api/SyncConfig;->syncFlags:Ljava/util/Set;

    .line 16
    .line 17
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
    instance-of v0, p1, Lcom/fsck/k9/backend/api/SyncConfig;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/backend/api/SyncConfig;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/backend/api/SyncConfig;->expungePolicy:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/backend/api/SyncConfig;->expungePolicy:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-boolean v0, p0, Lcom/fsck/k9/backend/api/SyncConfig;->syncRemoteDeletions:Z

    .line 30
    .line 31
    iget-boolean v1, p1, Lcom/fsck/k9/backend/api/SyncConfig;->syncRemoteDeletions:Z

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget v0, p0, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 37
    .line 38
    iget v1, p1, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 39
    .line 40
    if-eq v0, v1, :cond_5

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    iget-object p0, p0, Lcom/fsck/k9/backend/api/SyncConfig;->syncFlags:Ljava/util/Set;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/fsck/k9/backend/api/SyncConfig;->syncFlags:Ljava/util/Set;

    .line 46
    .line 47
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_6

    .line 52
    .line 53
    :goto_0
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/backend/api/SyncConfig;->expungePolicy:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

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
    iget-object v1, p0, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/fsck/k9/backend/api/SyncConfig;->syncRemoteDeletions:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x4cf

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x4d5

    .line 30
    .line 31
    :goto_1
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget v1, p0, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 35
    .line 36
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x19

    .line 40
    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-object p0, p0, Lcom/fsck/k9/backend/api/SyncConfig;->syncFlags:Ljava/util/Set;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    add-int/2addr p0, v0

    .line 50
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SyncConfig(expungePolicy="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/backend/api/SyncConfig;->expungePolicy:Lcom/fsck/k9/backend/api/SyncConfig$ExpungePolicy;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", earliestPollDate="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", syncRemoteDeletions="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/fsck/k9/backend/api/SyncConfig;->syncRemoteDeletions:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", maximumAutoDownloadMessageSize="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/fsck/k9/backend/api/SyncConfig;->maximumAutoDownloadMessageSize:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", defaultVisibleLimit=25, syncFlags="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/fsck/k9/backend/api/SyncConfig;->syncFlags:Ljava/util/Set;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
