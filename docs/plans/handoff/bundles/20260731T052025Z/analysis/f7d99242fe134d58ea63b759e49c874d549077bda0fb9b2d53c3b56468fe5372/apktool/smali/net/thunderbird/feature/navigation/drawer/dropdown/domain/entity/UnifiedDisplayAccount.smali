.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;


# instance fields
.field public final hasError:Z

.field public final starredMessageCount:I

.field public final unreadMessageCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->unreadMessageCount:I

    .line 5
    .line 6
    iput p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->starredMessageCount:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->hasError:Z

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
    instance-of v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;

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
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;

    .line 12
    .line 13
    iget v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->unreadMessageCount:I

    .line 14
    .line 15
    iget v3, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->unreadMessageCount:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->starredMessageCount:I

    .line 21
    .line 22
    iget v3, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->starredMessageCount:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->hasError:Z

    .line 28
    .line 29
    iget-boolean p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->hasError:Z

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

.method public final getHasError()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->hasError:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "unified_account"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStarredMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->starredMessageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUnreadMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->unreadMessageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->unreadMessageCount:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->starredMessageCount:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->hasError:Z

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
    const-string v0, ", starredMessageCount="

    .line 2
    .line 3
    const-string v1, ", hasError="

    .line 4
    .line 5
    const-string v2, "UnifiedDisplayAccount(unreadMessageCount="

    .line 6
    .line 7
    iget v3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->unreadMessageCount:I

    .line 8
    .line 9
    iget v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->starredMessageCount:I

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
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayAccount;->hasError:Z

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
