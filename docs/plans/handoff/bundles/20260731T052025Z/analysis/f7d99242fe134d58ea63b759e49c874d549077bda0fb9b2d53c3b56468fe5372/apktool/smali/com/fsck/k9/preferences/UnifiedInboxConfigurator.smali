.class public final Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final configureUnifiedInbox()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->updateUnifiedInbox(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->updateUnifiedInbox(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final updateUnifiedInbox(Z)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 10
    .line 11
    iget-object v2, v1, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const/16 v9, 0x3e

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    move v3, p1

    .line 21
    invoke-static/range {v2 .. v9}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->copy$default(Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;ZZZZZZI)Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v5, 0x0

    .line 26
    const/16 v6, 0xd

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lnet/thunderbird/core/preference/display/DisplaySettings;->copy$default(Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;I)Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v6, 0x0

    .line 35
    const/16 v7, 0x77

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-static/range {v0 .. v7}, Lnet/thunderbird/core/preference/GeneralSettings;->copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->save(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
