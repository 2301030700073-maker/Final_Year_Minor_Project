.class public final Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;


# instance fields
.field public final error:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

.field public final formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

.field public final isLoading:Z

.field public final isManualSetup:Z

.field public final isSuccess:Z


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 5
    .line 6
    iput-boolean p2, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isManualSetup:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isSuccess:Z

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->error:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 11
    .line 12
    iput-boolean p5, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isLoading:Z

    .line 13
    .line 14
    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;ZI)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;
    .locals 6

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p5, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-boolean p1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isManualSetup:Z

    .line 13
    .line 14
    :goto_0
    move v2, p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    and-int/lit8 p1, p5, 0x4

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-boolean p2, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isSuccess:Z

    .line 23
    .line 24
    :cond_2
    move v3, p2

    .line 25
    and-int/lit8 p1, p5, 0x8

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object p3, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->error:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 30
    .line 31
    :cond_3
    move-object v4, p3

    .line 32
    and-int/lit8 p1, p5, 0x10

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    iget-boolean p4, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isLoading:Z

    .line 37
    .line 38
    :cond_4
    move v5, p4

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 43
    .line 44
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;-><init>(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;Z)V

    .line 45
    .line 46
    .line 47
    return-object v0
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
    instance-of v0, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isManualSetup:Z

    .line 23
    .line 24
    iget-boolean v1, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isManualSetup:Z

    .line 25
    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-boolean v0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isSuccess:Z

    .line 30
    .line 31
    iget-boolean v1, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isSuccess:Z

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->error:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 37
    .line 38
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->error:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isLoading:Z

    .line 48
    .line 49
    iget-boolean p1, p1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isLoading:Z

    .line 50
    .line 51
    if-eq p0, p1, :cond_6

    .line 52
    .line 53
    :goto_0
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final getError()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->error:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isManualSetup:Z

    .line 10
    .line 11
    const/16 v2, 0x4d5

    .line 12
    .line 13
    const/16 v3, 0x4cf

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isSuccess:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->error:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {v1}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :goto_2
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isLoading:Z

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    move v2, v3

    .line 51
    :cond_3
    add-int/2addr v0, v2

    .line 52
    return v0
.end method

.method public final isLoading()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isLoading:Z

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(formState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isManualSetup="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isManualSetup:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isSuccess="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isSuccess:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", error="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->error:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isLoading="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ")"

    .line 49
    .line 50
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->isLoading:Z

    .line 51
    .line 52
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
