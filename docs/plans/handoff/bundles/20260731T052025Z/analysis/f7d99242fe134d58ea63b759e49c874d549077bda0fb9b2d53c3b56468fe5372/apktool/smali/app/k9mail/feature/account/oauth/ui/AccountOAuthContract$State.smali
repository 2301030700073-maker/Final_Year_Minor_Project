.class public final Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final emailAddress:Ljava/lang/String;

.field public final error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

.field public final hostname:Ljava/lang/String;

.field public final isGoogleSignIn:Z

.field public final isLoading:Z

.field public final wizardNavigationBarState:Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v3, p2

    .line 10
    :goto_0
    and-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    move-object v4, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v4, p3

    .line 17
    :goto_1
    new-instance v5, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 18
    .line 19
    const/16 p1, 0xe

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-direct {v5, p1, p2, p2, p2}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;-><init>(IZZZ)V

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    move-object v2, p0

    .line 29
    invoke-direct/range {v2 .. v8}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->hostname:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->emailAddress:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->wizardNavigationBarState:Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 37
    iput-boolean p4, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isGoogleSignIn:Z

    .line 38
    iput-object p5, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

    .line 39
    iput-boolean p6, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isLoading:Z

    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;ZI)Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;
    .locals 7

    .line 1
    iget-object v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->emailAddress:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->wizardNavigationBarState:Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 6
    .line 7
    and-int/lit8 v0, p4, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isGoogleSignIn:Z

    .line 12
    .line 13
    :cond_0
    move v4, p1

    .line 14
    and-int/lit8 p1, p4, 0x10

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

    .line 19
    .line 20
    :cond_1
    move-object v5, p2

    .line 21
    and-int/lit8 p1, p4, 0x20

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-boolean p3, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isLoading:Z

    .line 26
    .line 27
    :cond_2
    move v6, p3

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 41
    .line 42
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;-><init>(Ljava/lang/String;Ljava/lang/String;Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;ZLapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;Z)V

    .line 43
    .line 44
    .line 45
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
    instance-of v1, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

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
    check-cast p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->hostname:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->hostname:Ljava/lang/String;

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
    iget-object v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->emailAddress:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->emailAddress:Ljava/lang/String;

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
    iget-object v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->wizardNavigationBarState:Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 36
    .line 37
    iget-object v3, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->wizardNavigationBarState:Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

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
    iget-boolean v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isGoogleSignIn:Z

    .line 47
    .line 48
    iget-boolean v3, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isGoogleSignIn:Z

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

    .line 54
    .line 55
    iget-object v3, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

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
    iget-boolean p0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isLoading:Z

    .line 65
    .line 66
    iget-boolean p1, p1, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isLoading:Z

    .line 67
    .line 68
    if-eq p0, p1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->hostname:Ljava/lang/String;

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
    iget-object v2, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->emailAddress:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->wizardNavigationBarState:Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 17
    .line 18
    invoke-virtual {v2}, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-boolean v0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isGoogleSignIn:Z

    .line 25
    .line 26
    const/16 v3, 0x4d5

    .line 27
    .line 28
    const/16 v4, 0x4cf

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move v0, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v3

    .line 35
    :goto_0
    add-int/2addr v2, v0

    .line 36
    mul-int/2addr v2, v1

    .line 37
    iget-object v0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :goto_1
    add-int/2addr v2, v0

    .line 48
    mul-int/2addr v2, v1

    .line 49
    iget-boolean p0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isLoading:Z

    .line 50
    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    move v3, v4

    .line 54
    :cond_2
    add-int/2addr v2, v3

    .line 55
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", emailAddress="

    .line 2
    .line 3
    const-string v1, ", wizardNavigationBarState="

    .line 4
    .line 5
    const-string v2, "State(hostname="

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->hostname:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->emailAddress:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->wizardNavigationBarState:Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", isGoogleSignIn="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isGoogleSignIn:Z

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", error="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->error:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Error;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", isLoading="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-boolean p0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$State;->isLoading:Z

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
