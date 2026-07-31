.class public final Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/account/server/settings/ui/common/Authenticator;


# static fields
.field public static final INSTANCE:Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1;->INSTANCE:Lnet/thunderbird/feature/account/server/settings/ui/common/BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final authenticate(Landroidx/navigation/compose/NavHostKt$NavHost$25$1;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 2
    .line 3
    sget-object p1, Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError$UnableToStart;->INSTANCE:Lnet/thunderbird/feature/account/server/settings/ui/common/AuthenticationError$UnableToStart;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method
