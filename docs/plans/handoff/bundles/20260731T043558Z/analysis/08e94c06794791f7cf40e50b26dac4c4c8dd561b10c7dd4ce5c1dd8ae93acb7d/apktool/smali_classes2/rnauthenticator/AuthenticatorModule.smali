.class public final Lrnauthenticator/AuthenticatorModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "AuthenticatorModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    hasConstants = true
    name = "Authenticator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrnauthenticator/AuthenticatorModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J(\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010 \u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010#\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J(\u0010&\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010(\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J \u0010)\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lrnauthenticator/AuthenticatorModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "authenticator",
        "Lrnauthenticator/authenticator/Authenticator;",
        "getName",
        "",
        "initialize",
        "",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "emailLogin",
        "email",
        "password",
        "socialLogin",
        "socialToken",
        "provider",
        "otpLogin",
        "otpId",
        "otp",
        "signUp",
        "resetPassword",
        "verifyEmail",
        "token",
        "updatePassword",
        "newPassword",
        "verifyResetPasswordToken",
        "verifyUserExist",
        "deleteAccount",
        "userId",
        "generateOTP",
        "recipient",
        "id",
        "setPassword",
        "currentPassword",
        "refreshToken",
        "verifyOTP",
        "Companion",
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


# static fields
.field private static final APPLE:Ljava/lang/String; = "APPLE"

.field private static final CLIENT_TYPE:Ljava/lang/String; = "clientType"

.field private static final CONSUMER:Ljava/lang/String; = "CONSUMER"

.field private static final CUSTOMER:Ljava/lang/String; = "CUSTOMER"

.field public static final Companion:Lrnauthenticator/AuthenticatorModule$Companion;

.field private static final DEV:Ljava/lang/String; = "DEV"

.field private static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field private static final EN_AU:Ljava/lang/String; = "EN_AU"

.field private static final EN_MY:Ljava/lang/String; = "EN_MY"

.field private static final EN_SG:Ljava/lang/String; = "EN_SG"

.field private static final ERROR_TAG:Ljava/lang/String; = "E_AUTHENTICATOR"

.field private static final FACEBOOK:Ljava/lang/String; = "FACEBOOK"

.field private static final GOOGLE:Ljava/lang/String; = "GOOGLE"

.field private static final ID:Ljava/lang/String; = "ID"

.field private static final ID_ID:Ljava/lang/String; = "ID_ID"

.field private static final KEY_CLIENT_ID:Ljava/lang/String; = "clientId"

.field private static final KEY_CLIENT_SECRET:Ljava/lang/String; = "clientSecret"

.field private static final KEY_REDIRECT_URL:Ljava/lang/String; = "redirectUrl"

.field private static final KEY_REGISTRATION_TOKEN:Ljava/lang/String; = "registrationToken"

.field private static final LOCALE:Ljava/lang/String; = "locale"

.field private static final MARKET:Ljava/lang/String; = "market"

.field private static final MS_MY:Ljava/lang/String; = "MS_MY"

.field private static final MY:Ljava/lang/String; = "MY"

.field private static final OPTIONS:Ljava/lang/String; = "options"

.field private static final PROD:Ljava/lang/String; = "PROD"

.field public static final REACT_CLASS:Ljava/lang/String; = "Authenticator"

.field private static final SG:Ljava/lang/String; = "SG"

.field private static final STG:Ljava/lang/String; = "STG"

.field private static final TH:Ljava/lang/String; = "TH"

.field private static final TH_TH:Ljava/lang/String; = "TH_TH"

.field private static final TOKEN_EXCHANGE_FLOW:Ljava/lang/String; = "tokenExchangeFlow"


# instance fields
.field private authenticator:Lrnauthenticator/authenticator/Authenticator;


