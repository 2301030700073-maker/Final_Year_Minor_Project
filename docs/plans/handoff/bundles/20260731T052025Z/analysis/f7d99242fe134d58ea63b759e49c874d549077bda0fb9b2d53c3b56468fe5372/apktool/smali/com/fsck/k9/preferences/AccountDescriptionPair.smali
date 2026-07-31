.class public final Lcom/fsck/k9/preferences/AccountDescriptionPair;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authorizationNeeded:Z

.field public final imported:Lcom/fsck/k9/preferences/AccountDescription;

.field public final incomingPasswordNeeded:Z

.field public final incomingServerName:Ljava/lang/String;

.field public final original:Lcom/fsck/k9/preferences/AccountDescription;

.field public final outgoingPasswordNeeded:Z

.field public final outgoingServerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/preferences/AccountDescription;Lcom/fsck/k9/preferences/AccountDescription;ZZZLjava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/AccountDescription;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/AccountDescription;

    .line 13
    .line 14
    iput-boolean p3, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->authorizationNeeded:Z

    .line 15
    .line 16
    iput-boolean p4, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingPasswordNeeded:Z

    .line 17
    .line 18
    iput-boolean p5, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingPasswordNeeded:Z

    .line 19
    .line 20
    iput-object p6, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingServerName:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingServerName:Ljava/lang/String;

    .line 23
    .line 24
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
    instance-of v0, p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/AccountDescription;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/AccountDescription;

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
    iget-object v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/AccountDescription;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/AccountDescription;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->authorizationNeeded:Z

    .line 34
    .line 35
    iget-boolean v1, p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;->authorizationNeeded:Z

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingPasswordNeeded:Z

    .line 41
    .line 42
    iget-boolean v1, p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingPasswordNeeded:Z

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingPasswordNeeded:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingPasswordNeeded:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingServerName:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingServerName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-object p0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingServerName:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingServerName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_8

    .line 74
    .line 75
    :goto_0
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 78
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/AccountDescription;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/AccountDescription;->hashCode()I

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
    iget-object v2, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/AccountDescription;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/AccountDescription;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->authorizationNeeded:Z

    .line 19
    .line 20
    const/16 v3, 0x4d5

    .line 21
    .line 22
    const/16 v4, 0x4cf

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v3

    .line 29
    :goto_0
    add-int/2addr v2, v0

    .line 30
    mul-int/2addr v2, v1

    .line 31
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingPasswordNeeded:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move v0, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v0, v3

    .line 38
    :goto_1
    add-int/2addr v2, v0

    .line 39
    mul-int/2addr v2, v1

    .line 40
    iget-boolean v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingPasswordNeeded:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move v3, v4

    .line 45
    :cond_2
    add-int/2addr v2, v3

    .line 46
    mul-int/2addr v2, v1

    .line 47
    iget-object v0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingServerName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object p0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingServerName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr p0, v0

    .line 60
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AccountDescriptionPair(original="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->original:Lcom/fsck/k9/preferences/AccountDescription;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", imported="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->imported:Lcom/fsck/k9/preferences/AccountDescription;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", authorizationNeeded="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", incomingPasswordNeeded="

    .line 29
    .line 30
    const-string v2, ", outgoingPasswordNeeded="

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->authorizationNeeded:Z

    .line 33
    .line 34
    iget-boolean v4, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingPasswordNeeded:Z

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingPasswordNeeded:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", incomingServerName="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->incomingServerName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", outgoingServerName="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ")"

    .line 60
    .line 61
    iget-object p0, p0, Lcom/fsck/k9/preferences/AccountDescriptionPair;->outgoingServerName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
