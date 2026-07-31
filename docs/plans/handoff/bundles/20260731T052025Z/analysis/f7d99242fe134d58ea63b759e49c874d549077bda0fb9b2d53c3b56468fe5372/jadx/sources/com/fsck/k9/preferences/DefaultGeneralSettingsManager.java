package com.fsck.k9.preferences;

import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import com.fsck.k9.Preferences;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.sync.MutexImpl;
import net.thunderbird.app.common.appConfig.AndroidPlatformConfigProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.config.DebugLogConfigurator;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.PreferenceChangePublisher;
import net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager;
import net.thunderbird.core.preference.display.DefaultDisplaySettingsPreferenceManager;
import net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager;
import net.thunderbird.core.preference.display.inboxSettings.DefaultDisplayInboxSettingsPreferenceManager;
import net.thunderbird.core.preference.display.miscSettings.DefaultDisplayMiscSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.interaction.DefaultInteractionSettingsPreferenceManager;
import net.thunderbird.core.preference.network.DefaultNetworkSettingsPreferenceManager;
import net.thunderbird.core.preference.notification.DefaultNotificationPreferenceManager;
import net.thunderbird.core.preference.privacy.DefaultPrivacySettingsPreferenceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultGeneralSettingsManager implements GeneralSettingsManager {
    public final CoroutineDispatcher backgroundDispatcher;
    public final PreferenceChangePublisher changePublisher;
    public final CoroutineScope coroutineScope;
    public final DebugLogConfigurator debugLogConfigurator;
    public final DefaultDebuggingSettingsPreferenceManager debuggingSettingsPreferenceManager;
    public final DefaultDisplayCoreSettingsPreferenceManager displayCoreSettingsPreferenceManager;
    public final DefaultDisplayInboxSettingsPreferenceManager displayInboxSettingsPreferenceManager;
    public final DefaultDisplayMiscSettingsPreferenceManager displayMiscSettingsPreferenceManager;
    public final DefaultDisplaySettingsPreferenceManager displaySettingsSettingsPreferenceManager;
    public final DisplayVisualSettingsPreferenceManager displayVisualSettingsPreferenceManager;
    public final ReadonlyStateFlow generalSettings;
    public final DefaultInteractionSettingsPreferenceManager interactionSettingsPreferenceManager;
    public final Logger logger;
    public final DefaultMessageListPreferencesManager messageListPreferencesManager;
    public final MutexImpl mutex;
    public final DefaultNetworkSettingsPreferenceManager networkSettingsPreferenceManager;
    public final DefaultNotificationPreferenceManager notificationPreferenceManager;
    public final AndroidPlatformConfigProvider platformConfigProvider;
    public final Preferences preferences;
    public final DefaultPrivacySettingsPreferenceManager privacySettingsPreferenceManager;

    public DefaultGeneralSettingsManager(Preferences preferences, CoroutineScope coroutineScope, PreferenceChangePublisher preferenceChangePublisher, DefaultPrivacySettingsPreferenceManager defaultPrivacySettingsPreferenceManager, DefaultNotificationPreferenceManager defaultNotificationPreferenceManager, DefaultDisplaySettingsPreferenceManager defaultDisplaySettingsPreferenceManager, DefaultDisplayCoreSettingsPreferenceManager defaultDisplayCoreSettingsPreferenceManager, DefaultDisplayInboxSettingsPreferenceManager defaultDisplayInboxSettingsPreferenceManager, DisplayVisualSettingsPreferenceManager displayVisualSettingsPreferenceManager, DefaultMessageListPreferencesManager defaultMessageListPreferencesManager, DefaultDisplayMiscSettingsPreferenceManager defaultDisplayMiscSettingsPreferenceManager, DefaultNetworkSettingsPreferenceManager defaultNetworkSettingsPreferenceManager, DefaultDebuggingSettingsPreferenceManager defaultDebuggingSettingsPreferenceManager, DefaultInteractionSettingsPreferenceManager defaultInteractionSettingsPreferenceManager, DebugLogConfigurator debugLogConfigurator, AndroidPlatformConfigProvider androidPlatformConfigProvider, Logger logger) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.preferences = preferences;
        this.coroutineScope = coroutineScope;
        this.changePublisher = preferenceChangePublisher;
        this.privacySettingsPreferenceManager = defaultPrivacySettingsPreferenceManager;
        this.notificationPreferenceManager = defaultNotificationPreferenceManager;
        this.displaySettingsSettingsPreferenceManager = defaultDisplaySettingsPreferenceManager;
        this.displayCoreSettingsPreferenceManager = defaultDisplayCoreSettingsPreferenceManager;
        this.displayInboxSettingsPreferenceManager = defaultDisplayInboxSettingsPreferenceManager;
        this.displayVisualSettingsPreferenceManager = displayVisualSettingsPreferenceManager;
        this.messageListPreferencesManager = defaultMessageListPreferencesManager;
        this.displayMiscSettingsPreferenceManager = defaultDisplayMiscSettingsPreferenceManager;
        this.networkSettingsPreferenceManager = defaultNetworkSettingsPreferenceManager;
        this.debuggingSettingsPreferenceManager = defaultDebuggingSettingsPreferenceManager;
        this.interactionSettingsPreferenceManager = defaultInteractionSettingsPreferenceManager;
        this.debugLogConfigurator = debugLogConfigurator;
        this.backgroundDispatcher = defaultIoScheduler;
        this.platformConfigProvider = androidPlatformConfigProvider;
        this.logger = logger;
        this.mutex = new MutexImpl();
        StateFlowImpl stateFlowImpl = defaultPrivacySettingsPreferenceManager.configState;
        int i = 3;
        int i2 = 0;
        Continuation continuation = null;
        this.generalSettings = FlowKt.stateIn(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(1, stateFlowImpl, this), stateFlowImpl, new DefaultGeneralSettingsManager$generalSettings$2(i, (Continuation) null, i2), i2), defaultNotificationPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$2(i, continuation, 4), i2), defaultDisplaySettingsPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$2(i, continuation, 5), i2), defaultDisplayCoreSettingsPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$2(i, continuation, 6), i2), defaultDisplayInboxSettingsPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$2(i, continuation, 7), i2), ((DefaultDisplayVisualSettingsPreferenceManager) displayVisualSettingsPreferenceManager).configState, new DefaultGeneralSettingsManager$generalSettings$2(i, continuation, 8), i2), defaultMessageListPreferencesManager.preferences, new DefaultGeneralSettingsManager$generalSettings$8(this, continuation, i2), i2), defaultDisplayMiscSettingsPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$2(i, continuation, 9), i2), defaultNetworkSettingsPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$2(i, continuation, 2), i2), defaultDebuggingSettingsPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$8(this, continuation, 1), i2), defaultInteractionSettingsPreferenceManager.configState, new DefaultGeneralSettingsManager$generalSettings$2(i, continuation, i), i2), coroutineScope, new StartedWhileSubscribed(Long.MAX_VALUE), new GeneralSettings(androidPlatformConfigProvider, null, 126));
    }

    public final GeneralSettings getConfig() {
        return (GeneralSettings) this.generalSettings.$$delegate_0.getValue();
    }

    public final synchronized GeneralSettings getSettings() {
        return (GeneralSettings) this.generalSettings.$$delegate_0.getValue();
    }

    public final void save(Object obj) {
        JobKt.launch$default(this.coroutineScope, this.backgroundDispatcher, null, new NavHostKt$NavHost$25$1(this, (GeneralSettings) obj, (Continuation) null, 16), 2);
    }
}
