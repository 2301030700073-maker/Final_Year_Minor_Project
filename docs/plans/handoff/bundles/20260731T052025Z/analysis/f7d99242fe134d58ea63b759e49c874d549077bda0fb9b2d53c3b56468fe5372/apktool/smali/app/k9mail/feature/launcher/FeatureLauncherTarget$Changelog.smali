.class public final Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;
.super Lnet/openid/appauth/JsonUtil$Field;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "app://changelog/"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v1}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;

    .line 12
    .line 13
    iget-object p0, p0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 14
    .line 15
    iget-object p1, p1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Changelog(changeLogMode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;->changeLogMode:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