# direct methods
.method public static synthetic $r8$lambda$1ZNU509Avb8rZWEAXTLj-K-_lrY(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->generateOTP$lambda$21(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$34SXyii3apMCuYVNgtAzo7SvQCY(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->verifyUserExist$lambda$19(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7E5VH-z8XOM87B32UlnnZ1Nkzs0(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->deleteAccount$lambda$20(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Byc_Jg9q5JS87vsChhv9l6UTskI(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->socialLogin$lambda$12(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EPo4ZW30ih58MefN_vtK8D071o8(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->verifyEmail$lambda$16(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MDnTbkbrku-Xw4KIr38lLNuuta4(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->verifyResetPasswordToken$lambda$18(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OnbHeTomRGl8fc5TFDl2E_jSSWE(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->resetPassword$lambda$15(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UKYJForV60EY8nFhikRNW0oMDPY(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->otpLogin$lambda$13(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aVi_ZfrXfPOOdHNa4E-AVLa4NJc(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->emailLogin$lambda$11(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dtdEyu9dMlghdcQmu3JIB0hQJPw(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->signUp$lambda$14(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lG6ctgtMj9bnpfs61o3lPnc-bXA(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->verifyOTP$lambda$23(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zhBkIvoZ9c-OcB7q8vs1a7HO2nc(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->updatePassword$lambda$17(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ztzhFndr9J4sXIg1lFNYnpEdh1k(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lrnauthenticator/AuthenticatorModule;->setPassword$lambda$22(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrnauthenticator/AuthenticatorModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrnauthenticator/AuthenticatorModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrnauthenticator/AuthenticatorModule;->Companion:Lrnauthenticator/AuthenticatorModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method private static final deleteAccount$lambda$20(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/DeleteAccount;->Companion:Lrnauthenticator/authenticator/model/DeleteAccount$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/DeleteAccount$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 373
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 375
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 369
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final emailLogin$lambda$11(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/Token;->Companion:Lrnauthenticator/authenticator/model/Token$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/Token$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 186
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 182
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final generateOTP$lambda$21(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/OTP;->Companion:Lrnauthenticator/authenticator/model/OTP$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/OTP$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 392
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 394
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 388
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final otpLogin$lambda$13(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/Token;->Companion:Lrnauthenticator/authenticator/model/Token$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/Token$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 237
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 233
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final resetPassword$lambda$15(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/ResetPassword;->Companion:Lrnauthenticator/authenticator/model/ResetPassword$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/ResetPassword$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 275
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 271
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final setPassword$lambda$22(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/SetPassword;->Companion:Lrnauthenticator/authenticator/model/SetPassword$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/SetPassword$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 416
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 418
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 412
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final signUp$lambda$14(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/Register;->Companion:Lrnauthenticator/authenticator/model/Register$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/Register$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 256
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 252
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final socialLogin$lambda$12(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/Token;->Companion:Lrnauthenticator/authenticator/model/Token$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/Token$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 218
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 214
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final updatePassword$lambda$17(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 313
    sget-object v1, Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation;->Companion:Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/UpdatePasswordConfirmation$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    .line 314
    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 312
    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 316
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 309
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final verifyEmail$lambda$16(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/VerifiedEmail;->Companion:Lrnauthenticator/authenticator/model/VerifiedEmail$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/VerifiedEmail$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 294
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 290
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final verifyOTP$lambda$23(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/OtpVerification;->Companion:Lrnauthenticator/authenticator/model/OtpVerification$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/OtpVerification$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 435
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 431
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final verifyResetPasswordToken$lambda$18(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/VerifiedToken;->Companion:Lrnauthenticator/authenticator/model/VerifiedToken$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/VerifiedToken$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 335
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 331
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final verifyUserExist$lambda$19(Lcom/facebook/react/bridge/Promise;Lrnauthenticator/authenticator/Result;)Lkotlin/Unit;
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Success;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v1, Lrnauthenticator/authenticator/model/UserExist;->Companion:Lrnauthenticator/authenticator/model/UserExist$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/model/UserExist$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p1, Lrnauthenticator/authenticator/Result$Success;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json$Default;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    .line 354
    invoke-static {p1}, Lrnauthenticator/UtilsKt;->toWritableMap(Lkotlinx/serialization/json/JsonElement;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 356
    :cond_0
    instance-of v0, p1, Lrnauthenticator/authenticator/Result$Error;

    if-eqz v0, :cond_1

    check-cast p1, Lrnauthenticator/authenticator/Result$Error;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/Result$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p0, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 350
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final deleteAccount(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 364
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "Authenticator has not been initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 368
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda12;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, v1}, Lrnauthenticator/authenticator/Authenticator;->deleteAccount(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final emailLogin(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 177
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Authenticator has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "E_AUTHENTICATOR"

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 181
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda6;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, p2, v1}, Lrnauthenticator/authenticator/Authenticator;->emailLogin(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final generateOTP(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 383
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Authenticator has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "E_AUTHENTICATOR"

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 387
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, p2, v1}, Lrnauthenticator/authenticator/Authenticator;->generateOTP(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "Authenticator"

    return-object v0
.end method

.method public final initialize(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 12
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const-string v0, "clientId"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 79
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 78
    :goto_0
    const-string v0, "E_AUTHENTICATOR"

    if-nez v4, :cond_1

    .line 80
    move-object p1, p0

    check-cast p1, Lrnauthenticator/AuthenticatorModule;

    .line 81
    const-string p1, "Client ID must not be null"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    const-string v1, "clientSecret"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v2

    .line 89
    :goto_1
    const-string/jumbo v1, "redirectUrl"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_3
    move-object v7, v2

    .line 93
    :goto_2
    const-string/jumbo v1, "registrationToken"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    :cond_4
    const-string/jumbo v1, "options"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 98
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v2

    .line 102
    :goto_3
    const-string/jumbo v3, "tokenExchangeFlow"

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    :cond_6
    const-string v1, "environment"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 109
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x107f5

    if-eq v8, v9, :cond_b

    const v9, 0x14206

    if-eq v8, v9, :cond_9

    const v9, 0x259b57

    if-eq v8, v9, :cond_7

    goto :goto_4

    :cond_7
    const-string v8, "PROD"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 112
    :cond_8
    sget-object v1, Lrnauthenticator/authenticator/Config$Environment;->PROD:Lrnauthenticator/authenticator/Config$Environment;

    goto :goto_5

    .line 109
    :cond_9
    const-string v8, "STG"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    .line 111
    :cond_a
    sget-object v1, Lrnauthenticator/authenticator/Config$Environment;->STG:Lrnauthenticator/authenticator/Config$Environment;

    goto :goto_5

    .line 109
    :cond_b
    const-string v8, "DEV"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    .line 110
    :cond_c
    sget-object v1, Lrnauthenticator/authenticator/Config$Environment;->DEV:Lrnauthenticator/authenticator/Config$Environment;

    goto :goto_5

    .line 113
    :cond_d
    :goto_4
    sget-object v1, Lrnauthenticator/authenticator/Config$Environment;->DEV:Lrnauthenticator/authenticator/Config$Environment;

    goto :goto_5

    .line 115
    :cond_e
    sget-object v1, Lrnauthenticator/authenticator/Config$Environment;->DEV:Lrnauthenticator/authenticator/Config$Environment;

    :goto_5
    move-object v9, v1

    .line 118
    const-string v1, "market"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 120
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v10, 0x91b

    if-eq v8, v10, :cond_15

    const/16 v10, 0x9ac

    if-eq v8, v10, :cond_13

    const/16 v10, 0xa54

    if-eq v8, v10, :cond_11

    const/16 v10, 0xa74

    if-eq v8, v10, :cond_f

    goto :goto_6

    :cond_f
    const-string v8, "TH"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_6

    .line 124
    :cond_10
    sget-object v1, Lrnauthenticator/authenticator/Config$Market;->THAILAND:Lrnauthenticator/authenticator/Config$Market;

    goto :goto_7

    .line 120
    :cond_11
    const-string v8, "SG"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_6

    .line 121
    :cond_12
    sget-object v1, Lrnauthenticator/authenticator/Config$Market;->SINGAPORE:Lrnauthenticator/authenticator/Config$Market;

    goto :goto_7

    .line 120
    :cond_13
    const-string v8, "MY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_6

    .line 122
    :cond_14
    sget-object v1, Lrnauthenticator/authenticator/Config$Market;->MALAYSIA:Lrnauthenticator/authenticator/Config$Market;

    goto :goto_7

    .line 120
    :cond_15
    const-string v8, "ID"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_6

    .line 123
    :cond_16
    sget-object v1, Lrnauthenticator/authenticator/Config$Market;->INDONESIA:Lrnauthenticator/authenticator/Config$Market;

    goto :goto_7

    .line 125
    :cond_17
    :goto_6
    sget-object v1, Lrnauthenticator/authenticator/Config$Market;->MALAYSIA:Lrnauthenticator/authenticator/Config$Market;

    goto :goto_7

    .line 127
    :cond_18
    sget-object v1, Lrnauthenticator/authenticator/Config$Market;->MALAYSIA:Lrnauthenticator/authenticator/Config$Market;

    :goto_7
    move-object v10, v1

    .line 130
    const-string v1, "locale"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 132
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v8, "TH_TH"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_8

    .line 138
    :cond_19
    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->TH_TH:Lrnauthenticator/authenticator/Config$Locale;

    goto :goto_9

    .line 132
    :sswitch_1
    const-string v8, "MS_MY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_8

    .line 136
    :cond_1a
    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->MS_MY:Lrnauthenticator/authenticator/Config$Locale;

    goto :goto_9

    .line 132
    :sswitch_2
    const-string v8, "ID_ID"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_8

    .line 137
    :cond_1b
    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->ID_ID:Lrnauthenticator/authenticator/Config$Locale;

    goto :goto_9

    .line 132
    :sswitch_3
    const-string v8, "EN_SG"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_8

    .line 135
    :cond_1c
    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->EN_SG:Lrnauthenticator/authenticator/Config$Locale;

    goto :goto_9

    .line 132
    :sswitch_4
    const-string v8, "EN_MY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_8

    .line 134
    :cond_1d
    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->EN_MY:Lrnauthenticator/authenticator/Config$Locale;

    goto :goto_9

    .line 132
    :sswitch_5
    const-string v8, "EN_AU"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_8

    .line 133
    :cond_1e
    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->EN_AU:Lrnauthenticator/authenticator/Config$Locale;

    goto :goto_9

    .line 139
    :cond_1f
    :goto_8
    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->EN_AU:Lrnauthenticator/authenticator/Config$Locale;

    goto :goto_9

    .line 141
    :cond_20
    sget-object v1, Lrnauthenticator/authenticator/Config$Locale;->EN_AU:Lrnauthenticator/authenticator/Config$Locale;

    :goto_9
    move-object v11, v1

    .line 144
    const-string v1, "clientType"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 146
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    const-string v1, "CUSTOMER"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object p1, Lrnauthenticator/authenticator/Config$ClientType;->CUSTOMER:Lrnauthenticator/authenticator/Config$ClientType;

    goto :goto_a

    .line 148
    :cond_21
    const-string v1, "CONSUMER"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p1, Lrnauthenticator/authenticator/Config$ClientType;->CONSUMER:Lrnauthenticator/authenticator/Config$ClientType;

    goto :goto_a

    :cond_22
    move-object p1, v2

    :goto_a
    if-nez p1, :cond_23

    .line 152
    move-object p1, p0

    check-cast p1, Lrnauthenticator/AuthenticatorModule;

    .line 153
    const-string p1, "Client Type must not be null"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_23
    new-instance v0, Lrnauthenticator/authenticator/Config;

    .line 163
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    move-object v3, v0

    move-object v6, p1

    .line 157
    invoke-direct/range {v3 .. v11}, Lrnauthenticator/authenticator/Config;-><init>(Ljava/lang/String;Ljava/lang/String;Lrnauthenticator/authenticator/Config$ClientType;Ljava/lang/String;Ljava/util/Map;Lrnauthenticator/authenticator/Config$Environment;Lrnauthenticator/authenticator/Config$Market;Lrnauthenticator/authenticator/Config$Locale;)V

    .line 170
    new-instance p1, Lrnauthenticator/authenticator/Authenticator;

    invoke-direct {p1, v0}, Lrnauthenticator/authenticator/Authenticator;-><init>(Lrnauthenticator/authenticator/Config;)V

    iput-object p1, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    .line 171
    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3f1378a -> :sswitch_5
        0x3f13902 -> :sswitch_4
        0x3f139aa -> :sswitch_3
        0x4250abf -> :sswitch_2
        0x4643ae5 -> :sswitch_1
        0x4c1e01f -> :sswitch_0
    .end sparse-switch
.end method

.method public final otpLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "otpId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "otp"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 228
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Authenticator has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "E_AUTHENTICATOR"

    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 232
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda3;

    invoke-direct {v1, p4}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda3;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lrnauthenticator/authenticator/Authenticator;->otpLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final resetPassword(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 266
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "Authenticator has not been initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 270
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, v1}, Lrnauthenticator/authenticator/Authenticator;->resetPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "currentPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "refreshToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 407
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Authenticator has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "E_AUTHENTICATOR"

    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 411
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda5;

    invoke-direct {v1, p4}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda5;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lrnauthenticator/authenticator/Authenticator;->setPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final signUp(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 247
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Authenticator has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "E_AUTHENTICATOR"

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 251
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda10;

    invoke-direct {v1, p3}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda10;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, p2, v1}, Lrnauthenticator/authenticator/Authenticator;->signup(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final socialLogin(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "socialToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    const-string v1, "E_AUTHENTICATOR"

    if-nez v0, :cond_0

    .line 196
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Authenticator has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p3, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 200
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0x3b98b3a

    if-eq v0, v2, :cond_5

    const v2, 0x4c478ac6    # 5.230876E7f

    if-eq v0, v2, :cond_3

    const v2, 0x7da65239

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "GOOGLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    sget-object p2, Lrnauthenticator/authenticator/SocialLoginProvider;->GOOGLE:Lrnauthenticator/authenticator/SocialLoginProvider;

    goto :goto_1

    .line 200
    :cond_3
    const-string v0, "FACEBOOK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 201
    :cond_4
    sget-object p2, Lrnauthenticator/authenticator/SocialLoginProvider;->FACEBOOK:Lrnauthenticator/authenticator/SocialLoginProvider;

    goto :goto_1

    .line 200
    :cond_5
    const-string v0, "APPLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 207
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported social login provider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 205
    invoke-interface {p3, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 203
    :cond_6
    sget-object p2, Lrnauthenticator/authenticator/SocialLoginProvider;->APPLE:Lrnauthenticator/authenticator/SocialLoginProvider;

    .line 213
    :goto_1
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_7

    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_7
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda8;

    invoke-direct {v1, p3}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda8;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, p2, v1}, Lrnauthenticator/authenticator/Authenticator;->socialLogin(Ljava/lang/String;Lrnauthenticator/authenticator/SocialLoginProvider;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final updatePassword(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 304
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Authenticator has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "E_AUTHENTICATOR"

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 308
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p2, p1, v1}, Lrnauthenticator/authenticator/Authenticator;->updatePassword(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final verifyEmail(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 285
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "Authenticator has not been initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 289
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda7;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, v1}, Lrnauthenticator/authenticator/Authenticator;->verifyEmail(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final verifyOTP(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "otpId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "otp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 426
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Authenticator has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "E_AUTHENTICATOR"

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 430
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda11;

    invoke-direct {v1, p3}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda11;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, p2, v1}, Lrnauthenticator/authenticator/Authenticator;->verifyOTP(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final verifyResetPasswordToken(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 326
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "Authenticator has not been initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 330
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda4;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, v1}, Lrnauthenticator/authenticator/Authenticator;->verifyResetPasswordToken(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final verifyUserExist(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lrnauthenticator/AuthenticatorModule;->authenticator:Lrnauthenticator/authenticator/Authenticator;

    if-nez v0, :cond_0

    .line 345
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "Authenticator has not been initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "E_AUTHENTICATOR"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 349
    const-string v0, "authenticator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Lrnauthenticator/AuthenticatorModule$$ExternalSyntheticLambda9;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, p1, v1}, Lrnauthenticator/authenticator/Authenticator;->verifyUserExist(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
