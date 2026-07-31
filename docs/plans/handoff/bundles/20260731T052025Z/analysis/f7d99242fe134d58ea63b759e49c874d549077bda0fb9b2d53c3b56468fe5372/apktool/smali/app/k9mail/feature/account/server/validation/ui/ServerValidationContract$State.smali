.class public final Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final emailAddress:Ljava/lang/String;

.field public final error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

.field public final isLoading:Z

.field public final isSuccess:Z

.field public final needsAuthorization:Z

.field public final serverSettings:Lcom/fsck/k9/mail/ServerSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->emailAddress:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 7
    .line 8
    iput-boolean p3, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->needsAuthorization:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isSuccess:Z

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

    .line 13
    .line 14
    iput-boolean p6, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isLoading:Z

    .line 15
    .line 16
    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;ZI)Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;
    .locals 7

    .line 1
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->emailAddress:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 4
    .line 5
    and-int/lit8 v0, p5, 0x4

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->needsAuthorization:Z

    .line 10
    .line 11
    :cond_0
    move v3, p1

    .line 12
    and-int/lit8 p1, p5, 0x8

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-boolean p2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isSuccess:Z

    .line 17
    .line 18
    :cond_1
    move v4, p2

    .line 19
    and-int/lit8 p1, p5, 0x10

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p3, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

    .line 24
    .line 25
    :cond_2
    move-object v5, p3

    .line 26
    and-int/lit8 p1, p5, 0x20

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-boolean p4, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isLoading:Z

    .line 31
    .line 32
    :cond_3
    move v6, p4

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 37
    .line 38
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/ServerSettings;ZZLapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;Z)V

    .line 39
    .line 40
    .line 41
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
    instance-of v1, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

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
    check-cast p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->emailAddress:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->emailAddress:Ljava/lang/String;

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
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 25
    .line 26
    iget-object v3, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

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
    iget-boolean v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->needsAuthorization:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->needsAuthorization:Z

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-boolean v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isSuccess:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isSuccess:Z

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

    .line 50
    .line 51
    iget-object v3, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-boolean p0, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isLoading:Z

    .line 61
    .line 62
    iget-boolean p1, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isLoading:Z

    .line 63
    .line 64
    if-eq p0, p1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->emailAddress:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/fsck/k9/mail/ServerSettings;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-boolean v2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->needsAuthorization:Z

    .line 28
    .line 29
    const/16 v3, 0x4d5

    .line 30
    .line 31
    const/16 v4, 0x4cf

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    move v2, v4

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v2, v3

    .line 38
    :goto_2
    add-int/2addr v1, v2

    .line 39
    mul-int/lit8 v1, v1, 0x1f

    .line 40
    .line 41
    iget-boolean v2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isSuccess:Z

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    move v2, v4

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move v2, v3

    .line 48
    :goto_3
    add-int/2addr v1, v2

    .line 49
    mul-int/lit8 v1, v1, 0x1f

    .line 50
    .line 51
    iget-object v2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :goto_4
    add-int/2addr v1, v0

    .line 61
    mul-int/lit8 v1, v1, 0x1f

    .line 62
    .line 63
    iget-boolean p0, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isLoading:Z

    .line 64
    .line 65
    if-eqz p0, :cond_5

    .line 66
    .line 67
    move v3, v4

    .line 68
    :cond_5
    add-int/2addr v1, v3

    .line 69
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(emailAddress="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->emailAddress:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", serverSettings="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->serverSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", needsAuthorization="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", isSuccess="

    .line 29
    .line 30
    const-string v2, ", error="

    .line 31
    .line 32
    iget-boolean v3, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->needsAuthorization:Z

    .line 33
    .line 34
    iget-boolean v4, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isSuccess:Z

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->error:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Error;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", isLoading="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean p0, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;->isLoading:Z

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
