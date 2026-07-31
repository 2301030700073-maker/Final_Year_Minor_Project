package com.fsck.k9.preferences;

import com.fsck.k9.Preferences$getAccountsFlow$1;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import net.thunderbird.core.preference.display.inboxSettings.DefaultDisplayInboxSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;
import net.thunderbird.feature.navigation.drawer.api.NavigationDrawerExternalContract$DrawerConfig;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDrawerConfigManager implements DrawerConfigManager {
    public final DefaultDisplayInboxSettingsPreferenceManager displayInboxSettingsPreferenceManager;
    public final DisplayVisualSettingsPreferenceManager displayVisualSettingsPreferenceManager;
    public final ReadonlyStateFlow drawerConfig;

    public DefaultDrawerConfigManager(CoroutineScope coroutineScope, DefaultDisplayInboxSettingsPreferenceManager defaultDisplayInboxSettingsPreferenceManager, DisplayVisualSettingsPreferenceManager displayVisualSettingsPreferenceManager) {
        this.displayInboxSettingsPreferenceManager = defaultDisplayInboxSettingsPreferenceManager;
        this.displayVisualSettingsPreferenceManager = displayVisualSettingsPreferenceManager;
        this.drawerConfig = FlowKt.stateIn(new SafeFlow(0, new Preferences$getAccountsFlow$1(this, null, 6)), coroutineScope, new StartedWhileSubscribed(Long.MAX_VALUE), new NavigationDrawerExternalContract$DrawerConfig(false, false, false));
    }
}
