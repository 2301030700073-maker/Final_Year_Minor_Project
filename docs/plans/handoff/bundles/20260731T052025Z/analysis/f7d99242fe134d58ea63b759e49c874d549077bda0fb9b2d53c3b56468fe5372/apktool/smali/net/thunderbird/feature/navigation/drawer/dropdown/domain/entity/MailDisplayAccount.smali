.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;


# instance fields
.field public final avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

.field public final color:I

.field public final email:Ljava/lang/String;

.field public final hasAutoExpandFolder:Z

.field public final hasError:Z

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final starredMessageCount:I

.field public final unreadMessageCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;ZIIZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->id:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->name:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->email:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->color:I

    .line 14
    .line 15
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 16
    .line 17
    iput-boolean p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasAutoExpandFolder:Z

    .line 18
    .line 19
    iput p7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->unreadMessageCount:I

    .line 20
    .line 21
    iput p8, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->starredMessageCount:I

    .line 22
    .line 23
    iput-boolean p9, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasError:Z

    .line 24
    .line 25
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
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->id:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->id:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->name:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->email:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->email:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->color:I

    .line 45
    .line 46
    iget v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->color:I

    .line 47
    .line 48
    if-eq v0, v1, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 52
    .line 53
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasAutoExpandFolder:Z

    .line 63
    .line 64
    iget-boolean v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasAutoExpandFolder:Z

    .line 65
    .line 66
    if-eq v0, v1, :cond_7

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_7
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->unreadMessageCount:I

    .line 70
    .line 71
    iget v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->unreadMessageCount:I

    .line 72
    .line 73
    if-eq v0, v1, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->starredMessageCount:I

    .line 77
    .line 78
    iget v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->starredMessageCount:I

    .line 79
    .line 80
    if-eq v0, v1, :cond_9

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_9
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasError:Z

    .line 84
    .line 85
    iget-boolean p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasError:Z

    .line 86
    .line 87
    if-eq p0, p1, :cond_a

    .line 88
    .line 89
    :goto_0
    const/4 p0, 0x0

    .line 90
    return p0

    .line 91
    :cond_a
    :goto_1
    const/4 p0, 0x1

    .line 92
    return p0
.end method

.method public final getHasError()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasError:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStarredMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->starredMessageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUnreadMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->unreadMessageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->email:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->color:I

    .line 23
    .line 24
    add-int/2addr v0, v2

    .line 25
    mul-int/2addr v0, v1

    .line 26
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, v0

    .line 33
    mul-int/2addr v2, v1

    .line 34
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasAutoExpandFolder:Z

    .line 35
    .line 36
    const/16 v3, 0x4d5

    .line 37
    .line 38
    const/16 v4, 0x4cf

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    move v0, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v3

    .line 45
    :goto_0
    add-int/2addr v2, v0

    .line 46
    mul-int/2addr v2, v1

    .line 47
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->unreadMessageCount:I

    .line 48
    .line 49
    add-int/2addr v2, v0

    .line 50
    mul-int/2addr v2, v1

    .line 51
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->starredMessageCount:I

    .line 52
    .line 53
    add-int/2addr v2, v0

    .line 54
    mul-int/2addr v2, v1

    .line 55
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasError:Z

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    move v3, v4

    .line 60
    :cond_1
    add-int/2addr v2, v3

    .line 61
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", name="

    .line 2
    .line 3
    const-string v1, ", email="

    .line 4
    .line 5
    const-string v2, "MailDisplayAccount(id="

    .line 6
    .line 7
    iget-object v3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->id:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->email:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", color="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->color:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", avatar="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", hasAutoExpandFolder="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasAutoExpandFolder:Z

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", unreadMessageCount="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", starredMessageCount="

    .line 56
    .line 57
    const-string v2, ", hasError="

    .line 58
    .line 59
    iget v3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->unreadMessageCount:I

    .line 60
    .line 61
    iget v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->starredMessageCount:I

    .line 62
    .line 63
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, ")"

    .line 67
    .line 68
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayAccount;->hasError:Z

    .line 69
    .line 70
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
