.class public final Lcom/fsck/k9/preferences/ServerSettingsUpgrader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final settingsDescriptions:Ljava/util/Map;

.field public final upgraders:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/fsck/k9/preferences/ServerSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/fsck/k9/preferences/ServerSettingsDescriptions;->UPGRADERS:Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;->settingsDescriptions:Ljava/util/Map;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;->upgraders:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final upgrade(IILcom/fsck/k9/preferences/ValidatedSettings$Server;)Lcom/fsck/k9/preferences/ValidatedSettings$Server;
    .locals 6

    .line 1
    if-ne p2, p1, :cond_0

    .line 2
    .line 3
    return-object p3

    .line 4
    :cond_0
    iget-object v4, p3, Lcom/fsck/k9/preferences/ValidatedSettings$Server;->settings:Ljava/util/Map;

    .line 5
    .line 6
    iget-object v5, p0, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;->upgraders:Ljava/util/Map;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;->settingsDescriptions:Ljava/util/Map;

    .line 11
    .line 12
    move v0, p1

    .line 13
    move v1, p2

    .line 14
    invoke-static/range {v0 .. v5}, Lorg/slf4j/helpers/Util;->upgradeToVersion(IILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lnet/thunderbird/core/preference/GeneralSettingsManager;)Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object p1, p3, Lcom/fsck/k9/preferences/ValidatedSettings$Server;->type:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p2, p3, Lcom/fsck/k9/preferences/ValidatedSettings$Server;->extras:Ljava/util/Map;

    .line 21
    .line 22
    new-instance p3, Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 23
    .line 24
    invoke-direct {p3, p1, p0, p2}, Lcom/fsck/k9/preferences/ValidatedSettings$Server;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-object p3
.end method
