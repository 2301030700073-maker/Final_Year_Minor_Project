.class public final Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final bccEmail:Ljava/lang/String;

.field public final selectedSignatureLocations:Lkotlin/Pair;

.field public final senderEmail:Ljava/lang/String;

.field public final senderName:Ljava/lang/String;

.field public final signature:Ljava/lang/String;

.field public final signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

.field public final useSignature:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;Lkotlin/Pair;)V
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderName:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderEmail:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->bccEmail:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean p4, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->useSignature:Z

    .line 29
    .line 30
    iput-object p5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signature:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 33
    .line 34
    iput-object p7, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->selectedSignatureLocations:Lkotlin/Pair;

    .line 35
    .line 36
    return-void
.end method

.method public static copy$default(Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/Pair;I)Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;
    .locals 8

    .line 1
    and-int/lit8 v0, p7, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderName:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p7, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderEmail:Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p7, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->bccEmail:Ljava/lang/String;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    and-int/lit8 p1, p7, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-boolean p4, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->useSignature:Z

    .line 27
    .line 28
    :cond_3
    move v4, p4

    .line 29
    and-int/lit8 p1, p7, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-object p5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signature:Ljava/lang/String;

    .line 34
    .line 35
    :cond_4
    move-object v5, p5

    .line 36
    iget-object v6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 37
    .line 38
    and-int/lit8 p1, p7, 0x40

    .line 39
    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object p6, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->selectedSignatureLocations:Lkotlin/Pair;

    .line 43
    .line 44
    :cond_5
    move-object v7, p6

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 67
    .line 68
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;Lkotlin/Pair;)V

    .line 69
    .line 70
    .line 71
    return-object v0
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
    instance-of v1, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

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
    check-cast p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderEmail:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderEmail:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->bccEmail:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->bccEmail:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-boolean v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->useSignature:Z

    .line 47
    .line 48
    iget-boolean v3, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->useSignature:Z

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signature:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signature:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object p0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->selectedSignatureLocations:Lkotlin/Pair;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->selectedSignatureLocations:Lkotlin/Pair;

    .line 78
    .line 79
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderName:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderEmail:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->bccEmail:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-boolean v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->useSignature:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0x4cf

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v2, 0x4d5

    .line 30
    .line 31
    :goto_0
    add-int/2addr v0, v2

    .line 32
    mul-int/2addr v0, v1

    .line 33
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signature:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 40
    .line 41
    invoke-virtual {v2}, Lkotlin/collections/AbstractList;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v0

    .line 46
    mul-int/2addr v2, v1

    .line 47
    iget-object p0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->selectedSignatureLocations:Lkotlin/Pair;

    .line 48
    .line 49
    invoke-virtual {p0}, Lkotlin/Pair;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    add-int/2addr p0, v2

    .line 54
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", senderEmail="

    .line 2
    .line 3
    const-string v1, ", bccEmail="

    .line 4
    .line 5
    const-string v2, "State(senderName="

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->senderEmail:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->bccEmail:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", useSignature="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->useSignature:Z

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", signature="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signature:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", signatureLocations="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", selectedSignatureLocations="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;->selectedSignatureLocations:Lkotlin/Pair;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, ")"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
