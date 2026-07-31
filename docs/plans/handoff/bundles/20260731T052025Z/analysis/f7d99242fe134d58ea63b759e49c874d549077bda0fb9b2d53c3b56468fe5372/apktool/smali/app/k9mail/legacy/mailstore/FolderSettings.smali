.class public final Lapp/k9mail/legacy/mailstore/FolderSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final inTopGroup:Z

.field public final integrate:Z

.field public final isNotificationsEnabled:Z

.field public final isPushEnabled:Z

.field public final isSyncEnabled:Z

.field public final isVisible:Z

.field public final visibleLimit:I


# direct methods
.method public constructor <init>(IZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->visibleLimit:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isVisible:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isSyncEnabled:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isNotificationsEnabled:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isPushEnabled:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->inTopGroup:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->integrate:Z

    .line 17
    .line 18
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
    instance-of v1, p1, Lapp/k9mail/legacy/mailstore/FolderSettings;

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
    check-cast p1, Lapp/k9mail/legacy/mailstore/FolderSettings;

    .line 12
    .line 13
    iget v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->visibleLimit:I

    .line 14
    .line 15
    iget v3, p1, Lapp/k9mail/legacy/mailstore/FolderSettings;->visibleLimit:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isVisible:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lapp/k9mail/legacy/mailstore/FolderSettings;->isVisible:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isSyncEnabled:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lapp/k9mail/legacy/mailstore/FolderSettings;->isSyncEnabled:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isNotificationsEnabled:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lapp/k9mail/legacy/mailstore/FolderSettings;->isNotificationsEnabled:Z

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isPushEnabled:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lapp/k9mail/legacy/mailstore/FolderSettings;->isPushEnabled:Z

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->inTopGroup:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lapp/k9mail/legacy/mailstore/FolderSettings;->inTopGroup:Z

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget-boolean p0, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->integrate:Z

    .line 56
    .line 57
    iget-boolean p1, p1, Lapp/k9mail/legacy/mailstore/FolderSettings;->integrate:Z

    .line 58
    .line 59
    if-eq p0, p1, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->visibleLimit:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isVisible:Z

    .line 6
    .line 7
    const/16 v2, 0x4d5

    .line 8
    .line 9
    const/16 v3, 0x4cf

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isSyncEnabled:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move v1, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v1, v2

    .line 26
    :goto_1
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isNotificationsEnabled:Z

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move v1, v2

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isPushEnabled:Z

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    move v1, v3

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move v1, v2

    .line 46
    :goto_3
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->inTopGroup:Z

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    move v1, v3

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move v1, v2

    .line 56
    :goto_4
    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    iget-boolean p0, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->integrate:Z

    .line 60
    .line 61
    if-eqz p0, :cond_5

    .line 62
    .line 63
    move v2, v3

    .line 64
    :cond_5
    add-int/2addr v0, v2

    .line 65
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FolderSettings(visibleLimit="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->visibleLimit:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isVisible="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isVisible:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isSyncEnabled="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", isNotificationsEnabled="

    .line 29
    .line 30
    const-string v2, ", isPushEnabled="

    .line 31
    .line 32
    iget-boolean v3, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isSyncEnabled:Z

    .line 33
    .line 34
    iget-boolean v4, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isNotificationsEnabled:Z

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ", inTopGroup="

    .line 40
    .line 41
    const-string v2, ", integrate="

    .line 42
    .line 43
    iget-boolean v3, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->isPushEnabled:Z

    .line 44
    .line 45
    iget-boolean v4, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->inTopGroup:Z

    .line 46
    .line 47
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, ")"

    .line 51
    .line 52
    iget-boolean p0, p0, Lapp/k9mail/legacy/mailstore/FolderSettings;->integrate:Z

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
