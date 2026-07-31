.class public final Lnet/openid/appauth/RegistrationResponse;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final additionalParameters:Ljava/util/LinkedHashMap;

.field public final clientId:Ljava/lang/String;

.field public final clientIdIssuedAt:Ljava/lang/Long;

.field public final clientSecret:Ljava/lang/String;

.field public final clientSecretExpiresAt:Ljava/lang/Long;

.field public final registrationAccessToken:Ljava/lang/String;

.field public final registrationClientUri:Landroid/net/Uri;

.field public final request:Lnet/openid/appauth/RegistrationRequest;

.field public final tokenEndpointAuthMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v6, "client_id_issued_at"

    .line 4
    .line 5
    const-string v7, "token_endpoint_auth_method"

    .line 6
    .line 7
    const-string v1, "client_id"

    .line 8
    .line 9
    const-string v2, "client_secret"

    .line 10
    .line 11
    const-string v3, "client_secret_expires_at"

    .line 12
    .line 13
    const-string v4, "registration_access_token"

    .line 14
    .line 15
    const-string v5, "registration_client_uri"

    .line 16
    .line 17
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lnet/openid/appauth/RegistrationRequest;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/openid/appauth/RegistrationResponse;->request:Lnet/openid/appauth/RegistrationRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/openid/appauth/RegistrationResponse;->clientId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/openid/appauth/RegistrationResponse;->clientIdIssuedAt:Ljava/lang/Long;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecret:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/openid/appauth/RegistrationResponse;->clientSecretExpiresAt:Ljava/lang/Long;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/openid/appauth/RegistrationResponse;->registrationAccessToken:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/openid/appauth/RegistrationResponse;->registrationClientUri:Landroid/net/Uri;

    .line 17
    .line 18
    iput-object p8, p0, Lnet/openid/appauth/RegistrationResponse;->tokenEndpointAuthMethod:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lnet/openid/appauth/RegistrationResponse;->additionalParameters:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    return-void
.end method
