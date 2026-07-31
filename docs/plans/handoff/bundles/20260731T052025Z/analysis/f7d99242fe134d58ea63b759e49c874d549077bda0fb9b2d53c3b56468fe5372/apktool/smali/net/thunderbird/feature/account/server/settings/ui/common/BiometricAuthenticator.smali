.class public final Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/account/server/settings/ui/common/Authenticator;


# instance fields
.field public final activity:Landroidx/appcompat/app/AppCompatActivity;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator;->title:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator;->subtitle:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final authenticate(Landroidx/navigation/compose/NavHostKt$NavHost$25$1;)Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$authenticationCallback$1;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$authenticationCallback$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator;->title:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez v3, :cond_6

    .line 27
    .line 28
    const v3, 0x80ff

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->isSupportedCombination(I)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_5

    .line 36
    .line 37
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->isDeviceCredentialAllowed(I)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "Negative text must be set and non-empty."

    .line 51
    .line 52
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :cond_1
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string p0, "Negative text must not be set if device credential authentication is allowed."

    .line 66
    .line 67
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v4

    .line 71
    :cond_3
    :goto_1
    new-instance v3, Landroidx/cardview/widget/CardView$1;

    .line 72
    .line 73
    const/4 v5, 0x4

    .line 74
    iget-object v6, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator;->subtitle:Ljava/lang/String;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-direct {v3, v5, v2, v6, v7}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    invoke-static {p0}, Landroidx/tracing/TraceApi29Impl;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :try_start_0
    new-instance v5, Landroidx/biometric/BiometricPrompt;

    .line 90
    .line 91
    invoke-direct {v5, p0, v2, p1}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/concurrent/Executor;Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$authenticationCallback$1;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v3}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/cardview/widget/CardView$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception p0

    .line 99
    const/4 p1, 0x2

    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    .line 101
    .line 102
    const-string v2, "Failed to start biometric authentication"

    .line 103
    .line 104
    aput-object v2, p1, v7

    .line 105
    .line 106
    aput-object p0, p1, v1

    .line 107
    .line 108
    const-string p0, "BiometricAuthenticator"

    .line 109
    .line 110
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    instance-of p0, p0, Lkotlinx/coroutines/NotCompleted;

    .line 118
    .line 119
    if-eqz p0, :cond_4

    .line 120
    .line 121
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 122
    .line 123
    sget-object p1, Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError$UnableToStart;->INSTANCE:Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError$UnableToStart;

    .line 124
    .line 125
    invoke-direct {p0, p1, v4}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_2
    sget-object p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$1;->INSTANCE:Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$1;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string p1, "Authenticator combination is unsupported on API "

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 149
    .line 150
    const-string v0, ": BIOMETRIC_WEAK | DEVICE_CREDENTIAL"

    .line 151
    .line 152
    invoke-static {p0, p1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v4

    .line 160
    :cond_6
    const-string p0, "Title must be set and non-empty."

    .line 161
    .line 162
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object v4
.end method
