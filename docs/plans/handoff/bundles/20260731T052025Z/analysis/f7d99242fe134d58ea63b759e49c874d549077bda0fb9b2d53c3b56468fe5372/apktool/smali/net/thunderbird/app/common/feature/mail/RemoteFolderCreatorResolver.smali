.class public final Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/backend/api/folder/RemoteFolderCreator$Factory;


# instance fields
.field public final accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

.field public final imapFactory:Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver;->imapFactory:Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;-><init>(Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p2

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    iget-object p1, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getById(Lnet/thunderbird/feature/account/AccountId;)Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p1, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 66
    .line 67
    iput v4, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->label:I

    .line 68
    .line 69
    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-ne p2, v5, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    :goto_1
    check-cast p2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 77
    .line 78
    if-eqz p2, :cond_7

    .line 79
    .line 80
    iget-object p2, p2, Lnet/thunderbird/core/android/account/LegacyAccount;->incomingServerSettings:Lcom/fsck/k9/mail/ServerSettings;

    .line 81
    .line 82
    iget-object p2, p2, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 83
    .line 84
    const-string v1, "imap"

    .line 85
    .line 86
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    iput-object v2, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->L$0:Lnet/thunderbird/feature/account/AccountId;

    .line 93
    .line 94
    iput v3, v0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver$create$1;->label:I

    .line 95
    .line 96
    iget-object p0, p0, Lnet/thunderbird/app/common/feature/mail/RemoteFolderCreatorResolver;->imapFactory:Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;

    .line 97
    .line 98
    invoke-virtual {p0, p1, v0}, Lnet/thunderbird/backend/imap/DefaultImapRemoteFolderCreatorFactory;->create(Lnet/thunderbird/feature/account/AccountId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-ne p0, v5, :cond_5

    .line 103
    .line 104
    :goto_2
    return-object v5

    .line 105
    :cond_5
    return-object p0

    .line 106
    :cond_6
    sget-object p0, Lnet/thunderbird/app/common/feature/mail/NoOpRemoteFolderCreator;->INSTANCE:Lnet/thunderbird/app/common/feature/mail/NoOpRemoteFolderCreator;

    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_7
    const-string p0, "Account not found: "

    .line 110
    .line 111
    invoke-static {p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v2
.end method
