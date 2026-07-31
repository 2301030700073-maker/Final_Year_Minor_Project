.class public final Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/core/ui/compose/designsystem/molecule/LoadingErrorState;


# instance fields
.field public final authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

.field public final autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

.field public final configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

.field public final configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

.field public final emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

.field public final isLoading:Z

.field public final isNextButtonVisible:Z

.field public final password:Lnet/thunderbird/core/validation/input/StringInputField;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZ)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 38
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 39
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 40
    iput-object p4, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 41
    iput-object p5, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 42
    iput-object p6, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 43
    iput-object p7, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 44
    iput-boolean p8, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isLoading:Z

    .line 45
    iput-boolean p9, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isNextButtonVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/core/validation/input/StringInputField;I)V
    .locals 12

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    new-instance p1, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 8
    .line 9
    invoke-direct {p1, v1, v0}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    move-object v4, p1

    .line 13
    new-instance v5, Lnet/thunderbird/core/validation/input/StringInputField;

    .line 14
    .line 15
    invoke-direct {v5, v1, v0}, Lnet/thunderbird/core/validation/input/StringInputField;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    new-instance v7, Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-direct {v7, v1, v1, p1}, Lnet/thunderbird/core/validation/input/BooleanInputField;-><init>(Ljava/lang/Boolean;Lnet/thunderbird/core/validation/ValidationError;Z)V

    .line 22
    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x1

    .line 26
    sget-object v3, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;->EMAIL_ADDRESS:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v2 .. v11}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;-><init>(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static copy$default(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZI)Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;
    .locals 10

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    and-int/lit8 p1, v0, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 15
    .line 16
    :cond_1
    move-object v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p3, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 22
    .line 23
    :cond_2
    move-object v3, p3

    .line 24
    and-int/lit8 p1, v0, 0x8

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p4, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 29
    .line 30
    :cond_3
    move-object v4, p4

    .line 31
    and-int/lit8 p1, v0, 0x10

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object p5, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 36
    .line 37
    :cond_4
    move-object v5, p5

    .line 38
    and-int/lit8 p1, v0, 0x20

    .line 39
    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 43
    .line 44
    move-object v6, p1

    .line 45
    goto :goto_0

    .line 46
    :cond_5
    move-object/from16 v6, p6

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    and-int/lit16 p1, v0, 0x80

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    iget-object p1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 56
    .line 57
    move-object v7, p1

    .line 58
    goto :goto_1

    .line 59
    :cond_6
    move-object/from16 v7, p7

    .line 60
    .line 61
    :goto_1
    and-int/lit16 p1, v0, 0x100

    .line 62
    .line 63
    if-eqz p1, :cond_7

    .line 64
    .line 65
    iget-boolean p1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isLoading:Z

    .line 66
    .line 67
    move v8, p1

    .line 68
    goto :goto_2

    .line 69
    :cond_7
    move/from16 v8, p8

    .line 70
    .line 71
    :goto_2
    and-int/lit16 p1, v0, 0x200

    .line 72
    .line 73
    if-eqz p1, :cond_8

    .line 74
    .line 75
    iget-boolean p1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isNextButtonVisible:Z

    .line 76
    .line 77
    move v9, p1

    .line 78
    goto :goto_3

    .line 79
    :cond_8
    move/from16 v9, p9

    .line 80
    .line 81
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 97
    .line 98
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;-><init>(Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;Lnet/thunderbird/core/validation/input/BooleanInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;ZZ)V

    .line 99
    .line 100
    .line 101
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
    instance-of v0, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 30
    .line 31
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 41
    .line 42
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 52
    .line 53
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 63
    .line 64
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 74
    .line 75
    iget-object v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_8

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    iget-boolean v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isLoading:Z

    .line 85
    .line 86
    iget-boolean v1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isLoading:Z

    .line 87
    .line 88
    if-eq v0, v1, :cond_9

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_9
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isNextButtonVisible:Z

    .line 92
    .line 93
    iget-boolean p1, p1, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isNextButtonVisible:Z

    .line 94
    .line 95
    if-eq p0, p1, :cond_a

    .line 96
    .line 97
    :goto_0
    const/4 p0, 0x0

    .line 98
    return p0

    .line 99
    :cond_a
    :goto_1
    const/4 p0, 0x1

    .line 100
    return p0
.end method

.method public final getError()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

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
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    invoke-virtual {v0}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    move v2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v2}, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    :goto_0
    add-int/2addr v0, v2

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v2, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 42
    .line 43
    invoke-virtual {v2}, Lnet/thunderbird/core/validation/input/BooleanInputField;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    add-int/2addr v2, v0

    .line 48
    mul-int/lit8 v2, v2, 0x1f

    .line 49
    .line 50
    iget-object v0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    move v0, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v0}, Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :goto_1
    add-int/2addr v2, v0

    .line 61
    mul-int/lit8 v2, v2, 0x1f

    .line 62
    .line 63
    const/16 v0, 0x4d5

    .line 64
    .line 65
    add-int/2addr v2, v0

    .line 66
    mul-int/lit8 v2, v2, 0x1f

    .line 67
    .line 68
    iget-object v3, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 69
    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    :goto_2
    add-int/2addr v2, v1

    .line 78
    mul-int/lit8 v2, v2, 0x1f

    .line 79
    .line 80
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isLoading:Z

    .line 81
    .line 82
    const/16 v3, 0x4cf

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    move v1, v3

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move v1, v0

    .line 89
    :goto_3
    add-int/2addr v2, v1

    .line 90
    mul-int/lit8 v2, v2, 0x1f

    .line 91
    .line 92
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isNextButtonVisible:Z

    .line 93
    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    move v0, v3

    .line 97
    :cond_4
    add-int/2addr v2, v0

    .line 98
    return v2
.end method

.method public final isLoading()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isLoading:Z

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
    const-string v1, "State(configStep="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configStep:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$ConfigStep;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", emailAddress="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->emailAddress:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", password="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", autoDiscoverySettings="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->autoDiscoverySettings:Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", configurationApproved="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->configurationApproved:Lnet/thunderbird/core/validation/input/BooleanInputField;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", authorizationState="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->authorizationState:Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", isSuccess=false, error="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->error:Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$Error;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", isLoading="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isLoading:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", isNextButtonVisible="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ")"

    .line 89
    .line 90
    iget-boolean p0, p0, Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryContract$State;->isNextButtonVisible:Z

    .line 91
    .line 92
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
