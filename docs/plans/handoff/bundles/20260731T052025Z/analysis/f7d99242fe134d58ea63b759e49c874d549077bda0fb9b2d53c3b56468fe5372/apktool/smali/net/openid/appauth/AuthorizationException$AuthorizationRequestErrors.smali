.class public abstract Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

.field public static final OTHER:Lnet/openid/appauth/AuthorizationException;

.field public static final SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

.field public static final STATE_MISMATCH:Lnet/openid/appauth/AuthorizationException;

.field public static final STRING_TO_EXCEPTION:Ljava/util/Map;

.field public static final TEMPORARILY_UNAVAILABLE:Lnet/openid/appauth/AuthorizationException;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    const-string v1, "invalid_request"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->INVALID_REQUEST:Lnet/openid/appauth/AuthorizationException;

    .line 10
    .line 11
    const/16 v1, 0x3e9

    .line 12
    .line 13
    const-string v2, "unauthorized_client"

    .line 14
    .line 15
    invoke-static {v2, v1}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v2, 0x3ea

    .line 20
    .line 21
    const-string v3, "access_denied"

    .line 22
    .line 23
    invoke-static {v3, v2}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v3, 0x3eb

    .line 28
    .line 29
    const-string/jumbo v4, "unsupported_response_type"

    .line 30
    .line 31
    .line 32
    invoke-static {v4, v3}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/16 v4, 0x3ec

    .line 37
    .line 38
    const-string v5, "invalid_scope"

    .line 39
    .line 40
    invoke-static {v5, v4}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/16 v5, 0x3ed

    .line 45
    .line 46
    const-string v6, "server_error"

    .line 47
    .line 48
    invoke-static {v6, v5}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    sput-object v5, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->SERVER_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 53
    .line 54
    const/16 v6, 0x3ee

    .line 55
    .line 56
    const-string v7, "temporarily_unavailable"

    .line 57
    .line 58
    invoke-static {v7, v6}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    sput-object v6, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->TEMPORARILY_UNAVAILABLE:Lnet/openid/appauth/AuthorizationException;

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    const/16 v8, 0x3ef

    .line 66
    .line 67
    invoke-static {v7, v8}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    sput-object v8, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->CLIENT_ERROR:Lnet/openid/appauth/AuthorizationException;

    .line 72
    .line 73
    const/16 v9, 0x3f0

    .line 74
    .line 75
    invoke-static {v7, v9}, Lnet/openid/appauth/AuthorizationException;->access$100(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    sput-object v7, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    .line 80
    .line 81
    const-string v9, "Response state param did not match request state"

    .line 82
    .line 83
    const/16 v10, 0x9

    .line 84
    .line 85
    invoke-static {v9, v10}, Lnet/openid/appauth/AuthorizationException;->access$000(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    sput-object v9, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STATE_MISMATCH:Lnet/openid/appauth/AuthorizationException;

    .line 90
    .line 91
    new-array v9, v10, [Lnet/openid/appauth/AuthorizationException;

    .line 92
    .line 93
    const/4 v10, 0x0

    .line 94
    aput-object v0, v9, v10

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    aput-object v1, v9, v0

    .line 98
    .line 99
    const/4 v0, 0x2

    .line 100
    aput-object v2, v9, v0

    .line 101
    .line 102
    const/4 v0, 0x3

    .line 103
    aput-object v3, v9, v0

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    aput-object v4, v9, v0

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    aput-object v5, v9, v0

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    aput-object v6, v9, v0

    .line 113
    .line 114
    const/4 v0, 0x7

    .line 115
    aput-object v8, v9, v0

    .line 116
    .line 117
    const/16 v0, 0x8

    .line 118
    .line 119
    aput-object v7, v9, v0

    .line 120
    .line 121
    invoke-static {v9}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lnet/openid/appauth/AuthorizationException$AuthorizationRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    .line 126
    .line 127
    return-void
.end method
