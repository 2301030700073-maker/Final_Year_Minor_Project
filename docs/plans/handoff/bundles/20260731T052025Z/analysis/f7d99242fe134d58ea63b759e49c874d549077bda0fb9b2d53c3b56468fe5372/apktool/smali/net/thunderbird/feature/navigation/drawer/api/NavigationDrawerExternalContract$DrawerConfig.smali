.class public final Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final expandAllFolder:Z

.field public final showStarredCount:Z

.field public final showUnifiedFolders:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showUnifiedFolders:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showStarredCount:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->expandAllFolder:Z

    .line 9
    .line 10
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
    instance-of v1, p1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

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
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 12
    .line 13
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showUnifiedFolders:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showUnifiedFolders:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showStarredCount:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showStarredCount:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->expandAllFolder:Z

    .line 28
    .line 29
    iget-boolean p1, p1, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->expandAllFolder:Z

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
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showUnifiedFolders:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v3, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showStarredCount:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v1

    .line 21
    :goto_1
    add-int/2addr v0, v3

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->expandAllFolder:Z

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_2
    add-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DrawerConfig(showUnifiedFolders="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showUnifiedFolders:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", showStarredCount="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showStarredCount:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", expandAllFolder="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->expandAllFolder:Z

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
