.class public final Lrnauthenticator/authenticator/network/AuthenticationNetwork;
.super Ljava/lang/Object;
.source "AuthenticationNetwork.kt"

# interfaces
.implements Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthenticationNetwork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationNetwork.kt\nrnauthenticator/authenticator/network/AuthenticationNetwork\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J*\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00112\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00142\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u0015\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00162\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00192\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u001c2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020 2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010%\u001a\u00020\t2\u0006\u0010\n\u001a\u00020&2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010(\u001a\u00020\t2\u0006\u0010\n\u001a\u00020)2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010+\u001a\u00020\t2\u0006\u0010\n\u001a\u00020,2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016J*\u0010.\u001a\u00020\t2\u0006\u0010\n\u001a\u00020/2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000\u000e\u0012\u0004\u0012\u00020\t0\rH\u0016JN\u00101\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H20\u000e\u0012\u0004\u0012\u00020\t0\r\"\u0004\u0008\u0000\u001022\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H20\u000e\u0012\u0004\u0012\u00020\t0\r2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u0002040\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lrnauthenticator/authenticator/network/AuthenticationNetwork;",
        "Lrnauthenticator/authenticator/network/AuthenticationNetworkInterface;",
        "httpRequest",
        "Lrnauthenticator/authenticator/network/http/HttpRequest;",
        "endpoint",
        "Lrnauthenticator/authenticator/network/Endpoint;",
        "<init>",
        "(Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)V",
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
        "processResponse",
        "T",
        "parseErrorResponse",
        "",
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
.field private final endpoint:Lrnauthenticator/authenticator/network/Endpoint;

.field private final httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;


