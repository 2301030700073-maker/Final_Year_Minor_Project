.class public final Lcom/fsck/k9/preferences/FolderSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final isInTopGroup:Z

.field public final isIntegrate:Z

.field public final isNotificationsEnabled:Z

.field public final isPushEnabled:Z

.field public final isSyncEnabled:Z

.field public final isVisible:Z

.field public final serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/preferences/FolderSettings;->serverId:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/preferences/FolderSettings;->isInTopGroup:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/fsck/k9/preferences/FolderSettings;->isIntegrate:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/fsck/k9/preferences/FolderSettings;->isSyncEnabled:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/fsck/k9/preferences/FolderSettings;->isVisible:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/fsck/k9/preferences/FolderSettings;->isNotificationsEnabled:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/fsck/k9/preferences/FolderSettings;->isPushEnabled:Z

    .line 17
    .line 18
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
    instance-of v0, p1, Lcom/fsck/k9/preferences/FolderSettings;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/preferences/FolderSettings;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/preferences/FolderSettings;->serverId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/preferences/FolderSettings;->serverId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/FolderSettings;->isInTopGroup:Z

    .line 23
    .line 24
    iget-boolean v1, p1, Lcom/fsck/k9/preferences/FolderSettings;->isInTopGroup:Z

    .line 25
    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/FolderSettings;->isIntegrate:Z

    .line 30
    .line 31
    iget-boolean v1, p1, Lcom/fsck/k9/preferences/FolderSettings;->isIntegrate:Z

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/FolderSettings;->isSyncEnabled:Z

    .line 37
    .line 38
    iget-boolean v1, p1, Lcom/fsck/k9/preferences/FolderSettings;->isSyncEnabled:Z

    .line 39
    .line 40
    if-eq v0, v1, :cond_5

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/FolderSettings;->isVisible:Z

    .line 44
    .line 45
    iget-boolean v1, p1, Lcom/fsck/k9/preferences/FolderSettings;->isVisible:Z

    .line 46
    .line 47
    if-eq v0, v1, :cond_6

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_6
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/FolderSettings;->isNotificationsEnabled:Z

    .line 51
    .line 52
    iget-boolean v1, p1, Lcom/fsck/k9/preferences/FolderSettings;->isNotificationsEnabled:Z

    .line 53
    .line 54
    if-eq v0, v1, :cond_7

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_7
    iget-boolean p0, p0, Lcom/fsck/k9/preferences/FolderSettings;->isPushEnabled:Z

    .line 58
    .line 59
    iget-boolean p1, p1, Lcom/fsck/k9/preferences/FolderSettings;->isPushEnabled:Z

    .line 60
    .line 61
    if-eq p0, p1, :cond_8

    .line 62
    .line 63
    :goto_0
    const/4 p0, 0x0

    .line 64
    return p0

    .line 65
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 66
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/preferences/FolderSettings;->serverId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/fsck/k9/preferences/FolderSettings;->isInTopGroup:Z

    .line 10
    .line 11
    const/16 v2, 0x4d5

    .line 12
    .line 13
    const/16 v3, 0x4cf

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/fsck/k9/preferences/FolderSettings;->isIntegrate:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/fsck/k9/preferences/FolderSettings;->isSyncEnabled:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v1, v2

    .line 40
    :goto_2
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/fsck/k9/preferences/FolderSettings;->isVisible:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    move v1, v3

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v1, v2

    .line 50
    :goto_3
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/fsck/k9/preferences/FolderSettings;->isNotificationsEnabled:Z

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    move v1, v3

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move v1, v2

    .line 60
    :goto_4
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-boolean p0, p0, Lcom/fsck/k9/preferences/FolderSettings;->isPushEnabled:Z

    .line 64
    .line 65
    if-eqz p0, :cond_5

    .line 66
    .line 67
    move v2, v3

    .line 68
    :cond_5
    add-int/2addr v0, v2

    .line 69
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FolderSettings(serverId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/preferences/FolderSettings;->serverId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isInTopGroup="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/fsck/k9/preferences/FolderSettings;->isInTopGroup:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isIntegrate="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", isSyncEnabled="

    .line 29
    .line 30
    const-string v2, ", isVisible="

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/fsck/k9/preferences/FolderSettings;->isIntegrate:Z

    .line 33
    .line 34
    iget-boolean v4, p0, Lcom/fsck/k9/preferences/FolderSettings;->isSyncEnabled:Z

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ", isNotificationsEnabled="

    .line 40
    .line 41
    const-string v2, ", isPushEnabled="

    .line 42
    .line 43
    iget-boolean v3, p0, Lcom/fsck/k9/preferences/FolderSettings;->isVisible:Z

    .line 44
    .line 45
    iget-boolean v4, p0, Lcom/fsck/k9/preferences/FolderSettings;->isNotificationsEnabled:Z

    .line 46
    .line 47
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, ")"

    .line 51
    .line 52
    iget-boolean p0, p0, Lcom/fsck/k9/preferences/FolderSettings;->isPushEnabled:Z

    .line 53
    .line 54
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
