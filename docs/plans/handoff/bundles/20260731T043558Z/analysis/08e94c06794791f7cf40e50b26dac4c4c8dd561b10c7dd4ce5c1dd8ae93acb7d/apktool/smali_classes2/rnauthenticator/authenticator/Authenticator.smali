.class public final Lrnauthenticator/authenticator/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J0\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u0013\u0012\u0004\u0012\u00020\r0\u0012J8\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00160\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010&\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010(\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0\u0013\u0012\u0004\u0012\u00020\r0\u0012J(\u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020,0\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u0010-\u001a\u00020\r2\u0006\u0010.\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u0013\u0012\u0004\u0012\u00020\r0\u0012J:\u00101\u001a\u00020\r2\u0008\u00102\u001a\u0004\u0018\u00010\u000f2\u0006\u0010$\u001a\u00020\u000f2\u0006\u00103\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040\u0013\u0012\u0004\u0012\u00020\r0\u0012J0\u00105\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002060\u0013\u0012\u0004\u0012\u00020\r0\u0012R\u001e\u0010\u0006\u001a\u00020\u00078\u0000@\u0000X\u0081.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u00067"
    }
    d2 = {
        "Lrnauthenticator/authenticator/Authenticator;",
        "",
        "config",
        "Lrnauthenticator/authenticator/Config;",
        "<init>",
        "(Lrnauthenticator/authenticator/Config;)V",
        "service",
        "Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;",
        "getService$propertyguru_react_native_authenticator_release",
        "()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;",
        "setService$propertyguru_react_native_authenticator_release",
        "(Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;)V",
        "signup",
        "",
        "email",
        "",
        "password",
        "callback",
        "Lkotlin/Function1;",
        "Lrnauthenticator/authenticator/Result;",
        "Lrnauthenticator/authenticator/model/Register;",
        "emailLogin",
        "Lrnauthenticator/authenticator/model/Token;",
        "socialLogin",
        "socialToken",
        "provider",
        "Lrnauthenticator/authenticator/SocialLoginProvider;",
        "otpLogin",
        "otpId",
        "otp",
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
        "verifyOTP",
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


# instance fields
.field public service:Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrnauthenticator/authenticator/Config;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lrnauthenticator/authenticator/di/DaggerBaseComponent;->builder()Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;

    move-result-object v0

    .line 13
    new-instance v1, Lrnauthenticator/authenticator/di/BaseModule;

    invoke-direct {v1, p1}, Lrnauthenticator/authenticator/di/BaseModule;-><init>(Lrnauthenticator/authenticator/Config;)V

    invoke-virtual {v0, v1}, Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;->baseModule(Lrnauthenticator/authenticator/di/BaseModule;)Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lrnauthenticator/authenticator/di/DaggerBaseComponent$Builder;->build()Lrnauthenticator/authenticator/di/BaseComponent;

    move-result-object p1

    .line 15
    invoke-interface {p1, p0}, Lrnauthenticator/authenticator/di/BaseComponent;->inject(Lrnauthenticator/authenticator/Authenticator;)V

    return-void
.end method


# virtual methods
.method public final deleteAccount(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->deleteAccount(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final emailLogin(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 11
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

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v1

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-static/range {v1 .. v10}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface$DefaultImpls;->login$default(Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final generateOTP(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string/jumbo v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->generateOTP(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;
    .locals 1

    .line 8
    iget-object v0, p0, Lrnauthenticator/authenticator/Authenticator;->service:Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "service"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final otpLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "otpId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "otp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v1

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v10}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface$DefaultImpls;->login$default(Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final resetPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    .line 43
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->resetPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string/jumbo v0, "newPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "refreshToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->setPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setService$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lrnauthenticator/authenticator/Authenticator;->service:Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    return-void
.end method

.method public final signup(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string/jumbo v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->signUp(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final socialLogin(Ljava/lang/String;Lrnauthenticator/authenticator/SocialLoginProvider;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrnauthenticator/authenticator/SocialLoginProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrnauthenticator/authenticator/Result<",
            "Lrnauthenticator/authenticator/model/Token;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "socialToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v1

    .line 33
    invoke-virtual {p2}, Lrnauthenticator/authenticator/SocialLoginProvider;->getValue()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x33

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v8, p3

    .line 31
    invoke-static/range {v1 .. v10}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface$DefaultImpls;->login$default(Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final updatePassword(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string/jumbo v0, "newPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->updatePassword(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final verifyEmail(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->verifyEmail(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final verifyOTP(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string/jumbo v0, "otpId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "otp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->verifyOtp(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final verifyResetPasswordToken(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->verifyResetPasswordToken(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final verifyUserExist(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    .line 66
    invoke-virtual {p0}, Lrnauthenticator/authenticator/Authenticator;->getService$propertyguru_react_native_authenticator_release()Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lrnauthenticator/authenticator/service/AuthenticationServiceInterface;->verifyUserExist(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
