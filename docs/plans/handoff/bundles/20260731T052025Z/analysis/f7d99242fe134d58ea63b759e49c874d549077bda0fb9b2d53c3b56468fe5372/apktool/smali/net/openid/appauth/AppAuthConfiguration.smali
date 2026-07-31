.class public final Lnet/openid/appauth/AppAuthConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT:Lnet/openid/appauth/AppAuthConfiguration;


# instance fields
.field public final mSkipIssuerHttpsCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/openid/appauth/AppAuthConfiguration;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/openid/appauth/AppAuthConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/openid/appauth/AppAuthConfiguration;->DEFAULT:Lnet/openid/appauth/AppAuthConfiguration;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/openid/appauth/AppAuthConfiguration;->mSkipIssuerHttpsCheck:Z

    .line 6
    .line 7
    return-void
.end method
