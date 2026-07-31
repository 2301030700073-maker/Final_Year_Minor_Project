.class public final Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;
.super Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccount;

.field public final emailAddressValidator:Lcom/fsck/k9/EmailAddressValidator;

.field public final legacyAccountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

.field public final signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/core/common/resources/StringsResourceManager;Lcom/fsck/k9/EmailAddressValidator;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;

    .line 5
    .line 6
    new-instance v7, Lkotlin/Pair;

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const-string v5, ""

    .line 26
    .line 27
    sget-object v6, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 28
    .line 29
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$State;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;Lkotlin/Pair;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->legacyAccountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->emailAddressValidator:Lcom/fsck/k9/EmailAddressValidator;

    .line 40
    .line 41
    new-instance p3, Lkotlin/Pair;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast p2, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 49
    .line 50
    const v2, 0x7f120151

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v2}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {p3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lkotlin/Pair;

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const v4, 0x7f120150

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v4}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {v1, v3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-array p2, v2, [Lkotlin/Pair;

    .line 78
    .line 79
    aput-object p3, p2, v8

    .line 80
    .line 81
    aput-object v1, p2, v0

    .line 82
    .line 83
    invoke-static {p2}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->signatureLocations:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 88
    .line 89
    invoke-virtual {p1, p4}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    .line 95
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 96
    .line 97
    new-instance p1, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 p2, 0x4

    .line 100
    invoke-direct {p1, p2, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_0
    const-string p0, "Couldn\'t find account"

    .line 108
    .line 109
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p0, 0x0

    .line 113
    throw p0
.end method


# virtual methods
.method public final event(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderNameChange;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SenderEmailChange;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    instance-of v0, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$BccEmailChange;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    instance-of v0, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$UseSignatureChange;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    const/4 v1, 0x3

    .line 55
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    instance-of v0, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureLocationChange;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    const/4 v1, 0x4

    .line 69
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    instance-of v0, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SignatureChange;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;

    .line 81
    .line 82
    const/4 v1, 0x5

    .line 83
    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    instance-of v0, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$SavePressed;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iget-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->legacyAccountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 102
    .line 103
    .line 104
    sget-object p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$DoneUpdatingAccount;->INSTANCE:Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$DoneUpdatingAccount;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_6
    instance-of p1, p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Event$BackPressed;

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    sget-object p1, Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$Back;->INSTANCE:Lcom/fsck/k9/activity/setup/AccountSetupCompositionContract$Effect$Back;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->emitEffect(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 121
    .line 122
    .line 123
    return-void
.end method
