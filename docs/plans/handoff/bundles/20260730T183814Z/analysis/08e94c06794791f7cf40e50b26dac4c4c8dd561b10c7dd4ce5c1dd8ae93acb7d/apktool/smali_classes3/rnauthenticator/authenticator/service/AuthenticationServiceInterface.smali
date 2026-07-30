.class public interface abstract Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;
.super Ljava/lang/Object;
.source "AuthenticationServiceInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/authenticator/service/AuthenticationServiceInterface$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008`\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u00030\u0008H&Jj\u0010\u000b\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\t\u0012\u0004\u0012\u00020\u00030\u0008H&J*\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\t\u0012\u0004\u0012\u00020\u00030\u0008H&J*\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\t\u0012\u0004\u0012\u00020\u00030\u0008H&J2\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\t\u0012\u0004\u0012\u00020\u00030\u0008H&J*\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\t\u0012\u0004\u0012\u00020\u00030\u0008H&J*\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\t\u0012\u0004\u0012\u00020\u00030\u0008H&J*\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\t\u0012\u0004\u0012\u00020\u00030\u0008H&J2\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\t\u0012\u0004\u0012\u00020\u00030\u0008H&J<\u0010$\u001a\u00020\u00032\u0008\u0010%\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0\t\u0012\u0004\u0012\u00020\u00030\u0008H&J2\u0010(\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0\t\u0012\u0004\u0012\u00020\u00030\u0008H&\u00a8\u0006*"
    }
    d2 = {
        "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;",
        "",
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
.method public abstract deleteAccount(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract generateOTP(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract resetPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract setPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract signUp(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract updatePassword(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract verifyEmail(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract verifyOtp(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract verifyResetPasswordToken(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract verifyUserExist(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method
