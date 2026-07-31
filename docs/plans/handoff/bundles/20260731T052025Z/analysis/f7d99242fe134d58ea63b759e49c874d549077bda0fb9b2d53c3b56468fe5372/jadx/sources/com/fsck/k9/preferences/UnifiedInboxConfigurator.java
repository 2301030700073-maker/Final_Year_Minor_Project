package com.fsck.k9.preferences;

import com.fsck.k9.Preferences;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnifiedInboxConfigurator {
    public final LegacyAccountDtoManager accountManager;
    public final GeneralSettingsManager generalSettingsManager;

    public UnifiedInboxConfigurator(LegacyAccountDtoManager legacyAccountDtoManager, GeneralSettingsManager generalSettingsManager) {
        this.accountManager = legacyAccountDtoManager;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final void configureUnifiedInbox() {
        int size = ((Preferences) this.accountManager).getAccounts().size();
        if (size == 1) {
            updateUnifiedInbox(false);
        } else {
            if (size != 2) {
                return;
            }
            updateUnifiedInbox(true);
        }
    }

    public final void updateUnifiedInbox(boolean z) {
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) this.generalSettingsManager;
        GeneralSettings config = defaultGeneralSettingsManager.getConfig();
        DisplaySettings displaySettings = config.display;
        defaultGeneralSettingsManager.save(GeneralSettings.copy$default(config, null, null, DisplaySettings.copy$default(displaySettings, null, DisplayInboxSettings.copy$default(displaySettings.inboxSettings, z, false, false, false, false, false, 62), null, null, 13), null, null, null, 119));
    }
}
