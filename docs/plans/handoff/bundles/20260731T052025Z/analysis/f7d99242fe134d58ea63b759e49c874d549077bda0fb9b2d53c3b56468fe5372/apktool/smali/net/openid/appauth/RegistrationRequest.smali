.class public final Lnet/openid/appauth/RegistrationRequest;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final additionalParameters:Ljava/util/LinkedHashMap;

.field public final configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public final grantTypes:Ljava/util/List;

.field public final jwks:Lorg/json/JSONObject;

.field public final jwksUri:Landroid/net/Uri;

.field public final redirectUris:Ljava/util/ArrayList;

.field public final responseTypes:Ljava/util/List;

.field public final subjectType:Ljava/lang/String;

.field public final tokenEndpointAuthenticationMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "jwks"

    .line 2
    .line 3
    const-string v7, "token_endpoint_auth_method"

    .line 4
    .line 5
    const-string v0, "redirect_uris"

    .line 6
    .line 7
    const-string v1, "response_types"

    .line 8
    .line 9
    const-string v2, "grant_types"

    .line 10
    .line 11
    const-string v3, "application_type"

    .line 12
    .line 13
    const-string v4, "subject_type"

    .line 14
    .line 15
    const-string v5, "jwks_uri"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/text/StringsKt__IndentKt;->builtInParams([Ljava/lang/String;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/openid/appauth/RegistrationRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/openid/appauth/RegistrationRequest;->redirectUris:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/openid/appauth/RegistrationRequest;->responseTypes:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/openid/appauth/RegistrationRequest;->grantTypes:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/openid/appauth/RegistrationRequest;->subjectType:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/openid/appauth/RegistrationRequest;->jwksUri:Landroid/net/Uri;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/openid/appauth/RegistrationRequest;->jwks:Lorg/json/JSONObject;

    .line 17
    .line 18
    iput-object p8, p0, Lnet/openid/appauth/RegistrationRequest;->tokenEndpointAuthenticationMethod:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lnet/openid/appauth/RegistrationRequest;->additionalParameters:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    return-void
.end method
