.class public final Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountName:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final displayName:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;)V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 14
    .line 15
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 16
    .line 17
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 18
    .line 19
    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;I)Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 32
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;-><init>(Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;)V

    .line 34
    .line 35
    .line 36
    return-object p0
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
    instance-of v1, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

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
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;

    .line 12
    .line 13
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 14
    .line 15
    iget-object v3, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

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
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 25
    .line 26
    iget-object v3, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

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
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 36
    .line 37
    iget-object p1, p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 10
    .line 11
    invoke-virtual {v1}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    invoke-virtual {p0}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(accountName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->accountName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", displayName="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->displayName:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", emailSignature="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$State;->emailSignature:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
