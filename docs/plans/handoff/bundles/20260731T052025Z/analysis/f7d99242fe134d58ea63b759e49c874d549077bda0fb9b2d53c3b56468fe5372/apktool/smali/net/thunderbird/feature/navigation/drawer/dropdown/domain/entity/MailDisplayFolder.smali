.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;


# instance fields
.field public final accountId:Ljava/lang/String;

.field public final folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

.field public final id:Ljava/lang/String;

.field public final isInTopGroup:Z

.field public final pathDelimiter:Ljava/lang/String;

.field public final starredMessageCount:I

.field public final unreadMessageCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/feature/mail/folder/api/Folder;ZIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->accountId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 10
    .line 11
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->isInTopGroup:Z

    .line 12
    .line 13
    iput p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->unreadMessageCount:I

    .line 14
    .line 15
    iput p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->starredMessageCount:I

    .line 16
    .line 17
    iput-object p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->pathDelimiter:Ljava/lang/String;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    :cond_0
    iget-wide p2, p2, Lnet/thunderbird/feature/mail/folder/api/Folder;->id:J

    .line 24
    .line 25
    new-instance p4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "_"

    .line 34
    .line 35
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->id:Ljava/lang/String;

    .line 46
    .line 47
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
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->accountId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->accountId:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/mail/folder/api/Folder;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->isInTopGroup:Z

    .line 34
    .line 35
    iget-boolean v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->isInTopGroup:Z

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->unreadMessageCount:I

    .line 41
    .line 42
    iget v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->unreadMessageCount:I

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->starredMessageCount:I

    .line 48
    .line 49
    iget v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->starredMessageCount:I

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->pathDelimiter:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->pathDelimiter:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_7

    .line 63
    .line 64
    :goto_0
    const/4 p0, 0x0

    .line 65
    return p0

    .line 66
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPathDelimiter()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->pathDelimiter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStarredMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->starredMessageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUnreadMessageCount()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->unreadMessageCount:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 14
    .line 15
    invoke-virtual {v1}, Lnet/thunderbird/feature/mail/folder/api/Folder;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->isInTopGroup:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x4cf

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v0, 0x4d5

    .line 30
    .line 31
    :goto_1
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->unreadMessageCount:I

    .line 35
    .line 36
    add-int/2addr v1, v0

    .line 37
    mul-int/lit8 v1, v1, 0x1f

    .line 38
    .line 39
    iget v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->starredMessageCount:I

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->pathDelimiter:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    add-int/2addr p0, v1

    .line 51
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MailDisplayFolder(accountId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->accountId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", folder="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isInTopGroup="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->isInTopGroup:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", unreadMessageCount="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->unreadMessageCount:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", starredMessageCount="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->starredMessageCount:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", pathDelimiter="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->pathDelimiter:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
