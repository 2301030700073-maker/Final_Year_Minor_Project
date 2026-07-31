.class public final Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final repository:Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;->repository:Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Landroid/content/Intent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->label:I

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
    iput v1, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;-><init>(Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    if-eq v1, v5, :cond_3

    .line 39
    .line 40
    if-eq v1, v4, :cond_2

    .line 41
    .line 42
    if-ne v1, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-object p2

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v6

    .line 54
    :cond_2
    iget-object p1, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->L$1:Lnet/openid/appauth/AuthorizationResponse;

    .line 55
    .line 56
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_3
    iget-object p1, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->L$0:Landroid/content/Intent;

    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->L$0:Landroid/content/Intent;

    .line 70
    .line 71
    iput v5, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->label:I

    .line 72
    .line 73
    :try_start_0
    invoke-static {p1}, Lnet/openid/appauth/AuthorizationResponse;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;

    .line 74
    .line 75
    .line 76
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p2

    .line 79
    const-string v1, "Error deserializing AuthorizationResponse"

    .line 80
    .line 81
    new-array v5, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {p2, v1, v5}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move-object p2, v6

    .line 87
    :goto_1
    if-ne p2, v7, :cond_5

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_5
    :goto_2
    check-cast p2, Lnet/openid/appauth/AuthorizationResponse;

    .line 91
    .line 92
    iput-object v6, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->L$0:Landroid/content/Intent;

    .line 93
    .line 94
    iput-object p2, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->L$1:Lnet/openid/appauth/AuthorizationResponse;

    .line 95
    .line 96
    iput v4, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->label:I

    .line 97
    .line 98
    :try_start_1
    invoke-static {p1}, Lnet/openid/appauth/AuthorizationException;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;

    .line 99
    .line 100
    .line 101
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    goto :goto_3

    .line 103
    :catch_1
    move-exception p1

    .line 104
    const-string v1, "Error deserializing AuthorizationException"

    .line 105
    .line 106
    new-array v2, v2, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {p1, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object p1, v6

    .line 112
    :goto_3
    if-ne p1, v7, :cond_6

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_6
    move-object v8, p2

    .line 116
    move-object p2, p1

    .line 117
    move-object p1, v8

    .line 118
    :goto_4
    check-cast p2, Lnet/openid/appauth/AuthorizationException;

    .line 119
    .line 120
    if-eqz p1, :cond_8

    .line 121
    .line 122
    iput-object v6, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->L$0:Landroid/content/Intent;

    .line 123
    .line 124
    iput-object v6, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->L$1:Lnet/openid/appauth/AuthorizationResponse;

    .line 125
    .line 126
    iput v3, v0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn$execute$1;->label:I

    .line 127
    .line 128
    new-instance p2, Lkotlin/coroutines/SafeContinuation;

    .line 129
    .line 130
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->UNDECIDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 135
    .line 136
    invoke-direct {p2, v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/intrinsics/CoroutineSingletons;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lnet/openid/appauth/AuthorizationResponse;->createTokenExchangeRequest()Lnet/openid/appauth/TokenRequest;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object p0, p0, Lapp/k9mail/feature/account/oauth/domain/usecase/FinishOAuthSignIn;->repository:Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;

    .line 144
    .line 145
    iget-object p0, p0, Lapp/k9mail/feature/account/oauth/data/AuthorizationRepository;->service:Lnet/openid/appauth/AuthorizationService;

    .line 146
    .line 147
    new-instance v1, Lcom/beetstra/jutf7/Base64Util;

    .line 148
    .line 149
    const/16 v2, 0xb

    .line 150
    .line 151
    invoke-direct {v1, v2, p1, p2}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0, v1}, Lnet/openid/appauth/AuthorizationService;->performTokenRequest$1(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-ne p0, v7, :cond_7

    .line 162
    .line 163
    :goto_5
    return-object v7

    .line 164
    :cond_7
    return-object p0

    .line 165
    :cond_8
    if-eqz p2, :cond_9

    .line 166
    .line 167
    new-instance p0, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;

    .line 168
    .line 169
    invoke-direct {p0, p2}, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Failure;-><init>(Ljava/lang/Exception;)V

    .line 170
    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_9
    sget-object p0, Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Canceled;->INSTANCE:Lapp/k9mail/feature/account/oauth/domain/entity/AuthorizationResult$Canceled;

    .line 174
    .line 175
    :goto_6
    return-object p0
.end method
