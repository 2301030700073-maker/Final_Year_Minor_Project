.class public final Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;


# instance fields
.field public final error:Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

.field public final isLoading:Z


# direct methods
.method public constructor <init>(ZLapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->isLoading:Z

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->error:Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 7
    .line 8
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
    instance-of v0, p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;

    .line 10
    .line 11
    iget-boolean v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->isLoading:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->isLoading:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->error:Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 19
    .line 20
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->error:Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 21
    .line 22
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_3

    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method public final getError()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->error:Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->isLoading:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->error:Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;->message:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    :goto_1
    add-int/2addr v0, p0

    .line 25
    return v0
.end method

.method public final isLoading()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->isLoading:Z

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
    const-string v1, "State(isLoading="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->isLoading:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", error="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/createaccount/CreateAccountContract$State;->error:Lapp/k9mail/feature/account/setup/AccountSetupExternalContract$AccountCreator$AccountCreatorResult$Error;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
