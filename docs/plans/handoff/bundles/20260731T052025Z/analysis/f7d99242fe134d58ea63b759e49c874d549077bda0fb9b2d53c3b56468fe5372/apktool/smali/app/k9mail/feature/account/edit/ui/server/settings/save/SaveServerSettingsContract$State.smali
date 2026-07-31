.class public final Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;


# instance fields
.field public final error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

.field public final isLoading:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v0, v1}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;-><init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;Z)V

    return-void
.end method

.method public constructor <init>(Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 5
    .line 6
    iput-boolean p2, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->isLoading:Z

    .line 7
    .line 8
    return-void
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
    instance-of v1, p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

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
    check-cast p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

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
    iget-boolean p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->isLoading:Z

    .line 25
    .line 26
    iget-boolean p1, p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->isLoading:Z

    .line 27
    .line 28
    if-eq p0, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getError()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

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
    iget-object v0, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;->message:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-boolean p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->isLoading:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const/16 p0, 0x4cf

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/16 p0, 0x4d5

    .line 23
    .line 24
    :goto_1
    add-int/2addr v0, p0

    .line 25
    return v0
.end method

.method public final isLoading()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->isLoading:Z

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
    const-string v1, "State(error="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->error:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Failure$SaveServerSettingsFailed;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isLoading="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$State;->isLoading:Z

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
