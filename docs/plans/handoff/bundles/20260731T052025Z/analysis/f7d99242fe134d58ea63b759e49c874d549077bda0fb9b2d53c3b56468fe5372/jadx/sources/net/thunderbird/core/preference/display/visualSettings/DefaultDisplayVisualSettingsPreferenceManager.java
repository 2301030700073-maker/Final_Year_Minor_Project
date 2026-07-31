package net.thunderbird.core.preference.display.visualSettings;

import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager$generalSettings$2;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.preferences.K9StoragePersister;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
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
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDisplayVisualSettingsPreferenceManager implements DisplayVisualSettingsPreferenceManager, PreferenceChangeSubscriber {
    public final ReadonlyStateFlow configState;
    public final StateFlowImpl internalConfigState;
    public final CoroutineDispatcher ioDispatcher;
    public final Logger logger;
    public final DefaultMessageListPreferencesManager messageListPreferences;
    public final MutexImpl mutex;
    public final CoroutineScope scope;
    public final K9StorageEditor storageEditor;
    public final K9StoragePersister storagePersister;

    public DefaultDisplayVisualSettingsPreferenceManager(Logger logger, K9StoragePersister k9StoragePersister, K9StorageEditor k9StorageEditor, DefaultMessageListPreferencesManager defaultMessageListPreferencesManager, PreferenceChangeBroker preferenceChangeBroker) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        ContextScope CoroutineScope = JobKt.CoroutineScope(JobKt.SupervisorJob$default());
        defaultIoScheduler.getClass();
        this.logger = logger;
        this.storagePersister = k9StoragePersister;
        this.storageEditor = k9StorageEditor;
        this.messageListPreferences = defaultMessageListPreferencesManager;
        this.ioDispatcher = defaultIoScheduler;
        this.scope = CoroutineScope;
        ((DefaultPreferenceChangeBroker) preferenceChangeBroker).subscribe(this);
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(loadConfig());
        this.internalConfigState = MutableStateFlow;
        this.configState = FlowKt.stateIn(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(MutableStateFlow, defaultMessageListPreferencesManager.preferences, new DefaultGeneralSettingsManager$generalSettings$2(3, (Continuation) null, 11), 0), CoroutineScope, SharingStarted.Companion.Eagerly, MutableStateFlow.getValue());
        this.mutex = new MutexImpl();
    }

    public final Object getConfig() {
        return (DisplayVisualSettings) this.configState.$$delegate_0.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings loadConfig() {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager.loadConfig():net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings");
    }

    @Override // net.thunderbird.core.preference.PreferenceChangeSubscriber
    public final void receive(PreferenceScope preferenceScope) {
        StateFlowImpl stateFlowImpl;
        Object value;
        preferenceScope.getClass();
        if (preferenceScope == PreferenceScope.ALL || preferenceScope == PreferenceScope.DISPLAY_VISUAL) {
            do {
                stateFlowImpl = this.internalConfigState;
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, loadConfig()));
        }
    }

    public final void save(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        final DisplayVisualSettings displayVisualSettings = (DisplayVisualSettings) obj;
        displayVisualSettings.getClass();
        final int i = 0;
        Function0 function0 = new Function0() { // from class: net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                DisplayVisualSettings displayVisualSettings2 = displayVisualSettings;
                switch (i2) {
                    case 0:
                        return "save() called with: config = " + displayVisualSettings2;
                    default:
                        return "writeConfig() called with: config = " + displayVisualSettings2;
                }
            }
        };
        Logger logger = this.logger;
        Sink$CC.debug$default(logger, "DefaultDisplayVisualSettingsPreferenceManager", null, function0, 2);
        final int i2 = 1;
        Sink$CC.debug$default(logger, "DefaultDisplayVisualSettingsPreferenceManager", null, new Function0() { // from class: net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                DisplayVisualSettings displayVisualSettings2 = displayVisualSettings;
                switch (i22) {
                    case 0:
                        return "save() called with: config = " + displayVisualSettings2;
                    default:
                        return "writeConfig() called with: config = " + displayVisualSettings2;
                }
            }
        }, 2);
        JobKt.launch$default(this.scope, this.ioDispatcher, null, new NavHostKt$NavHost$25$1(this, displayVisualSettings, (Continuation) null, 24), 2);
        do {
            stateFlowImpl = this.internalConfigState;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, displayVisualSettings));
    }
}
