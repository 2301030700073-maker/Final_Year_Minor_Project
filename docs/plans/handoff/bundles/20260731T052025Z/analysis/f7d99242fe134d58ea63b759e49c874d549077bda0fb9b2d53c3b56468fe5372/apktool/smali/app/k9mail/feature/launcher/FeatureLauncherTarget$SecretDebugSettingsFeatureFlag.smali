.class public final Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;
.super Lnet/openid/appauth/JsonUtil$Field;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;

    .line 2
    .line 3
    new-instance v1, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;

    .line 4
    .line 5
    invoke-direct {v1}, Lnet/thunderbird/feature/debug/settings/navigation/SecretDebugSettingsRoute;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "app://secret_debug_settings/FeatureFlag"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, v1, v2}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;->INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;

    .line 19
    .line 20
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
    instance-of p0, p1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$SecretDebugSettingsFeatureFlag;

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
    const p0, -0x762b3603

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SecretDebugSettingsFeatureFlag"

    .line 2
    .line 3
    return-object p0
.end method
