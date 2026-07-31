.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;


# instance fields
.field public final starredMessageCount:I

.field public final unreadMessageCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->unreadMessageCount:I

    .line 5
    .line 6
    iput p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->starredMessageCount:I

    .line 7
    .line 8
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
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;

    .line 10
    .line 11
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->unreadMessageCount:I

    .line 12
    .line 13
    iget v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->unreadMessageCount:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->starredMessageCount:I

    .line 19
    .line 20
    iget p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->starredMessageCount:I

    .line 21
    .line 22
    if-eq p0, p1, :cond_3

    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "unified_inbox"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPathDelimiter()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "/"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStarredMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->starredMessageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUnreadMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->unreadMessageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    sget-object v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolderType;->INBOX:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolderType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x2e6c1e79

    .line 8
    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->unreadMessageCount:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->starredMessageCount:I

    .line 19
    .line 20
    add-int/2addr v0, p0

    .line 21
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UnifiedDisplayFolder(id=unified_inbox, unifiedType="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolderType;->INBOX:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolderType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", unreadMessageCount="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->unreadMessageCount:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", starredMessageCount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->starredMessageCount:I

    .line 31
    .line 32
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
