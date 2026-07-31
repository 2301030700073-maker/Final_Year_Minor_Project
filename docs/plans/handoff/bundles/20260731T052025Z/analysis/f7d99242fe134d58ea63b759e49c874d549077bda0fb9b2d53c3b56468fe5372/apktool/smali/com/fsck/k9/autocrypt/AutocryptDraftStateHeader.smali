.class public final Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final isByChoice:Z

.field public final isEncrypt:Z

.field public final isPgpInline:Z

.field public final isReply:Z

.field public final isSignOnly:Z

.field public final parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>(ZZZZZLjava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isEncrypt:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isSignOnly:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isReply:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isByChoice:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isPgpInline:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->parameters:Ljava/util/Map;

    .line 15
    .line 16
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
    instance-of v0, p1, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isEncrypt:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isEncrypt:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-boolean v0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isSignOnly:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isSignOnly:Z

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-boolean v0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isReply:Z

    .line 26
    .line 27
    iget-boolean v1, p1, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isReply:Z

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    iget-boolean v0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isByChoice:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isByChoice:Z

    .line 35
    .line 36
    if-eq v0, v1, :cond_5

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_5
    iget-boolean v0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isPgpInline:Z

    .line 40
    .line 41
    iget-boolean v1, p1, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isPgpInline:Z

    .line 42
    .line 43
    if-eq v0, v1, :cond_6

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_6
    iget-object p0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->parameters:Ljava/util/Map;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->parameters:Ljava/util/Map;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_7

    .line 55
    .line 56
    :goto_0
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isEncrypt:Z

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
    iget-boolean v3, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isSignOnly:Z

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
    iget-boolean v3, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isReply:Z

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    move v3, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v3, v1

    .line 31
    :goto_2
    add-int/2addr v0, v3

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isByChoice:Z

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    move v3, v2

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move v3, v1

    .line 41
    :goto_3
    add-int/2addr v0, v3

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget-boolean v3, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isPgpInline:Z

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    move v1, v2

    .line 49
    :cond_4
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->parameters:Ljava/util/Map;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    add-int/2addr p0, v0

    .line 59
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AutocryptDraftStateHeader(isEncrypt="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isEncrypt:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isSignOnly="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isSignOnly:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isReply="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", isByChoice="

    .line 29
    .line 30
    const-string v2, ", isPgpInline="

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isReply:Z

    .line 33
    .line 34
    iget-boolean v4, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isByChoice:Z

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->isPgpInline:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", parameters="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/fsck/k9/autocrypt/AutocryptDraftStateHeader;->parameters:Ljava/util/Map;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, ")"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
