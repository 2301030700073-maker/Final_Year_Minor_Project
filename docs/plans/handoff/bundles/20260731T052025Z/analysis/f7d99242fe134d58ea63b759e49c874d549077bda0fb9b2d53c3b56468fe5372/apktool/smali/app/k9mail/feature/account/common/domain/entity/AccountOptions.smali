.class public final Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final checkFrequencyInMinutes:I

.field public final displayName:Ljava/lang/String;

.field public final emailSignature:Ljava/lang/String;

.field public final messageDisplayCount:I

.field public final showNotification:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->accountName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->displayName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p5, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->emailSignature:Ljava/lang/String;

    .line 15
    .line 16
    iput p1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->checkFrequencyInMinutes:I

    .line 17
    .line 18
    iput p2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->messageDisplayCount:I

    .line 19
    .line 20
    iput-boolean p6, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->showNotification:Z

    .line 21
    .line 22
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
    instance-of v0, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->accountName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->accountName:Ljava/lang/String;

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
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->displayName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->displayName:Ljava/lang/String;

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
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->emailSignature:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->emailSignature:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->checkFrequencyInMinutes:I

    .line 45
    .line 46
    iget v1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->checkFrequencyInMinutes:I

    .line 47
    .line 48
    if-eq v0, v1, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->messageDisplayCount:I

    .line 52
    .line 53
    iget v1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->messageDisplayCount:I

    .line 54
    .line 55
    if-eq v0, v1, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->showNotification:Z

    .line 59
    .line 60
    iget-boolean p1, p1, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->showNotification:Z

    .line 61
    .line 62
    if-eq p0, p1, :cond_7

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

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->accountName:Ljava/lang/String;

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
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->displayName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->emailSignature:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :goto_0
    add-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->checkFrequencyInMinutes:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    mul-int/2addr v0, v1

    .line 32
    iget v2, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->messageDisplayCount:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->showNotification:Z

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const/16 p0, 0x4cf

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 p0, 0x4d5

    .line 44
    .line 45
    :goto_1
    add-int/2addr v0, p0

    .line 46
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", displayName="

    .line 2
    .line 3
    const-string v1, ", emailSignature="

    .line 4
    .line 5
    const-string v2, "AccountOptions(accountName="

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->accountName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->displayName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->emailSignature:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", checkFrequencyInMinutes="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->checkFrequencyInMinutes:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", messageDisplayCount="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->messageDisplayCount:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", showNotification="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/domain/entity/AccountOptions;->showNotification:Z

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, ")"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
