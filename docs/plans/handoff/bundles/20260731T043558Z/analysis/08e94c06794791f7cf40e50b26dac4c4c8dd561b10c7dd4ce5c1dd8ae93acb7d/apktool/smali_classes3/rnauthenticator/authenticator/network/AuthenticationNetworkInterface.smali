.class public interface abstract Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;
.super Ljava/lang/Object;
.source "AuthenticationNetworkInterface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000b2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000e2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00102\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00132\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00162\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001a2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020 2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010\"\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020#2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010%\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020&2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J*\u0010(\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020)2\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&\u00a8\u0006+"
    }
    d2 = {
        "Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;",
        "",
        "signUp",
        "",
        "param",
        "Lrnauthenticator/authenticator/network/model/request/RegistrationData;",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;",
        "login",
        "Lrnauthenticator/authenticator/network/model/request/AuthenticationData;",
        "Lrnauthenticator/authenticator/network/model/response/AuthResponse;",
        "exchangeToken",
        "Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;",
        "resetPassword",
        "Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;",
        "Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;",
        "verifyEmail",
        "Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;",
        "Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;",
        "updatePassword",
        "Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;",
        "Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;",
        "verifyResetPasswordToken",
        "token",
        "",
        "Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;",
        "verifyUserExist",
        "email",
        "Lrnauthenticator/authenticator/network/model/response/UserExistResponse;",
        "deleteAccount",
        "Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;",
        "Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;",
        "generateOTP",
        "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;",
        "Lrnauthenticator/authenticator/network/model/response/OTPResponse;",
        "setPassword",
        "Lrnauthenticator/authenticator/network/model/request/SetPasswordData;",
        "Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;",
        "verifyOtp",
        "Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;",
        "Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;",
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


# virtual methods
.method public abstract deleteAccount(Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract exchangeToken(Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/AuthResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract generateOTP(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/OTPResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract login(Lrnauthenticator/authenticator/network/model/request/AuthenticationData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/AuthenticationData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/AuthResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetPassword(Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPassword(Lrnauthenticator/authenticator/network/model/request/SetPasswordData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/SetPasswordData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract signUp(Lrnauthenticator/authenticator/network/model/request/RegistrationData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/RegistrationData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePassword(Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyEmail(Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyOtp(Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyResetPasswordToken(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyUserExist(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lrnauthenticator/authenticator/network/model/response/UserExistResponse;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
