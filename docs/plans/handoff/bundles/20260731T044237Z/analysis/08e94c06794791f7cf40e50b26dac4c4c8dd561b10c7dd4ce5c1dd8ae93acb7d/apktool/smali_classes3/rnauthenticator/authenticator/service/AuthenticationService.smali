.class public final Lrnauthenticator/authenticator/service/AuthenticationService;
.super Ljava/lang/Object;
.source "AuthenticationService.kt"

# interfaces
.implements Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ2\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J^\u0010\u0013\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J2\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010!\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010#\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J*\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J2\u0010(\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J<\u0010,\u001a\u00020\u000b2\u0008\u0010-\u001a\u0004\u0018\u00010\r2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010.\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J2\u00100\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002010\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0016J2\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u0011\u0012\u0004\u0012\u00020\u000b0\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lrnauthenticator/authenticator/service/AuthenticationService;",
        "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;",
        "network",
        "Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;",
        "config",
        "Lrnauthenticator/authenticator/Config;",
        "pkce",
        "Lrnauthenticator/authenticator/security/PKCE;",
        "<init>",
        "(Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;Lrnauthenticator/authenticator/Config;Lrnauthenticator/authenticator/security/PKCE;)V",
        "signUp",
        "",
        "email",
        "",
        "password",
        "callback",
        "Lkotlin/Function1;",
        "Lrnauthenticator/authenticator/Result;",
        "Lrnauthenticator/authenticator/model/Register;",
        "login",
        "socialToken",
        "provider",
        "otpId",
        "otp",
        "Lrnauthenticator/authenticator/model/Token;",
        "resetPassword",
        "Lrnauthenticator/authenticator/model/ResetPassword;",
        "verifyEmail",
        "token",
        "Lrnauthenticator/authenticator/model/VerifiedEmail;",
        "updatePassword",
        "newPassword",
        "Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation;",
        "verifyResetPasswordToken",
        "Lrnauthenticator/authenticator/model/VerifiedToken;",
        "verifyUserExist",
        "Lrnauthenticator/authenticator/model/UserExist;",
        "deleteAccount",
        "userId",
        "Lrnauthenticator/authenticator/model/DeleteAccount;",
        "generateOTP",
        "recipient",
        "id",
        "Lrnauthenticator/authenticator/model/OTP;",
        "setPassword",
        "currentPassword",
        "refreshToken",
        "Lrnauthenticator/authenticator/model/SetPassword;",
        "verifyOtp",
        "Lrnauthenticator/authenticator/model/OtpVerification;",
        "exchange",
        "authCode",
        "codeVerifier",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final config:Lrnauthenticator/authenticator/Config;

.field private final network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

.field private final pkce:Lrnauthenticator/authenticator/security/PKCE;