# direct methods
.method public static synthetic $r8$lambda$12SuoWL0abblQy6bGHLnUj117y8(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->setPassword$lambda$20(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2o5CSzar1uoWnkO0LUxSgpoiP8w(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse$lambda$26(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3KmVgQa5ER4B1sEGXMpLD_4rrGQ(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->verifyEmail$lambda$8(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6XP2DPUkjPhY2-LOXY2QMTWy8zc(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/AuthResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->login$lambda$3(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/AuthResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Dv9k3CYjyF-0LcgqA7-aYc2RUA8(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->verifyEmail$lambda$9(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GlUG9oSnL75cz_2izuALtzkLWRM(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->deleteAccount$lambda$17(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IE-d26jZ8KRNRUjOdfRfg9ahDvM(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->signUp$lambda$1(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OYt70Lr03j_PQiET9cWKb0a_J-k(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->verifyOtp$lambda$22(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pb-rKn3Na1dJ9emU3wdBvcfCXK4(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->verifyUserExist$lambda$14(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SkEP4d4Il6rqIELe2JE22xWBjNs(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->verifyOtp$lambda$23(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V8sTWEovcdt8bAtiU5i9OghyS1M(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/UserExistResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->verifyUserExist$lambda$15(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/UserExistResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XlmmKJTo48tEyOLkMgA0rjr7fuQ(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->deleteAccount$lambda$16(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z-_3MTlFKgfT5MGNh8u3QA5Ub_Q(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->resetPassword$lambda$6(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z4eeGP3qLEdRu4ULrdVwiU1aySs(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->verifyResetPasswordToken$lambda$12(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bXKfExg4Wm-xf1cDENiF7bW9H7w(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/AuthResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->exchangeToken$lambda$5(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/AuthResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d3lydtV3Ktp15GdTNYyi4vKxUZ4(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->updatePassword$lambda$11(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eFA2NPlXFL24a9_X_-0cvu-duwo(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->updatePassword$lambda$10(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gZxYtlTSSDCvThpsg1hvxwfOgIM(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->exchangeToken$lambda$4(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gaIK9j84yMyEpOAEUXo7utP8lfQ(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->resetPassword$lambda$7(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m5bGIAaTkxDZa8WchsjxO1lan3Q(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->setPassword$lambda$21(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rjrY0P9JXtHxhmnvWFyYBCo7RwA(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->verifyResetPasswordToken$lambda$13(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$saCbpCng1N3SYjRXLenUSN1QuUY(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->generateOTP$lambda$18(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uxTWrGFCPHwgoUV1F2BduqkJH7g(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->signUp$lambda$0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wgIibFpcB2Dl2ZX-0MPx9hG7tdE(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->login$lambda$2(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yqZtkxtG7FzYOcS_-ZcfbP3vYfs(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/OTPResponse;
    .locals 0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->generateOTP$lambda$19(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/OTPResponse;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lrnauthenticator/authenticator/network/http/HttpRequest;Lrnauthenticator/authenticator/network/Endpoint;)V
    .locals 1

    const-string v0, "httpRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 10
    iput-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    return-void
.end method

.method private static final deleteAccount$lambda$16(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toDeleteAccountError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final deleteAccount$lambda$17(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/DeleteAccountResponse;

    return-object p0
.end method

.method private static final exchangeToken$lambda$4(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toAuthError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final exchangeToken$lambda$5(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/AuthResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/AuthResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/AuthResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/AuthResponse;

    return-object p0
.end method

.method private static final generateOTP$lambda$18(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toGenerateOTPError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final generateOTP$lambda$19(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/OTPResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/OTPResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/OTPResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/OTPResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/OTPResponse;

    return-object p0
.end method

.method private static final login$lambda$2(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toAuthError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final login$lambda$3(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/AuthResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/AuthResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/AuthResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/AuthResponse;

    return-object p0
.end method

.method private final processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Result<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda14;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final processResponse$lambda$26(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 204
    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final resetPassword$lambda$6(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toResetPasswordError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final resetPassword$lambda$7(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/ResetPasswordResponse;

    return-object p0
.end method

.method private static final setPassword$lambda$20(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toSetPasswordError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final setPassword$lambda$21(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/SetPasswordResponse;

    return-object p0
.end method

.method private static final signUp$lambda$0(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toRegistrationError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final signUp$lambda$1(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/RegistrationResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/RegistrationResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/RegistrationResponse;

    return-object p0
.end method

.method private static final updatePassword$lambda$10(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toUpdatePasswordError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final updatePassword$lambda$11(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/UpdatePasswordResponse;

    return-object p0
.end method

.method private static final verifyEmail$lambda$8(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toEmailVerificationError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final verifyEmail$lambda$9(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/EmailVerificationResponse;

    return-object p0
.end method

.method private static final verifyOtp$lambda$22(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toGenerateOTPError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final verifyOtp$lambda$23(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/OtpVerificationResponse;

    return-object p0
.end method

.method private static final verifyResetPasswordToken$lambda$12(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toTokenVerificationError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final verifyResetPasswordToken$lambda$13(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/TokenVerificationResponse;

    return-object p0
.end method

.method private static final verifyUserExist$lambda$14(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lrnauthenticator/authenticator/network/model/response/AuthError;->Companion:Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;

    invoke-virtual {v1}, Lrnauthenticator/authenticator/network/model/response/AuthError$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toUserExistError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object p0

    invoke-static {v1, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonSerialize(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method private static final verifyUserExist$lambda$15(Lokhttp3/Response;)Lrnauthenticator/authenticator/network/model/response/UserExistResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lrnauthenticator/authenticator/network/model/response/UserExistResponse;->Companion:Lrnauthenticator/authenticator/network/model/response/UserExistResponse$Companion;

    invoke-virtual {v0}, Lrnauthenticator/authenticator/network/model/response/UserExistResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {v0, p0}, Lrnauthenticator/authenticator/network/JSONUtilsKt;->jsonParse(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrnauthenticator/authenticator/network/model/response/UserExistResponse;

    return-object p0
.end method


# virtual methods
.method public deleteAccount(Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 139
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 140
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->DELETE_ACCOUNT:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/DeleteAccountDataKt;->toQueryParams(Lrnauthenticator/authenticator/network/model/request/DeleteAccountData;)Ljava/util/Map;

    move-result-object v4

    .line 139
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda4;-><init>()V

    const/16 v8, 0x12

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->delete$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public exchangeToken(Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 45
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 46
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->TOKEN_EXCHANGE:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/CodeExchangeDataKt;->toRequestParams(Lrnauthenticator/authenticator/network/model/request/CodeExchangeData;)Ljava/util/Map;

    move-result-object v3

    .line 45
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda13;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda13;-><init>()V

    const/16 v8, 0x14

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public generateOTP(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;Lkotlin/jvm/functions/Function1;)V
    .locals 8
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 155
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 156
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->GENERATE_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationDataKt;->toRequestParams(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;)Ljava/util/Map;

    move-result-object v3

    .line 158
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationDataKt;->toQueryParams(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;)Ljava/util/Map;

    move-result-object v4

    .line 159
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationDataKt;->toHeaderParams(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda11;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda11;-><init>()V

    .line 155
    invoke-virtual/range {v1 .. v7}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public login(Lrnauthenticator/authenticator/network/model/request/AuthenticationData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda19;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 31
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    invoke-virtual {p1}, Lrnauthenticator/authenticator/network/model/request/AuthenticationData;->getOtp()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->OTP_LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->LOGIN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    :goto_1
    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 34
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/AuthenticationDataKt;->toRequestParams(Lrnauthenticator/authenticator/network/model/request/AuthenticationData;)Ljava/util/Map;

    move-result-object v3

    .line 32
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda20;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda20;-><init>()V

    const/16 v8, 0x14

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public resetPassword(Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda21;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 61
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 62
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->RESET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/ResetPasswordDataKt;->toQueryParams(Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;)Ljava/util/Map;

    move-result-object v4

    .line 64
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/ResetPasswordDataKt;->toRequestParams(Lrnauthenticator/authenticator/network/model/request/ResetPasswordData;)Ljava/util/Map;

    move-result-object v3

    .line 61
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda22;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda22;-><init>()V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public setPassword(Lrnauthenticator/authenticator/network/model/request/SetPasswordData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda17;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 173
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 174
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->SET_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/SetPasswordDataKt;->toRequestParams(Lrnauthenticator/authenticator/network/model/request/SetPasswordData;)Ljava/util/Map;

    move-result-object v3

    .line 176
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/SetPasswordDataKt;->toHeaderParams(Lrnauthenticator/authenticator/network/model/request/SetPasswordData;)Ljava/util/Map;

    move-result-object v6

    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda18;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda18;-><init>()V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 173
    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public signUp(Lrnauthenticator/authenticator/network/model/request/RegistrationData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda15;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 17
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 18
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->SIGN_UP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/RegistrationDataKt;->toQueryParams(Lrnauthenticator/authenticator/network/model/request/RegistrationData;)Ljava/util/Map;

    move-result-object v4

    .line 20
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/RegistrationDataKt;->toRequestParams(Lrnauthenticator/authenticator/network/model/request/RegistrationData;)Ljava/util/Map;

    move-result-object v3

    .line 17
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda16;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda16;-><init>()V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public updatePassword(Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 94
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 95
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->UPDATE_PASSWORD:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/UpdatePasswordDataKt;->toQueryParams(Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;)Ljava/util/Map;

    move-result-object v4

    .line 97
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/UpdatePasswordDataKt;->toRequestParams(Lrnauthenticator/authenticator/network/model/request/UpdatePasswordData;)Ljava/util/Map;

    move-result-object v3

    .line 94
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda2;-><init>()V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public verifyEmail(Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 78
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 79
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_EMAIL:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/EmailVerificationDataKt;->toQueryParams(Lrnauthenticator/authenticator/network/model/request/EmailVerificationData;)Ljava/util/Map;

    move-result-object v4

    .line 78
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda6;-><init>()V

    const/16 v8, 0x12

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public verifyOtp(Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda23;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 191
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 192
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_OTP:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {p1}, Lrnauthenticator/authenticator/network/model/request/OtpVerificationDataKt;->toRequestParams(Lrnauthenticator/authenticator/network/model/request/OtpVerificationData;)Ljava/util/Map;

    move-result-object v3

    .line 191
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda24;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda24;-><init>()V

    const/16 v8, 0x14

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->post$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public verifyResetPasswordToken(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 9
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

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, p2, v0}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v4

    .line 111
    iget-object v1, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 112
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v0, Lrnauthenticator/authenticator/network/Endpoint$Operation;->VERIFY_TOKEN:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v0}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "format(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v6, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda8;

    invoke-direct {v6}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda8;-><init>()V

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Lrnauthenticator/authenticator/network/http/HttpRequest;->get$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public verifyUserExist(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 10
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

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v1, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda9;-><init>()V

    invoke-direct {p0, p2, v1}, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->processResponse(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 123
    iget-object v2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->httpRequest:Lrnauthenticator/authenticator/network/http/HttpRequest;

    .line 124
    iget-object p2, p0, Lrnauthenticator/authenticator/network/AuthenticationNetwork;->endpoint:Lrnauthenticator/authenticator/network/Endpoint;

    sget-object v1, Lrnauthenticator/authenticator/network/Endpoint$Operation;->USER_EXIST:Lrnauthenticator/authenticator/network/Endpoint$Operation;

    invoke-virtual {p2, v1}, Lrnauthenticator/authenticator/network/Endpoint;->of$propertyguru_react_native_authenticator_release(Lrnauthenticator/authenticator/network/Endpoint$Operation;)Ljava/lang/String;

    move-result-object v3

    const/4 p2, 0x2

    .line 125
    new-array p2, p2, [Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "is_registration_in_progress"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 123
    new-instance v7, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda10;

    invoke-direct {v7}, Lrnauthenticator/authenticator/network/AuthenticationNetwork$$ExternalSyntheticLambda10;-><init>()V

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Lrnauthenticator/authenticator/network/http/HttpRequest;->get$default(Lrnauthenticator/authenticator/network/http/HttpRequest;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
