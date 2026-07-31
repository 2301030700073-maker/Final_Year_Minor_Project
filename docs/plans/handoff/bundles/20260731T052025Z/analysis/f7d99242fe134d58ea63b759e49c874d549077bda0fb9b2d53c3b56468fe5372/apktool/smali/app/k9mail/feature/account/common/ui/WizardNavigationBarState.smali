.class public final Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final isBackEnabled:Z

.field public final isNextEnabled:Z

.field public final showBack:Z

.field public final showNext:Z


# direct methods
.method public constructor <init>(IZZZ)V
    .locals 3

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    and-int/lit8 v2, p1, 0x2

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move p2, v1

    .line 14
    :cond_1
    and-int/lit8 v2, p1, 0x4

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    move p3, v1

    .line 19
    :cond_2
    and-int/lit8 p1, p1, 0x8

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    move p4, v1

    .line 24
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-boolean v0, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isNextEnabled:Z

    .line 28
    .line 29
    iput-boolean p2, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showNext:Z

    .line 30
    .line 31
    iput-boolean p3, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isBackEnabled:Z

    .line 32
    .line 33
    iput-boolean p4, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showBack:Z

    .line 34
    .line 35
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
    instance-of v1, p1, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

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
    check-cast p1, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;

    .line 12
    .line 13
    iget-boolean v1, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isNextEnabled:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isNextEnabled:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showNext:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showNext:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isBackEnabled:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isBackEnabled:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showBack:Z

    .line 35
    .line 36
    iget-boolean p1, p1, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showBack:Z

    .line 37
    .line 38
    if-eq p0, p1, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isNextEnabled:Z

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
    iget-boolean v3, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showNext:Z

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
    iget-boolean v3, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isBackEnabled:Z

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
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showBack:Z

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_3
    add-int/2addr v0, v1

    .line 40
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WizardNavigationBarState(isNextEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isNextEnabled:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", showNext="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showNext:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isBackEnabled="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->isBackEnabled:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", showBack="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean p0, p0, Lapp/k9mail/feature/account/common/ui/WizardNavigationBarState;->showBack:Z

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
