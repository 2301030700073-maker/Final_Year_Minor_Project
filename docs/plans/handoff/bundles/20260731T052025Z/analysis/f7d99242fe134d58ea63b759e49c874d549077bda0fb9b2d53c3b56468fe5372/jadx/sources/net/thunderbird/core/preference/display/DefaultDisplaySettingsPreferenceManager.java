package net.thunderbird.core.preference.display;

import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager;
import net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings;
import net.thunderbird.core.preference.display.inboxSettings.DefaultDisplayInboxSettingsPreferenceManager;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings;
import net.thunderbird.core.preference.display.miscSettings.DefaultDisplayMiscSettingsPreferenceManager;
import net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettings;
import net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDisplaySettingsPreferenceManager {
    public final StateFlowImpl configState;
    public final DefaultDisplayCoreSettingsPreferenceManager coreSettingsPreferenceManager;
    public final DefaultDisplayInboxSettingsPreferenceManager inboxSettingsPreferenceManager;
    public final Logger logger;
    public final DefaultDisplayMiscSettingsPreferenceManager miscSettingsPreferenceManager;
    public final DisplayVisualSettingsPreferenceManager visualSettingsPreferenceManager;

    public DefaultDisplaySettingsPreferenceManager(Logger logger, DefaultDisplayCoreSettingsPreferenceManager defaultDisplayCoreSettingsPreferenceManager, DefaultDisplayInboxSettingsPreferenceManager defaultDisplayInboxSettingsPreferenceManager, DisplayVisualSettingsPreferenceManager displayVisualSettingsPreferenceManager, DefaultDisplayMiscSettingsPreferenceManager defaultDisplayMiscSettingsPreferenceManager) {
        this.logger = logger;
        this.coreSettingsPreferenceManager = defaultDisplayCoreSettingsPreferenceManager;
        this.inboxSettingsPreferenceManager = defaultDisplayInboxSettingsPreferenceManager;
        this.visualSettingsPreferenceManager = displayVisualSettingsPreferenceManager;
        this.miscSettingsPreferenceManager = defaultDisplayMiscSettingsPreferenceManager;
        this.configState = FlowKt.MutableStateFlow(new DisplaySettings((DisplayCoreSettings) defaultDisplayCoreSettingsPreferenceManager.getConfig(), (DisplayInboxSettings) defaultDisplayInboxSettingsPreferenceManager.getConfig(), (DisplayVisualSettings) ((DefaultDisplayVisualSettingsPreferenceManager) displayVisualSettingsPreferenceManager).getConfig(), (DisplayMiscSettings) defaultDisplayMiscSettingsPreferenceManager.configState.getValue()));
    }

    public final void save(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        DisplaySettings displaySettings = (DisplaySettings) obj;
        displaySettings.getClass();
        Sink$CC.debug$default(this.logger, "DefaultDisplaySettingsPreferenceManager", null, new ResourceFileSystem$$ExternalSyntheticLambda0(2, displaySettings), 2);
        this.coreSettingsPreferenceManager.save(displaySettings.coreSettings);
        this.inboxSettingsPreferenceManager.save(displaySettings.inboxSettings);
        ((DefaultDisplayVisualSettingsPreferenceManager) this.visualSettingsPreferenceManager).save(displaySettings.visualSettings);
        this.miscSettingsPreferenceManager.save(displaySettings.miscSettings);
        do {
            stateFlowImpl = this.configState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, displaySettings));
    }
}