# direct methods
.method public static synthetic $r8$lambda$LcpLPL3l9o_hRaUCglwdCLg34_k(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->setPassword$lambda$29(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OUQezRNiQfDycmkWT6xQg11Dxe0(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->verifyOtp$lambda$32(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QDowJcqvYMkCWt827f6ZJcK72wM(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->generateOTP$lambda$26(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R_9lr9GqPJd3dCpbNB-mERA5NdY(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->deleteAccount$lambda$23(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SedD5ZfPBYPBO85hIJLB1YP4ZG4(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->signUp$lambda$2(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YBP4P_bFxStM6rNrf5-6XNu_bSM(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->resetPassword$lambda$8(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZA8rka2FlOVL44mBUw078A31jEw(Lrnauthenticator/authenticator/service/AuthenticationService;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationService;->login$lambda$5(Lrnauthenticator/authenticator/service/AuthenticationService;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bqWe0AXrWtMf8uXafSrgGeZ6qQM(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->verifyUserExist$lambda$20(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lgWnEGbQt41cJmalIk2YRqqxDV4(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->exchange$lambda$35(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t4tO-GVEA4MOjGEPnaVQb4kkGc8(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->verifyResetPasswordToken$lambda$17(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xe794zpMgLd-ZHOqf7tavkUHMGw(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->updatePassword$lambda$14(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y38a53tMAxWrnBD_ouDaIE61yJA(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/authenticator/service/AuthenticationService;->verifyEmail$lambda$11(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;Lrnauthenticator/authenticator/Config;Lrnauthenticator/authenticator/security/PKCE;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkce"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    .line 12
    iput-object p2, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    .line 13
    iput-object p3, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->pkce:Lrnauthenticator/authenticator/security/PKCE;

    return-void
.end method

.method private static final deleteAccount$lambda$23(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 131
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;

    .line 132
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/DeleteAccountKt;->toDeleteAccount(Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;)Lrnauthenticator/authenticator/model/DeleteAccount;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final exchange(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/Token;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    .line 203
    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-static {v1, p1, p2}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateCodeExchangeData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;

    move-result-object p1

    .line 202
    new-instance p2, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->exchangeToken(Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final exchange$lambda$35(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 208
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/AuthResponse;

    .line 209
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/TokenKt;->toToken(Lrnauthenticator/authenticator/network/model/response/AuthResponse;)Lrnauthenticator/authenticator/model/Token;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final generateOTP$lambda$26(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 153
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/OTPResponse;

    .line 154
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/OTPKt;->toOTP(Lrnauthenticator/authenticator/network/model/response/OTPResponse;)Lrnauthenticator/authenticator/model/OTP;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final login$lambda$5(Lrnauthenticator/authenticator/service/AuthenticationService;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 48
    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/AuthResponse;

    .line 49
    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/Config;->getTokenExchangeFlow$propertyguru_react_native_authenticator_release()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 53
    :cond_0
    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/AuthResponse;->getAuthorizationCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->pkce:Lrnauthenticator/authenticator/security/PKCE;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/security/PKCE;->getCodeVerifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lrnauthenticator/authenticator/service/AuthenticationService;->exchange(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 50
    :cond_1
    new-instance p0, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/TokenKt;->toToken(Lrnauthenticator/authenticator/network/model/response/AuthResponse;)Lrnauthenticator/authenticator/model/Token;

    move-result-object p1

    invoke-direct {p0, p1}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 56
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 57
    new-instance p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {p1, p0}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final resetPassword$lambda$8(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 64
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;

    .line 65
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/ResetPasswordKt;->toResetPassword(Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;)Lrnauthenticator/authenticator/model/ResetPassword;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setPassword$lambda$29(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 175
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;

    .line 176
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/SetPasswordKt;->toSetPassword(Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;)Lrnauthenticator/authenticator/model/SetPassword;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 179
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final signUp$lambda$2(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;

    .line 18
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/RegisterKt;->toRegister(Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;)Lrnauthenticator/authenticator/model/Register;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updatePassword$lambda$14(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 95
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;

    .line 96
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/UpdatePasswordConfirmationKt;->toUpdatePassword(Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;)Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final verifyEmail$lambda$11(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 75
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;

    .line 76
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/VerifiedEmailKt;->toVerifiedEmail(Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;)Lrnauthenticator/authenticator/model/VerifiedEmail;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final verifyOtp$lambda$32(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 188
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;

    .line 189
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/OtpVerificationKt;->toOtpVerification(Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;)Lrnauthenticator/authenticator/model/OtpVerification;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final verifyResetPasswordToken$lambda$17(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 109
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;

    .line 110
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/VerifiedTokenKt;->toVerifiedToken(Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;)Lrnauthenticator/authenticator/model/VerifiedToken;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final verifyUserExist$lambda$20(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 120
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lrnauthenticator/authenticator/network/model/response/UserExistResponse;

    .line 121
    new-instance v1, Lrnauthenticator/authenticator/Result$Success;

    invoke-static {v0}, Lrnauthenticator/authenticator/model/UserExistKt;->toUserExist(Lrnauthenticator/authenticator/network/model/response/UserExistResponse;)Lrnauthenticator/authenticator/model/UserExist;

    move-result-object v0

    invoke-direct {v1, v0}, Lrnauthenticator/authenticator/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    new-instance v0, Lrnauthenticator/authenticator/Result$Error;

    invoke-direct {v0, p1}, Lrnauthenticator/authenticator/Result$Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public deleteAccount(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/DeleteAccount;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    invoke-static {p1}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateDeleteAccountData(Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;

    move-result-object p1

    new-instance v1, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, v1}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->deleteAccount(Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public generateOTP(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/OTP;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    .line 146
    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    .line 149
    invoke-virtual {v1}, Lrnauthenticator/authenticator/Config;->getRegion$propertyguru_react_native_authenticator_release()Ljava/lang/String;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-virtual {v3}, Lrnauthenticator/authenticator/Config;->getLocale()Lrnauthenticator/authenticator/Config$Locale;

    move-result-object v3

    invoke-virtual {v3}, Lrnauthenticator/authenticator/Config$Locale;->toShort$propertyguru_react_native_authenticator_release()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v1, p1, p2, v2, v3}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateOTPAuthenticationData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;

    move-result-object p1

    .line 145
    new-instance p2, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->generateOTP(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/Token;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    const-string v2, "callback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v2, v0, Lrnauthenticator/authenticator/service/AuthenticationService;->pkce:Lrnauthenticator/authenticator/security/PKCE;

    invoke-virtual {v2}, Lrnauthenticator/authenticator/security/PKCE;->generateKeys()V

    .line 36
    iget-object v2, v0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    .line 37
    iget-object v3, v0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    .line 44
    iget-object v4, v0, Lrnauthenticator/authenticator/service/AuthenticationService;->pkce:Lrnauthenticator/authenticator/security/PKCE;

    invoke-virtual {v4}, Lrnauthenticator/authenticator/security/PKCE;->getCodeChallenge()Ljava/lang/String;

    move-result-object v10

    .line 45
    iget-object v4, v0, Lrnauthenticator/authenticator/service/AuthenticationService;->pkce:Lrnauthenticator/authenticator/security/PKCE;

    invoke-virtual {v4}, Lrnauthenticator/authenticator/security/PKCE;->getChallengeMethod()Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;

    move-result-object v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 37
    invoke-static/range {v3 .. v11}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateAuthenticationData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;)Lrnauthenticator/authenticator/network/model/request/AuthenticationData;

    move-result-object v3

    .line 36
    new-instance v4, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;

    move-object/from16 v5, p6

    invoke-direct {v4, p0, v5, v1}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda10;-><init>(Lrnauthenticator/authenticator/service/AuthenticationService;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v2, v3, v4}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->login(Lrnauthenticator/authenticator/network/model/request/AuthenticationData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public resetPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/ResetPassword;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-static {v1, p1}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateResetPasswordData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;

    move-result-object p1

    new-instance v1, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, v1}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->resetPassword(Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/SetPassword;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    .line 169
    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-static {v1, p1, p2, p3}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateSetPasswordData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/SetPasswordData;

    move-result-object p1

    .line 168
    new-instance p2, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda8;

    invoke-direct {p2, p4}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->setPassword(Lrnauthenticator/authenticator/network/model/request/SetPasswordData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public signUp(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/Register;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-static {v1, p1, p2}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateRegistrationData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/RegistrationData;

    move-result-object p1

    new-instance p2, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda11;

    invoke-direct {p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->signUp(Lrnauthenticator/authenticator/network/model/request/RegistrationData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    .line 90
    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-static {v1, p1, p2}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateUpdatePasswordData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;

    move-result-object p1

    .line 89
    new-instance p2, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->updatePassword(Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public verifyEmail(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/VerifiedEmail;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-static {v1, p1}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateEmailVerificationData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;

    move-result-object p1

    new-instance v1, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, v1}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->verifyEmail(Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public verifyOtp(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/OtpVerification;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "otpId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    .line 186
    iget-object v1, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->config:Lrnauthenticator/authenticator/Config;

    invoke-static {v1, p1, p2}, Lrnauthenticator/authenticator/service/ParamUtilsKt;->generateOtpVerificationData(Lrnauthenticator/authenticator/Config;Ljava/lang/String;Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;

    move-result-object p1

    .line 185
    new-instance p2, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda6;

    invoke-direct {p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->verifyOtp(Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public verifyResetPasswordToken(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/VerifiedToken;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    new-instance v1, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, v1}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->verifyResetPasswordToken(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public verifyUserExist(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/UserExist;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lrnauthenticator/authenticator/service/AuthenticationService;->network:Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;

    new-instance v1, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Lrnauthenticator/authenticator/service/AuthenticationService$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, v1}, Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;->verifyUserExist(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
