.class public abstract Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final OTHER:Lnet/openid/appauth/AuthorizationException;

.field public static final STRING_TO_EXCEPTION:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    const-string v1, "invalid_request"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lnet/openid/appauth/AuthorizationException;->access$300(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x7d1

    .line 10
    .line 11
    const-string v2, "invalid_client"

    .line 12
    .line 13
    invoke-static {v2, v1}, Lnet/openid/appauth/AuthorizationException;->access$300(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/16 v2, 0x7d2

    .line 18
    .line 19
    const-string v3, "invalid_grant"

    .line 20
    .line 21
    invoke-static {v3, v2}, Lnet/openid/appauth/AuthorizationException;->access$300(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/16 v3, 0x7d3

    .line 26
    .line 27
    const-string v4, "unauthorized_client"

    .line 28
    .line 29
    invoke-static {v4, v3}, Lnet/openid/appauth/AuthorizationException;->access$300(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/16 v4, 0x7d4

    .line 34
    .line 35
    const-string/jumbo v5, "unsupported_grant_type"

    .line 36
    .line 37
    .line 38
    invoke-static {v5, v4}, Lnet/openid/appauth/AuthorizationException;->access$300(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/16 v5, 0x7d5

    .line 43
    .line 44
    const-string v6, "invalid_scope"

    .line 45
    .line 46
    invoke-static {v6, v5}, Lnet/openid/appauth/AuthorizationException;->access$300(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/4 v6, 0x0

    .line 51
    const/16 v7, 0x7d6

    .line 52
    .line 53
    invoke-static {v6, v7}, Lnet/openid/appauth/AuthorizationException;->access$300(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const/16 v8, 0x7d7

    .line 58
    .line 59
    invoke-static {v6, v8}, Lnet/openid/appauth/AuthorizationException;->access$300(Ljava/lang/String;I)Lnet/openid/appauth/AuthorizationException;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sput-object v6, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->OTHER:Lnet/openid/appauth/AuthorizationException;

    .line 64
    .line 65
    const/16 v8, 0x8

    .line 66
    .line 67
    new-array v8, v8, [Lnet/openid/appauth/AuthorizationException;

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    aput-object v0, v8, v9

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    aput-object v1, v8, v0

    .line 74
    .line 75
    const/4 v0, 0x2

    .line 76
    aput-object v2, v8, v0

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    aput-object v3, v8, v0

    .line 80
    .line 81
    const/4 v0, 0x4

    .line 82
    aput-object v4, v8, v0

    .line 83
    .line 84
    const/4 v0, 0x5

    .line 85
    aput-object v5, v8, v0

    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    aput-object v7, v8, v0

    .line 89
    .line 90
    const/4 v0, 0x7

    .line 91
    aput-object v6, v8, v0

    .line 92
    .line 93
    invoke-static {v8}, Lnet/openid/appauth/AuthorizationException;->access$200([Lnet/openid/appauth/AuthorizationException;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lnet/openid/appauth/AuthorizationException$TokenRequestErrors;->STRING_TO_EXCEPTION:Ljava/util/Map;

    .line 98
    .line 99
    return-void
.end method
