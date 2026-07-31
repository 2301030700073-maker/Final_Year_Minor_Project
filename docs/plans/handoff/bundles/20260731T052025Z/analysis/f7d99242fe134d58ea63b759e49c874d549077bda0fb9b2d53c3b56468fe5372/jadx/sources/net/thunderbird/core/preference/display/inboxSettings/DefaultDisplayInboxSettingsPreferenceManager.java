package net.thunderbird.core.preference.display.inboxSettings;

import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.K9StoragePersister;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeSubscriber;
import net.thunderbird.core.preference.PreferenceScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDisplayInboxSettingsPreferenceManager implements PreferenceChangeSubscriber {
    public final StateFlowImpl configState;
    public final CoroutineDispatcher ioDispatcher;
    public final Logger logger;
    public final MutexImpl mutex;
    public final CoroutineScope scope;
    public final K9StorageEditor storageEditor;
    public final K9StoragePersister storagePersister;

    public DefaultDisplayInboxSettingsPreferenceManager(Logger logger, K9StoragePersister k9StoragePersister, K9StorageEditor k9StorageEditor, PreferenceChangeBroker preferenceChangeBroker) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        ContextScope CoroutineScope = JobKt.CoroutineScope(JobKt.SupervisorJob$default());
        defaultIoScheduler.getClass();
        this.logger = logger;
        this.storagePersister = k9StoragePersister;
        this.storageEditor = k9StorageEditor;
        this.ioDispatcher = defaultIoScheduler;
        this.scope = CoroutineScope;
        ((DefaultPreferenceChangeBroker) preferenceChangeBroker).subscribe(this);
        this.configState = FlowKt.MutableStateFlow(loadConfig());
        this.mutex = new MutexImpl();
    }

    public final Object getConfig() {
        return (DisplayInboxSettings) this.configState.getValue();
    }

    public final DisplayInboxSettings loadConfig() {
        K9StoragePersister k9StoragePersister = this.storagePersister;
        return new DisplayInboxSettings(k9StoragePersister.loadValues().getBoolean("showUnifiedInbox", false), k9StoragePersister.loadValues().getBoolean("showStarredCount", false), k9StoragePersister.loadValues().getBoolean("messageListStars", true), k9StoragePersister.loadValues().getBoolean("messageListSenderAboveSubject", false), k9StoragePersister.loadValues().getBoolean("showComposeButtonOnMessageList", true), k9StoragePersister.loadValues().getBoolean("isThreadedViewEnabled", true));
    }

    @Override // net.thunderbird.core.preference.PreferenceChangeSubscriber
    public final void receive(PreferenceScope preferenceScope) {
        StateFlowImpl stateFlowImpl;
        Object value;
        preferenceScope.getClass();
        if (preferenceScope == PreferenceScope.ALL || preferenceScope == PreferenceScope.DISPLAY_INBOX) {
            do {
                stateFlowImpl = this.configState;
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, loadConfig()));
        }
    }

    public final void save(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        final DisplayInboxSettings displayInboxSettings = (DisplayInboxSettings) obj;
        displayInboxSettings.getClass();
        final int i = 0;
        Function0 function0 = new Function0() { // from class: net.thunderbird.core.preference.display.inboxSettings.DefaultDisplayInboxSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                DisplayInboxSettings displayInboxSettings2 = displayInboxSettings;
                switch (i2) {
                    case 0:
                        return "save() called with: config = " + displayInboxSettings2;
                    default:
                        return "writeConfig() called with: config = " + displayInboxSettings2;
                }
            }
        };
        Logger logger = this.logger;
        Sink$CC.debug$default(logger, "DefaultDisplayInboxSettingsPreferenceManager", null, function0, 2);
        final int i2 = 1;
        Sink$CC.debug$default(logger, "DefaultDisplayInboxSettingsPreferenceManager", null, new Function0() { // from class: net.thunderbird.core.preference.display.inboxSettings.DefaultDisplayInboxSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                DisplayInboxSettings displayInboxSettings2 = displayInboxSettings;
                switch (i22) {
                    case 0:
                        return "save() called with: config = " + displayInboxSettings2;
                    default:
                        return "writeConfig() called with: config = " + displayInboxSettings2;
                }
            }
        }, 2);
        JobKt.launch$default(this.scope, this.ioDispatcher, null, new NavHostKt$NavHost$25$1(this, displayInboxSettings, (Continuation) null, 22), 2);
        do {
            stateFlowImpl = this.configState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, displayInboxSettings));
    }
}
