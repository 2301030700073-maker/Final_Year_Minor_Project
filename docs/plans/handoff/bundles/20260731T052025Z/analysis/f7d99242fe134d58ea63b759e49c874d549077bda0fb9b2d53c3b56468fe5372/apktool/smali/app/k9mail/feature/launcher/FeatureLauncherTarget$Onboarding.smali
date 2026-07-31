.class public final Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;
.super Lnet/openid/appauth/JsonUtil$Field;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;

    .line 2
    .line 3
    const-string v1, "app://onboarding"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x10008000

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;->INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, 0x3c1339bc

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Onboarding"

    .line 2
    .line 3
    return-object p0
.end method
