.class public abstract Lnet/openid/appauth/AuthorizationException$GeneralErrors;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ID_TOKEN_PARSING_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final PROGRAM_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

.field public static final SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final USER_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Invalid discovery document"

    .line 3
    .line 4
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const-string v1, "User cancelled flow"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->USER_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const-string v1, "Flow cancelled programmatically"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->PROGRAM_CANCELED_AUTH_FLOW:Lnet/openid/appauth/AuthorizationException;

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    const-string v1, "Network error"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->NETWORK_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    const-string v1, "Server error"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    const-string v1, "JSON deserialization error"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->JSON_DESERIALIZATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 51
    .line 52
    const/4 v0, 0x6

    .line 53
    const-string v1, "Token response construction error"

    .line 54
    .line 55
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x7

    .line 59
    const-string v1, "Invalid registration response"

    .line 60
    .line 61
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x8

    .line 65
    .line 66
    const-string v1, "Unable to parse ID Token"

    .line 67
    .line 68
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_PARSING_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 73
    .line 74
    const/16 v0, 0x9

    .line 75
    .line 76
    const-string v1, "Invalid ID Token"

    .line 77
    .line 78
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lnet/openid/appauth/AuthorizationException$GeneralErrors;->ID_TOKEN_VALIDATION_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 83
    .line 84
    return-void
.end method
