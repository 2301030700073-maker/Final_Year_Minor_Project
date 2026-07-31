.class public final Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$authenticationCallback$1;
.super Landroidx/compose/ui/unit/IntRectKt;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$authenticationCallback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 p2, 0xb

    .line 5
    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    .line 8
    const/16 p2, 0xc

    .line 9
    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    const/16 p2, 0xe

    .line 13
    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    sget-object p1, Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError$Failed;->INSTANCE:Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError$Failed;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError$NotAvailable;->INSTANCE:Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError$NotAvailable;

    .line 20
    .line 21
    :goto_0
    iget-object p0, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$authenticationCallback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 22
    .line 23
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    instance-of p2, p2, Lkotlinx/coroutines/NotCompleted;

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    new-instance p2, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p2, p1, v0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticator$authenticate$2$authenticationCallback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of p1, p1, Lkotlinx/coroutines/NotCompleted;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 15
    .line 16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
