.class public final Lcom/fsck/k9/account/AccountServerSettingsUpdater;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final updateServerSettings(Ljava/lang/String;ZLcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p5, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;->label:I

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
    iput v1, v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;-><init>(Lcom/fsck/k9/account/AccountServerSettingsUpdater;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object p1, v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;->L$0:Ljava/lang/String;

    .line 35
    .line 36
    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :goto_1
    move-object p0, v0

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :try_start_1
    iget-object p5, p0, Lcom/fsck/k9/account/AccountServerSettingsUpdater;->coroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 54
    .line 55
    new-instance v3, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    move-object v4, p0

    .line 59
    move-object v5, p1

    .line 60
    move v6, p2

    .line 61
    move-object v7, p3

    .line 62
    move-object v8, p4

    .line 63
    :try_start_2
    invoke-direct/range {v3 .. v9}, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$2;-><init>(Lcom/fsck/k9/account/AccountServerSettingsUpdater;Ljava/lang/String;ZLcom/fsck/k9/mail/ServerSettings;Lapp/k9mail/feature/account/common/domain/entity/AuthorizationState;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    iput-object v5, v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;->L$0:Ljava/lang/String;

    .line 67
    .line 68
    iput v2, v0, Lcom/fsck/k9/account/AccountServerSettingsUpdater$updateServerSettings$1;->label:I

    .line 69
    .line 70
    invoke-static {p5, v3, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 75
    .line 76
    if-ne p5, p0, :cond_3

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_3
    move-object p1, v5

    .line 80
    :goto_2
    :try_start_3
    check-cast p5, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    .line 82
    return-object p5

    .line 83
    :catch_1
    move-exception v0

    .line 84
    move-object p0, v0

    .line 85
    move-object p1, v5

    .line 86
    goto :goto_3

    .line 87
    :catch_2
    move-exception v0

    .line 88
    move-object v5, p1

    .line 89
    goto :goto_1

    .line 90
    :goto_3
    new-array p2, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    const/4 p3, 0x0

    .line 93
    aput-object p1, p2, p3

    .line 94
    .line 95
    const-string p1, "Error while updating account server settings with UUID %s"

    .line 96
    .line 97
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult$Failure;

    .line 101
    .line 102
    new-instance p2, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterFailure$UnknownError;

    .line 103
    .line 104
    invoke-direct {p2, p0}, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterFailure$UnknownError;-><init>(Ljava/lang/Exception;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, p2}, Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterResult$Failure;-><init>(Lapp/k9mail/feature/account/edit/AccountEditExternalContract$AccountUpdaterFailure;)V

    .line 108
    .line 109
    .line 110
    return-object p1
.end method
