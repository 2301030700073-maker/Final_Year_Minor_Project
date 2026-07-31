.class public final Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;
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
    sget-object v0, Lcom/fsck/k9/preferences/IdentitySettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/fsck/k9/preferences/IdentitySettingsDescriptions;->UPGRADERS:Ljava/util/Map;

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
    iput-object v0, p0, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;->settingsDescriptions:Ljava/util/Map;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;->upgraders:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 19
    .line 20
    return-void
.end method
