.class public final Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationDataKt;
.super Ljava/lang/Object;
.source "OTPAuthenticationData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a\u0018\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003*\u00020\u0006H\u0000\u001a\u0018\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u0006H\u0000\u001a\u0018\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003*\u00020\u0006H\u0000\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\u001a\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "digitRegex",
        "Lkotlin/text/Regex;",
        "toRequestParams",
        "",
        "",
        "",
        "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;",
        "toQueryParams",
        "toHeaderParams",
        "getNotificationOptions",
        "Lrnauthenticator/authenticator/network/model/request/NotificationOptions;",
        "recipient",
        "isPhoneNumber",
        "",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final digitRegex:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\d+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationDataKt;->digitRegex:Lkotlin/text/Regex;

    return-void
.end method

.method private static final getNotificationOptions(Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/NotificationOptions;
    .locals 17

    .line 48
    invoke-static/range {p0 .. p0}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationDataKt;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lrnauthenticator/authenticator/network/model/request/NotificationOptions;

    .line 55
    const-string v7, "AUTH_IPP_MY_EN_SMS_OTP_TEMPLATE"

    .line 56
    const-string v8, "iProperty"

    .line 49
    const-string v2, "AUTH"

    const-string v3, "AUTH_API"

    const-string v4, "AUTH_SMS_OTP"

    const-string v5, "MY"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lrnauthenticator/authenticator/network/model/request/NotificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/request/NotificationOptions;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v10, "AUTH_MY"

    const-string v11, "AUTH_API_MY"

    const-string v12, "AUTH_EMAIL_OTP_MY"

    const-string v13, "MY"

    const-string v14, "AUTH/AUTH_API/AUTH_EMAIL_OTP/auth_ipp_email_otp.consumer.en.twig"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lrnauthenticator/authenticator/network/model/request/NotificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static final isPhoneNumber(Ljava/lang/String;)Z
    .locals 1

    .line 72
    sget-object v0, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationDataKt;->digitRegex:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final toHeaderParams(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const-string p0, "Content-Type"

    const-string v0, "application/json"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final toQueryParams(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 35
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "brand"

    const-string v2, "ipp"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 36
    const-string v1, "country"

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    const-string v1, "locale"

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;->getLocale()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 34
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final toRequestParams(Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "recipient"

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;->getRecipient()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    const-string v1, "id"

    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 20
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    invoke-virtual {p0}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationData;->getRecipient()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/request/OTPAuthenticationDataKt;->getNotificationOptions(Ljava/lang/String;)Lrnauthenticator/authenticator/network/model/request/NotificationOptions;

    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "notificationOptions"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 23
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 24
    new-instance v1, Lrnauthenticator/authenticator/network/model/request/OtpOptions;

    const/4 v3, 0x5

    const/16 v4, 0x12c

    invoke-direct {v1, v3, v4, v2}, Lrnauthenticator/authenticator/network/model/request/OtpOptions;-><init>(IIZ)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "otpOptions"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 17
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
